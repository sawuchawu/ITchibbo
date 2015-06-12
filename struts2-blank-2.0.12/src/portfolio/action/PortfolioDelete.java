package portfolio.action;

import java.util.List;

import portfolio.bean.PortfolioBean;
import portfolio.dao.PortfolioDao;

import com.opensymphony.xwork2.Action;

public class PortfolioDelete implements Action{

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
		System.out.println("portfolioDelete");
		System.out.println(por_no);
		PortfolioDao.portfolioDelete(por_no);
		return SUCCESS;
	}
}
