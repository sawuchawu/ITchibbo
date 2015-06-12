package expo.action;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import expo.bean.ExpoBean;
import expo.dao.ExpoDao;

public class ExpoHitAction implements Action{
	private String jobs;
	private int exp_no;
	
	public String getJobs() {
		return jobs;
	}

	public void setJobs(String jobs) {
		this.jobs = jobs;
	}

	public int getExp_no() {
		return exp_no;
	}

	public void setExp_no(int exp_no) {
		this.exp_no = exp_no;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
	
		ExpoDao.updateExpoHit(exp_no);

		return SUCCESS;
	}

}
