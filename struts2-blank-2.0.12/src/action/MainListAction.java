package action;

import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import tech.bean.TechBean;

import com.opensymphony.xwork2.Action;

import dao.Controller;

public class MainListAction implements Action {
	private List<TechBean> techList;
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
		
		for(int i=0; i<techList.size(); i++){
			JSONObject obj = new JSONObject();
			TechBean bean = techList.get(i);
			
			obj.put("tec_no", bean.getTec_no());
			obj.put("tec_title", bean.getTec_title());
			
			jsonArray.add(obj);
		}
		
		System.out.println(jsonArray);
		
		return SUCCESS;
	}
}
