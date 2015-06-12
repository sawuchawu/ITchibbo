package action;


import bean.MemberBean;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import dao.Controller;


public class MemModifyAction implements Action, Preparable, ModelDriven<MemberBean>{
	private MemberBean bean;
	private String job;
	
	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public MemberBean getBean() {
		return bean;
	}

	public void setBean(MemberBean bean) {
		this.bean = bean;
	}

	//@Override
	public MemberBean getModel() {
		// TODO Auto-generated method stub
		return bean;
	}

	//@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		this.bean= new MemberBean();
	}

	//@Override
	public String execute() throws Exception {

		Controller.memUpdateData(bean);
		return SUCCESS;
	}

}
