package recruit.action;

import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import recruit.dao.RecruitDao;
import recruite.bean.RecruitBean;

import com.google.gson.Gson;
import com.opensymphony.xwork2.Action;

public class RecruitSelectAction implements Action {
	private List<RecruitBean> recList;
	private JSONArray jsonArray = new JSONArray();

	public List<RecruitBean> getRecList() {
		return recList;
	}

	public void setRecList(List<RecruitBean> recList) {
		this.recList = recList;
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
		System.out.println("select Recruit");

		recList = RecruitDao.selectRecruit();

		for (int i = 0; i < recList.size(); i++) {
			JSONObject obj = new JSONObject();
			RecruitBean bean = recList.get(i);

			obj.put("no", bean.getRec_no());
			obj.put("title", bean.getRec_title());
			obj.put("sDate", bean.getRec_sdate());
			obj.put("fDate", bean.getRec_fdate());

			jsonArray.add(obj);
		}

		System.out.println(jsonArray);

		return SUCCESS;
	}

}
