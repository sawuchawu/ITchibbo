package cov.action;

import com.opensymphony.xwork2.Action;

import cov.dao.CovDao;

public class covDeleteAction implements Action {
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
		System.out.println(cov_no);
		CovDao.deleteCov(cov_no);
		return SUCCESS;
	}	

	
}
