package tech.action;

import tech.dao.TechDao;

import com.opensymphony.xwork2.Action;

public class TechDeleteAction implements Action {
	private int tec_no;

	public int getTec_no() {
		return tec_no;
	}

	public void setTec_no(int tec_no) {
		this.tec_no = tec_no;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		
		TechDao.deleteTech(tec_no);
		System.out.println("TechDeleteAction completed");
		return SUCCESS;
	}

}
