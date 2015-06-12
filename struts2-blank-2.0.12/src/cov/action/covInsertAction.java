package cov.action;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import cov.bean.CovBean;
import cov.dao.CovDao;

public class covInsertAction implements Action,Preparable,ModelDriven<CovBean>{

	private CovBean bean;

	public CovBean getBean() {
		return bean;
	}

	public void setBean(CovBean bean) {
		this.bean = bean;
	}

	@Override
	public CovBean getModel() {
		// TODO Auto-generated method stub
		return bean;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		this.bean=new CovBean();
		
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		//System.out.println(bean);
		CovDao.insertCov(bean);
		return SUCCESS;
	}
	
	
	
	
}
