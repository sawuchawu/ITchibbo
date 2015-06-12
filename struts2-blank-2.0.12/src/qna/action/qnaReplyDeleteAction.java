package qna.action;

import qna.dao.QnaDao;

import com.opensymphony.xwork2.Action;

public class qnaReplyDeleteAction implements Action{
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
		QnaDao.deleteReply(rep_no);
		System.out.println("ReplyDeleteAction Completed");
		return SUCCESS;
	}

}
