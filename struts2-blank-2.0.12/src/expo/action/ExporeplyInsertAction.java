package expo.action;

import reply.bean.ReplyBean;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import expo.dao.ExpoDao;

public class ExporeplyInsertAction implements Action, Preparable,
		ModelDriven<ReplyBean> {
	private ReplyBean bean;
	private String jobs;

	private int exp_no;

	public int getExp_no() {
		return exp_no;
	}

	public void setExp_no(int exp_no) {
		this.exp_no = exp_no;
	}

	public String getJobs() {
		return jobs;
	}

	public void setJobs(String jobs) {
		this.jobs = jobs;
	}

	public ReplyBean getBean() {
		return bean;
	}

	public void setBean(ReplyBean bean) {
		this.bean = bean;
	}

	@Override
	public ReplyBean getModel() {
		// TODO Auto-generated method stub
		return bean;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		this.bean = new ReplyBean();
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		exp_no = bean.getRep_infono();
		bean.setRep_no(ExpoDao.getSequence());
		if (bean.getRep_job().equals("new")) {
			bean.setRep_pnum(bean.getRep_no());
			bean.setRep_ref(bean.getRep_no());
		} else {

		}
		System.out.println("reply insert");
		System.out.println(bean);
		ExpoDao.insertReply(bean);
		System.out.println("reply insert complete");
		return SUCCESS;
	}

}
