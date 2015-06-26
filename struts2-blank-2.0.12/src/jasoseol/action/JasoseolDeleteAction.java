package jasoseol.action;

import jasoseol.dao.JasoseolDao;
import com.opensymphony.xwork2.Action;

public class JasoseolDeleteAction implements Action {
	private int com_no;

	public int getCom_no() {
		return com_no;
	}

	public void setCom_no(int com_no) {
		this.com_no = com_no;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		
		JasoseolDao.deleteJasoseol(com_no);
		return SUCCESS;
	}

}
