package action;

import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import bean.MemberBean;

import com.opensymphony.xwork2.Action;

import dao.Controller;

public class MemberAction implements Action{
	private List<MemberBean> memList;
	private JSONArray jsonArray = new JSONArray();
	
	public List<MemberBean> getMemList() {
		return memList;
	}

	public void setMemList(List<MemberBean> memList) {
		this.memList = memList;
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
		memList = Controller.selectMem();
		for(int i=0; i<memList.size(); i++){
			JSONObject obj=new JSONObject();
			MemberBean bean = memList.get(i);
			obj.put("mem_id", bean.getMem_id());
			obj.put("mem_pw", bean.getMem_pw());
			obj.put("mem_name", bean.getMem_name());
			obj.put("mem_email", bean.getMem_email());
			obj.put("mem_phone", bean.getMem_phone());
			jsonArray.add(obj);
		}
		return SUCCESS;
	}
	
	
}
