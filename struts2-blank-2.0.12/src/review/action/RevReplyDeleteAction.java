package review.action;

import qna.dao.QnaDao;
import review.dao.ReviewDao;

import com.opensymphony.xwork2.Action;

public class RevReplyDeleteAction implements Action{
	
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
		ReviewDao.deleteReply(rep_no);
		return SUCCESS;
	}

	
}
