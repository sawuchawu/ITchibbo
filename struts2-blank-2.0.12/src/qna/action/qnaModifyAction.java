package qna.action;

import qna.bean.QnaBean;
import qna.dao.QnaDao;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class qnaModifyAction implements Action, Preparable,
		ModelDriven<QnaBean> {
	private QnaBean bean;
	private String job;

	public QnaBean getBean() {
		return bean;
	}

	public void setBean(QnaBean bean) {
		this.bean = bean;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	@Override
	public QnaBean getModel() {
		// TODO Auto-generated method stub
		return bean;
	}

	
	/*@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		this.bean = new QnaBean();
	}*/

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		this.bean = new QnaBean();
		
	}

	@Override
	public String execute() throws Exception {
		System.out.println(bean);

		QnaDao.qnaUpdateData(bean);
		return SUCCESS;
	}

}
