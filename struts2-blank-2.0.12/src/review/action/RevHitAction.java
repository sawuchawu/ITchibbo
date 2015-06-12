package review.action;

import qna.dao.QnaDao;
import review.dao.ReviewDao;

import com.opensymphony.xwork2.Action;

public class RevHitAction implements Action {
	private String jobs;
	private int rev_no;

	
	public int getRev_no() {
		return rev_no;
	}

	public void setRev_no(int rev_no) {
		this.rev_no = rev_no;
	}

	public String getJobs() {
		return jobs;
	}

	public void setJobs(String jobs) {
		this.jobs = jobs;
	}



	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		// System.out.println("나온다");
		ReviewDao.updateRevHit(rev_no);
		System.out.println("나온다");
		return SUCCESS;
	}

}