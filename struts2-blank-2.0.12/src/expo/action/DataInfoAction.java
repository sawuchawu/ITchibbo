package expo.action;

import com.opensymphony.xwork2.Action;

import expo.bean.ExpoBean;
import expo.dao.ExpoDao;

public class DataInfoAction implements Action {
	private int exp_no;
	private ExpoBean bean;
	private String job;
	
	public int getExp_no() {
		return exp_no;
	}
	public void setExp_no(int exp_no) {
		this.exp_no = exp_no;
	}
	public ExpoBean getBean() {
		return bean;
	}
	public void setBean(ExpoBean bean) {
		this.bean = bean;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		this.bean = ExpoDao.selectExpoInfo(exp_no);
		return job;
	}
	
}
