package review.action;

import reply.bean.ReplyBean;
import review.dao.ReviewDao;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class RevReplyInsertAction implements Action, Preparable,ModelDriven<ReplyBean>{

	private ReplyBean bean;
	private String job;
	private int rev_no;
	
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

	public int getRev_no() {
		return rev_no;
	}

	public void setRev_no(int rev_no) {
		this.rev_no = rev_no;
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
		rev_no = bean.getRep_infono();
		bean.setRep_no(ReviewDao.getSequence());
		if (bean.getRep_job().equals("new")) {
			bean.setRep_pnum(bean.getRep_no());
			bean.setRep_ref(bean.getRep_no());
		} else {

		}
		System.out.println("reply insert");
		System.out.println(bean);
		ReviewDao.insertReply(bean);
		System.out.println("reply insert complete");
		return SUCCESS;
	}
	
	

}
