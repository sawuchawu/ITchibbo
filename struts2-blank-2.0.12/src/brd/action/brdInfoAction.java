package brd.action;

import java.util.List;

import qna.bean.QnaBean;
import qna.dao.QnaDao;
import reply.bean.ReplyBean;
import brd.bean.BoardBean;
import brd.dao.BrdDao;

import com.opensymphony.xwork2.Action;

public class brdInfoAction implements Action {
	private int brd_no;
	private BoardBean bean;
	private String jobs;

	private List<ReplyBean>list;
	public int getBrd_no() {
		return brd_no;
	}

	public void setBrd_no(int brd_no) {
		this.brd_no = brd_no;
	}

	public BoardBean getBean() {
		return bean;
	}

	public void setBean(BoardBean bean) {
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
	
		
		this.bean = BrdDao.selectBrdInfo(brd_no);
		list=QnaDao.selectReply(brd_no);
		return jobs;
	}

}