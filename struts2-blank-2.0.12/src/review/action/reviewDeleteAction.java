package review.action;

import review.dao.ReviewDao;

import com.opensymphony.xwork2.Action;


public class reviewDeleteAction implements Action{
	
	private int rev_no;

	public int getRev_no() {
		return rev_no;
	}

	public void setRev_no(int rev_no) {
		this.rev_no = rev_no;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ReviewDao.deleteData(rev_no);
		return SUCCESS;
	}
	
	

}
