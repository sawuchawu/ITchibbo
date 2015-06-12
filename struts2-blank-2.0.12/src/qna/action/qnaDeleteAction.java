package qna.action;

import qna.dao.QnaDao;

import com.opensymphony.xwork2.Action;

public class qnaDeleteAction implements Action {

	private int qna_no;

	public int getQna_no() {
		return qna_no;
	}

	public void setQna_no(int qna_no) {
		this.qna_no = qna_no;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println(qna_no);
		QnaDao.deleteQna(qna_no);
		return SUCCESS;
	}

}
