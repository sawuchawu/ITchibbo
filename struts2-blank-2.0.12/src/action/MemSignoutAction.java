package action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import bean.MemberBean;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import dao.Controller;

public class MemSignoutAction implements Action, Preparable, ModelDriven<MemberBean>{
	private MemberBean bean;
	
	public MemberBean getBean() {
		return bean;
	}

	public void setBean(MemberBean bean) {
		this.bean = bean;
	}

	@Override
	public MemberBean getModel() {
		// TODO Auto-generated method stub
		return bean;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		this.bean = new MemberBean();
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		Controller.memSignout(bean);
		HttpSession session=ServletActionContext.getRequest().getSession();
		session.invalidate();
		return SUCCESS;
	}
	
	

}
