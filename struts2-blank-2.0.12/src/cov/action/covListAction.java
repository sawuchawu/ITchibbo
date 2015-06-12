package cov.action;

import java.util.List;

import com.opensymphony.xwork2.Action;

import cov.bean.CovBean;
import cov.dao.CovDao;

public class covListAction implements Action{
	 private List<CovBean>list;
	 
		public List<CovBean> getList() {
		return list;
	}

	public void setList(List<CovBean> list) {
		this.list = list;
	}

		@Override
		public String execute() throws Exception {
			// TODO Auto-generated method stub
			list=CovDao.selectCov();
			return SUCCESS;
		}
}