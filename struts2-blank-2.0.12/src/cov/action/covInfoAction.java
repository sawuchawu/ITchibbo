package cov.action;

import com.opensymphony.xwork2.Action;

import cov.bean.CovBean;
import cov.dao.CovDao;

public class covInfoAction implements Action {
	private int cov_no;
	private CovBean bean;
	private String job;

	public int getCov_no() {
		return cov_no;
	}

	public void setCov_no(int cov_no) {
		this.cov_no = cov_no;
	}

	public CovBean getBean() {
		return bean;
	}

	public void setBean(CovBean bean) {
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
		this.bean = CovDao.selectCovInfo(cov_no);
		return job;
	}

}
