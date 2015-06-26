package portfolio.action;

import java.util.List;

import portfolio.bean.PortfolioBean;
import portfolio.dao.PortfolioDao;
import reply.bean.ReplyBean;

import com.opensymphony.xwork2.Action;

public class PortfolioInfo implements Action {

	private int por_no;
	private PortfolioBean bean;
	private List<ReplyBean> list;
	private String job;
	

	public int getPor_no() {
		return por_no;
	}
	public void setPor_no(int por_no) {
		this.por_no = por_no;
	}
	public PortfolioBean getBean() {
		return bean;
	}
	public void setBean(PortfolioBean bean) {
		this.bean = bean;
	}
	public List<ReplyBean> getList() {
		return list;
	}
	public void setList(List<ReplyBean> list) {
		this.list = list;
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
		System.out.println(por_no);
		this.bean = PortfolioDao.selectPortfolioInfo(por_no);
		
		System.out.println("BEAN : " + bean);
		System.out.println("JOB : " + job);
		
		list = PortfolioDao.selectPortfolioReply(por_no);
		
		System.out.println(list);
		System.out.println("info °ª : " + job);
		return job;
	}

	
	
}
