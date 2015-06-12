package reply.action;

import tech.dao.TechDao;

import com.opensymphony.xwork2.Action;

public class ReplyDeleteAction implements Action{
	private int rep_no;

	public int getRep_no() {
		return rep_no;
	}

	public void setRep_no(int rep_no) {
		this.rep_no = rep_no;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("ReplyDeleteAction");
		TechDao.deleteReply(rep_no);
		System.out.println("ReplyDeleteAction Completed");
		return SUCCESS;
	}

}
