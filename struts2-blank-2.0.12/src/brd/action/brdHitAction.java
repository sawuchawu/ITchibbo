package brd.action;

import brd.dao.BrdDao;

import com.opensymphony.xwork2.Action;

public class brdHitAction implements Action{
	private String jobs;
	private int brd_no;
	
	

	public String getJobs() {
		return jobs;
	}



	public void setJobs(String jobs) {
		this.jobs = jobs;
	}



	public int getBrd_no() {
		return brd_no;
	}



	public void setBrd_no(int brd_no) {
		this.brd_no = brd_no;
	}



	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		//System.out.println("나온다");
		BrdDao.updateBrdHit(brd_no);
		System.out.println("나온다");
		return SUCCESS;
	}

}