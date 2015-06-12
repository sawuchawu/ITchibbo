package reply.action;

import reply.bean.ReplyBean;
import tech.dao.TechDao;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class ReplyInsertAction implements Action, Preparable,
		ModelDriven<ReplyBean> {
	private int rep_no;
	private ReplyBean bean;

	public int getRep_no() {
		return rep_no;
	}

	public void setRep_no(int rep_no) {
		this.rep_no = rep_no;
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

		rep_no = bean.getRep_no();
		
		bean.setRep_no(TechDao.getSequence());
		if (bean.getRep_job().equals("new")){
			bean.setRep_pnum(bean.getRep_infono());
			bean.setRep_ref(bean.getRep_no());
		} else {

		}
		System.out.println("REPLY INSERT");
		System.out.println(bean);
		TechDao.insertReply(bean);
		System.out.println("REPLY INSERT COMPLETED");
		return SUCCESS;
	}
}
