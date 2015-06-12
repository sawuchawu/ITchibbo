package tech.action;

import tech.dao.TechDao;

import com.opensymphony.xwork2.Action;

public class TechHitAction implements Action{
	private int tec_no;
	private String job;
	private int currentPage;
	
	
	public int getTec_no() {
		return tec_no;
	}


	public void setTec_no(int tec_no) {
		this.tec_no = tec_no;
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
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("HitAction");
		TechDao.updateHit(tec_no);
		System.out.println("HitAction Completed");
		System.out.println(job);
		return SUCCESS;
	}
	
	

}
