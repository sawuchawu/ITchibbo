package news.action;

import news.dao.NewsDao;
import reply.bean.ReplyBean;
import brd.dao.BrdDao;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class newsreplyInsertAction implements Action, Preparable,
		ModelDriven<ReplyBean> {
	private ReplyBean bean;
	private String jobs;

	private int news_no;

	public int getNews_no() {
		return news_no;
	}

	public void setNews_no(int news_no) {
		this.news_no = news_no;
	}

	public String getJobs() {
		return jobs;
	}

	public void setJobs(String jobs) {
		this.jobs = jobs;
	}

	public ReplyBean getBean() {
		return bean;
	}

	public void setBean(ReplyBean bean) {
		this.bean = bean;
	}

	@Override
	public ReplyBean getModel() {
		// TODO Auto-generated method stub
		return bean;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		this.bean = new ReplyBean();
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		news_no = bean.getRep_infono();
		bean.setRep_no(NewsDao.getSequence());
		if (bean.getRep_job().equals("new")) {
			bean.setRep_pnum(bean.getRep_no());
			bean.setRep_ref(bean.getRep_no());
		} else {

		}
		System.out.println("reply insert");
		System.out.println(bean);
		NewsDao.insertReply(bean);
		System.out.println("reply insert complete");
		return SUCCESS;
	}

}
