package reply.action;

/*import reply.bean.ReplyBean;
import tech.dao.TechDao;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class ReplyModifyAction implements Action,Preparable,ModelDriven<ReplyBean>{
	private ReplyBean bean;
	private String job;
	public ReplyBean getBean() {
		return bean;
	}
	public void setBean(ReplyBean bean) {
		this.bean = bean;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
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
		System.out.println(bean);
		TechDao.modifyReply(bean);
		return SUCCESS;
	}
	*/
	
	
