package jasoseol.action;

import jasoseol.bean.JasoseolBean;
import jasoseol.dao.JasoseolDao;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class JasoseolModifyAction implements Action, Preparable,
		ModelDriven<JasoseolBean> {
	private JasoseolBean bean;
	private String job;

	public JasoseolBean getBean() {
		return bean;
	}

	public void setBean(JasoseolBean bean) {
		this.bean = bean;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	@Override
	public JasoseolBean getModel() {
		// TODO Auto-generated method stub
		return bean;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		this.bean = new JasoseolBean();

	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub

		JasoseolDao.JasoseolUpdate(bean);
		return SUCCESS;
	}

}
