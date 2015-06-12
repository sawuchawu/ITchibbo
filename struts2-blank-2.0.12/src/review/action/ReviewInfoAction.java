package review.action;

import java.util.List;

import com.opensymphony.xwork2.Action;

import reply.bean.ReplyBean;
import review.bean.ReviewBean;
import review.dao.ReviewDao;

public class ReviewInfoAction implements Action{
	private int rev_no;
	private ReviewBean bean;
	private String job;
	private List<ReplyBean> list;
	
	public List<ReplyBean> getList() {
		return list;
	}
	public void setList(List<ReplyBean> list) {
		this.list = list;
	}
	public int getRev_no() {
		return rev_no;
	}
	public void setRev_no(int rev_no) {
		this.rev_no = rev_no;
	}
	public ReviewBean getBean() {
		return bean;
	}
	public void setBean(ReviewBean bean) {
		this.bean = bean;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		this.bean = ReviewDao.selectReviewInfo(rev_no);
		list= ReviewDao.selectReply(rev_no);
		
		//System.out.println(bean);
		return job;
	}
	
	
}
