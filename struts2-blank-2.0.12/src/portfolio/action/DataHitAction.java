package portfolio.action;

import portfolio.dao.PortfolioDao;

import com.opensymphony.xwork2.Action;

public class DataHitAction implements Action {

	
	private int por_no;
	private String job;
	private int currentPage;
	
	
	public int getPor_no() {
		return por_no;
	}


	public void setPor_no(int por_no) {
		this.por_no = por_no;
	}


	public String getJob() {
		return job;
	}


	public void setJob(String job) {
		this.job = job;
	}


	public int getCurrentPage() {
		return currentPage;
	}


	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}


	@Override
	public String toString() {
		return "DataHitAction [por_no=" + por_no + ", job=" + job
				+ ", currentPage=" + currentPage + "]";
	}


	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		System.out.println("DataHitAction");
		PortfolioDao.updateHit(por_no);
		System.out.println("DataHitAction Complete");
		return SUCCESS;
	}

	
	
}
