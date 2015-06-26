package cov.actoin;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import portfolio.bean.PortfolioBean;

import com.opensymphony.xwork2.Action;



public class ScrapDeleteAction1 implements Action{
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
		HttpSession session=ServletActionContext.getRequest().getSession();
		ArrayList<PortfolioBean> scrap1 = (ArrayList<PortfolioBean>)session.getAttribute("scrap1");
		for (int i = 0; i < scrap1.size(); i++) {
			if(scrap1.get(i).getPor_no()==por_no){
				scrap1.remove(i);
			}
		}
		session.setAttribute("scrap1", scrap1);
		if(scrap1.size()==0){
			return "empty";
		}
	//	System.out.println(scrap.toString().toCharArray());
		return SUCCESS;
	}
 
}
