package cov.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;

import cov.bean.CartListBean;
import cov.bean.CovBean;
import cov.dao.CovDao;

public class CartListAction implements Action{
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
		list= CovDao.selectCart((String)ServletActionContext.getRequest().getSession().getAttribute("id"));
		System.out.println("action ¿À³Ä"+(String)ServletActionContext.getRequest().getSession().getAttribute("id"));
		
		return SUCCESS;
	}
		
}
