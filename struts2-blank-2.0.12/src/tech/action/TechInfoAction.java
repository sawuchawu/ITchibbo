package tech.action;

import java.util.List;

import reply.bean.ReplyBean;
import tech.bean.TechBean;
import tech.dao.TechDao;

import com.opensymphony.xwork2.Action;
import com.sun.javafx.scene.text.HitInfo;

public class TechInfoAction implements Action {
	private int tec_no;
	private TechBean bean;
	private String job;
	private List<ReplyBean> list;

	public List<ReplyBean> getList() {
		return list;
	}

	public void setList(List<ReplyBean> list) {
		this.list = list;
	}

	public int getTec_no() {
		return tec_no;
	}

	public void setTec_no(int tec_no) {
		this.tec_no = tec_no;
	}

	public TechBean getBean() {
		return bean;
	}

	public void setBean(TechBean bean) {
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
		System.out.println(job);
		System.out.println(tec_no);
		this.bean=TechDao.selectTechInfo(tec_no);
		list=TechDao.selectReply(tec_no);
		System.out.println(bean);
		System.out.println(job);
		return job;
	}

}
