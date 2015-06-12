package brd.action;

import brd.dao.BrdDao;

import com.opensymphony.xwork2.Action;

public class brdDeleteAction implements Action {

	private int brd_no;

	
	public int getBrd_no() {
		return brd_no;
	}


	public void setBrd_no(int brd_no) {
		this.brd_no = brd_no;
	}


	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println(brd_no);
		BrdDao.deleteBrd(brd_no);
		return SUCCESS;
	}

}
