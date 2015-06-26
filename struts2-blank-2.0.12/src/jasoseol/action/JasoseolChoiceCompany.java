package jasoseol.action;

import jasoseol.bean.JasoseolBean;
import jasoseol.dao.JasoseolDao;

import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.opensymphony.xwork2.Action;

public class JasoseolChoiceCompany implements Action {
	
	private String choiceCompany;
	private List<JasoseolBean> list;
	private String job;


	public List<JasoseolBean> getList() {
		return list;
	}

	public void setList(List<JasoseolBean> list) {
		this.list = list;
	}

	public String getChoiceCompany() {
		return choiceCompany;
	}

	public void setChoiceCompany(String choiceCompany) {
		this.choiceCompany = choiceCompany;
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

		if(job.equals("choice")) {
			list = JasoseolDao.selectJasoseolCompany(); 
			
		} else {
			list = JasoseolDao.selectJasoseolOneCompany(choiceCompany);
			

		}
		
		return job;
	}
}
