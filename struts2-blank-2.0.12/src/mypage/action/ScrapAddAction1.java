package mypage.action;



import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;


import portfolio.bean.PortfolioBean;
import portfolio.dao.PortfolioDao;





public class ScrapAddAction1 implements Action{
	private int por_no;
	
	public int getPor_no() {
		return por_no;
	}

	public void setPor_no(int por_no) {
		this.por_no = por_no;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		PortfolioBean bean = PortfolioDao.selectPortfolioInfo(por_no);
		HttpSession session=ServletActionContext.getRequest().getSession();
		ArrayList<PortfolioBean> scrap1 = (ArrayList<PortfolioBean>)session.getAttribute("scrap1");
		if(scrap1==null){
			scrap1=new ArrayList<PortfolioBean>();
		}for (int i = 0; i < scrap1.size(); i++) {
			if(scrap1.get(i).getPor_no()==por_no){
				return "success";
			}
		}
		scrap1.add(bean);
		//HashSet<CovBean> scrap2= new HashSet<CovBean>(scrap);
		//ArrayList<CovBean> scrap3 = new ArrayList<CovBean>(scrap2);
		//ArrayList<CovBean> aa = new ArrayList<CovBean>(new HashSet<CovBean>(scrap));
		session.setAttribute("scrap1", scrap1);
	
		return SUCCESS;
	}
 
}
