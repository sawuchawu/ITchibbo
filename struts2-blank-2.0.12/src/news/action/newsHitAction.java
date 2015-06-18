package news.action;

import news.dao.NewsDao;

import com.opensymphony.xwork2.Action;

public class newsHitAction implements Action {
	private String jobs;
	private int news_no;

	public String getJobs() {
		return jobs;
	}

	public void setJobs(String jobs) {
		this.jobs = jobs;
	}

	public int getNews_no() {
		return news_no;
	}

	public void setNews_no(int news_no) {
		this.news_no = news_no;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		// System.out.println("나온다");
		NewsDao.updateNewsHit(news_no);
		System.out.println(jobs);
		return SUCCESS;
	}

}