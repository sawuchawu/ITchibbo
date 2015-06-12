package expo.action;

import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.opensymphony.xwork2.Action;

import expo.bean.ExpoBean;
import expo.dao.ExpoDao;

public class ExpoLikeAction implements Action{
	private List<ExpoBean>list;
	private JSONArray jsonArray=new JSONArray();
	private int exp_no;
	
	public int getExp_no() {
		return exp_no;
	}

	public void setExp_no(int exp_no) {
		this.exp_no = exp_no;
	}

	public List<ExpoBean> getList() {
		return list;
	}

	public void setList(List<ExpoBean> list) {
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
		ExpoDao.updateExpoLike(exp_no);
		list=ExpoDao.selectExpoLike(exp_no);
	
			JSONObject obj=new JSONObject();
			ExpoBean bean=list.get(0);
		
			obj.put("exp_like", bean.getExp_like());
			
			jsonArray.add(obj);			
		
		return SUCCESS;
	}

}
