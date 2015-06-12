package qna.action;

import qna.dao.QnaDao;

import com.opensymphony.xwork2.Action;

public class qnaHitAction implements Action {
	private String jobs;
	private int qna_no;

	public String getJobs() {
		return jobs;
	}

	public void setJobs(String jobs) {
		this.jobs = jobs;
	}

	public int getQna_no() {
		return qna_no;
	}

	public void setQna_no(int qna_no) {
		this.qna_no = qna_no;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		// System.out.println("나온다");
		QnaDao.updateQnaHit(qna_no);
		System.out.println("나온다");
		return SUCCESS;
	}

}