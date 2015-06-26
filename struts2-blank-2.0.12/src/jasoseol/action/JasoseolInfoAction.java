package jasoseol.action;

import jasoseol.bean.JasoseolBean;
import jasoseol.dao.JasoseolDao;

import com.opensymphony.xwork2.Action;

public class JasoseolInfoAction implements Action {
	private int com_no;
	private JasoseolBean bean;
	private String job;

	public int getCom_no() {
		return com_no;
	}

	public void setCom_no(int com_no) {
		this.com_no = com_no;
	}

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
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		this.bean=JasoseolDao.selectJasoseolInfo(com_no);
		return job;
	}

}
