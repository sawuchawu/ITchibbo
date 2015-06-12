package portfolio.action;

import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import portfolio.bean.PortfolioBean;
import portfolio.dao.PortfolioDao;

import com.opensymphony.xwork2.Action;

public class PortfolioSearchJob implements Action {

	private List<PortfolioBean> list;
	
	private JSONArray jsonArray = new JSONArray();
	
	private String por_job;
	
	public String getPor_job() {
		return por_job;
	}


	public void setPor_job(String por_job) {
		this.por_job = por_job;
	}


	public List<PortfolioBean> getList() {
		return list;
	}


	public void setList(List<PortfolioBean> list) {
		this.list = list;
	}


	public JSONArray getJsonArray() {
		return jsonArray;
	}


	public void setJsonArray(JSONArray jsonArray) {
		this.jsonArray = jsonArray;
	}


	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		System.out.println("PortfolioSearchJob : JSONArray");
		System.out.println(por_job);
		list = PortfolioDao.selectPortfolioSearchJob(por_job);
		System.out.println(list);
		for(int i=0; i<list.size(); i++) {
			JSONObject obj = new JSONObject();
			
			PortfolioBean bean = list.get(i);
			
			obj.put("por_no", bean.getPor_no());
			obj.put("mem_id", bean.getMem_id());
			obj.put("por_title", bean.getPor_title());
			obj.put("por_job", bean.getPor_job());
			obj.put("por_content", bean.getPor_content());
			obj.put("pdfFileName", bean.getPdfFileName());
			obj.put("imgFileName", bean.getImgFileName());
			obj.put("por_regdate", bean.getPor_regDate());
			obj.put("por_hit", bean.getPor_hit());		
			
			
			jsonArray.add(obj);

		}
		
		System.out.println("PortfolioSearchJob Complete");
		return SUCCESS;
	}


	
	
	
}
