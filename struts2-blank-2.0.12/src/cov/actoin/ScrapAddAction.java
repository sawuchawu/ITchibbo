package cov.actoin;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;

import cov.bean.CovBean;
import cov.dao.CovDao;

public class ScrapAddAction implements Action{

	private int cov_no;
	public int getCov_no() {
		return cov_no;
	}
	public void setCov_no(int cov_no) {
		this.cov_no = cov_no;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		CovBean bean = CovDao.selectCovInfo(cov_no);
		HttpSession session=ServletActionContext.getRequest().getSession();
		ArrayList<CovBean> scrap = (ArrayList<CovBean>)session.getAttribute("scrap12");
		if(scrap==null){
			scrap=new ArrayList<CovBean>();
		}for (int i = 0; i < scrap.size(); i++) {
			if(scrap.get(i).getCov_no()==Integer.toString(cov_no)){
				return "success";
			}
		}
		scrap.add(bean);
		//HashSet<CovBean> scrap2= new HashSet<CovBean>(scrap);
		//ArrayList<CovBean> scrap3 = new ArrayList<CovBean>(scrap2);
		//ArrayList<CovBean> aa = new ArrayList<CovBean>(new HashSet<CovBean>(scrap));
		session.setAttribute("scrap12", scrap);
		return SUCCESS;
	}
	
}
