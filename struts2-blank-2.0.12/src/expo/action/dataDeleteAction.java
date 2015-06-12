package expo.action;

import com.opensymphony.xwork2.Action;

import expo.dao.ExpoDao;

public class dataDeleteAction implements Action {
	private int exp_no;
	
	public int getExp_no() {
		return exp_no;
	}

	public void setExp_no(int exp_no) {
		this.exp_no = exp_no;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub

		ExpoDao.deleteData(exp_no);
		return SUCCESS;
	}

	
}
