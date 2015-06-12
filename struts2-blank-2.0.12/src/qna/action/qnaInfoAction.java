package qna.action;

import java.util.List;

import qna.bean.QnaBean;
import qna.dao.QnaDao;
import reply.bean.ReplyBean;

import com.opensymphony.xwork2.Action;

public class qnaInfoAction implements Action {
	private int qna_no;
	private QnaBean bean;
	private String jobs;

	private List<ReplyBean>list;

	public int getQna_no() {
		return qna_no;
	}

	public void setQna_no(int qna_no) {
		this.qna_no = qna_no;
	}

	public QnaBean getBean() {
		return bean;
	}

	public void setBean(QnaBean bean) {
		this.bean = bean;
	}


	public String getJobs() {
		return jobs;
	}

	public void setJobs(String jobs) {
		this.jobs = jobs;
	}

	public List<ReplyBean> getList() {
		return list;
	}

	public void setList(List<ReplyBean> list) {
		this.list = list;
	}

	public String execute() throws Exception {
		// TODO Auto-generated method stub
		this.bean = QnaDao.selectQnaInfo(qna_no);
		list=QnaDao.selectReply(qna_no);
		return jobs;
	}

}