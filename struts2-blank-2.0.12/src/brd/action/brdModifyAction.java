package brd.action;

import brd.bean.BoardBean;
import brd.dao.BrdDao;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class brdModifyAction implements Action,Preparable,ModelDriven<BoardBean> {
	private BoardBean bean;
	private String job;
	
	

	public BoardBean getBean() {
		return bean;
	}

	public void setBean(BoardBean bean) {
		this.bean = bean;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}


	@Override
	public BoardBean getModel() {
		// TODO Auto-generated method stub
		return bean;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		this.bean = new BoardBean();
	}

	@Override
	public String execute() throws Exception {
		System.out.println(bean);

		BrdDao.brdUpdateData(bean);
		return SUCCESS;
	}

	
}
