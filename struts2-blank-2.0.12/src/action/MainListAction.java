package action;

import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import portfolio.bean.PortfolioBean;
import recruite.bean.RecruitBean;
import review.bean.ReviewBean;
import tech.bean.TechBean;

import com.opensymphony.xwork2.Action;

import cov.bean.CovBean;
import dao.Controller;

public class MainListAction implements Action {
	private List<TechBean> techList;
	private List<ReviewBean> revList;
	private List<CovBean> covList;
	private List<PortfolioBean> porList;
	
	


	public List<ReviewBean> getrevList() {
		return revList;
	}

	public void setrevList(List<ReviewBean> revList) {
		this.revList = revList;
	}

	public List<CovBean> getCovList() {
		return covList;
	}

	public void setCovList(List<CovBean> covList) {
		this.covList = covList;
	}

	public List<PortfolioBean> getPorList() {
		return porList;
	}

	public void setPorList(List<PortfolioBean> porList) {
		this.porList = porList;
	}



	private JSONArray jsonArray = new JSONArray();

	public List<TechBean> getTechList() {
		return techList;
	}

	public void setTechList(List<TechBean> techList) {
		this.techList = techList;
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
		System.out.println("select MainList");
		
		techList = Controller.selectMainTech();
		revList = Controller.selectMainRev();
		covList = Controller.selectMainCov();
		porList = Controller.selectMainPor();
		
		for(int i=0; i<techList.size(); i++){
			JSONObject tobj = new JSONObject();
			TechBean bean = techList.get(i);
			
			tobj.put("tec_no", bean.getTec_no());
			tobj.put("tec_title", bean.getTec_title());
			jsonArray.add(tobj);
		}
		
		for(int i=0; i<revList.size(); i++){
			JSONObject robj = new JSONObject();
			ReviewBean bean = revList.get(i);
			
			robj.put("rev_no", bean.getRev_no());
			robj.put("rev_title", bean.getRev_title());
			jsonArray.add(robj);
		}
		
		for(int i=0; i<covList.size(); i++){
			JSONObject cobj = new JSONObject();
			CovBean bean = covList.get(i);
			
			cobj.put("cov_no", bean.getCov_no());
			cobj.put("cov_title", bean.getCov_title());
			jsonArray.add(cobj);
		}
		
		for(int i=0; i<porList.size(); i++){
			JSONObject pobj = new JSONObject();
			PortfolioBean bean = porList.get(i);
			
			pobj.put("por_no", bean.getPor_no());
			pobj.put("por_title", bean.getPor_title());
			jsonArray.add(pobj);
		}

		System.out.println(jsonArray);
		return SUCCESS;
	}
}
