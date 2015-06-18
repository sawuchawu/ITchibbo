package news.action;

import java.util.List;

import qna.dao.QnaDao;
import reply.bean.ReplyBean;
import news.bean.NewsBean;
import news.dao.NewsDao;
import brd.dao.BrdDao;

import com.opensymphony.xwork2.Action;

public class NewsInfoAction implements Action{

	private int news_no;
	private NewsBean bean;
	private String jobs;
	private List<ReplyBean>list;
	
	
	public List<ReplyBean> getList() {
		return list;
	}
	public void setList(List<ReplyBean> list) {
		this.list = list;
	}
	public int getNews_no() {
		return news_no;
	}
	public void setNews_no(int news_no) {
		this.news_no = news_no;
	}
	public NewsBean getBean() {
		return bean;
	}
	public void setBean(NewsBean bean) {
		this.bean = bean;
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
		System.out.println(news_no);
		this.bean = NewsDao.selectNewsInfo(news_no);
		list=NewsDao.selectReply(news_no);
		return jobs;
		
	}
	
	
	
	
	
}
