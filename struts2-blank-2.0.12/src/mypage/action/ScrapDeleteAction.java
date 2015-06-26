package mypage.action;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;

import cov.bean.CovBean;

public class ScrapDeleteAction implements Action {

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
		HttpSession session=ServletActionContext.getRequest().getSession();
		ArrayList<CovBean> scrap = (ArrayList<CovBean>)session.getAttribute("scrap12");
		for (int i = 0; i < scrap.size(); i++) {
			if(Integer.parseInt(scrap.get(i).getCov_no())==cov_no){
				scrap.remove(i);
			}
		}
		session.setAttribute("scrap12", scrap);
		if(scrap.size()==0){
			return "empty";
		}
	//	System.out.println(scrap.toString().toCharArray());
		return SUCCESS;
	}
 
}
