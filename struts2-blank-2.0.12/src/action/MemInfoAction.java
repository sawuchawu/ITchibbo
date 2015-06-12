package action;

import bean.MemberBean;

import com.opensymphony.xwork2.Action;

import dao.Controller;

public class MemInfoAction implements Action{
	private String mem_id;
	private MemberBean bean;
	private String job;
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public MemberBean getBean() {
		return bean;
	}
	public void setBean(MemberBean bean) {
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
		this.bean=Controller.selectMemInfo(mem_id);
		System.out.println(job);
		return job;
	}

	
}
