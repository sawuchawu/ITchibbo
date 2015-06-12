package expo.action;

import java.util.List;

import reply.bean.ReplyBean;

import com.opensymphony.xwork2.Action;

import expo.bean.ExpoBean;
import expo.dao.ExpoDao;

public class DataInfoAction implements Action {
	private int exp_no;
	private ExpoBean bean;
	private String jobs;
	private List<ReplyBean>list;
	
	
	public List<ReplyBean> getList() {
		return list;
	}
	public void setList(List<ReplyBean> list) {
		this.list = list;
	}
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
	public String getJobs() {
		return jobs;
	}
	public void setJobs(String jobs) {
		this.jobs = jobs;
	}
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		this.bean = ExpoDao.selectExpoInfo(exp_no);
		list=ExpoDao.selectReply(exp_no);
	
		return jobs;
	}
	
}
