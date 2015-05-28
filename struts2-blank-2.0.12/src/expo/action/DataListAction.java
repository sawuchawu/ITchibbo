package expo.action;

import java.util.List;

import com.opensymphony.xwork2.Action;

import expo.bean.ExpoBean;
import expo.dao.ExpoDao;

public class DataListAction implements Action{
 private List<ExpoBean>list;
 
	public List<ExpoBean> getList() {
	return list;
}

public void setList(List<ExpoBean> list) {
	this.list = list;
}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		list=ExpoDao.selectExpo();
		return SUCCESS;
	}
	
}
