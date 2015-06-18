package news.action;

import news.dao.NewsDao;

import com.opensymphony.xwork2.Action;

public class newsDeleteAction implements Action{
	
	private int news_no;

	public int getNews_no() {
		return news_no;
	}

	public void setNews_no(int news_no) {
		this.news_no = news_no;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println(news_no);
		NewsDao.deleteNews(news_no);
		return SUCCESS;
	}
	
	

}
