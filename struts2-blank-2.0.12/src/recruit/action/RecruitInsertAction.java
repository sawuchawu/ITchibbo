package recruit.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;

import recruit.dao.RecruitDao;
import recruite.bean.RecruitBean;

import com.google.gson.Gson;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import expo.dao.ExpoDao;

public class RecruitInsertAction implements Action {
	//, Preparable,	ModelDriven<RecruitBean>
	private RecruitBean bean;
	private RecruitBean recruitJson;
	private String jsonData;
	private JSONArray jsonArray = new JSONArray();

	public RecruitBean getBean() {
		return bean;
	}

	public void setBean(RecruitBean bean) {
		this.bean = bean;
	}

	public JSONArray getJsonArray() {
		return jsonArray;
	}

	public void setJsonArray(JSONArray jsonArray) {
		this.jsonArray = jsonArray;
	}

	public RecruitBean getRecruitJson() {
		return recruitJson;
	}

	public void setRecruitJson(RecruitBean recruitJson) {
		this.recruitJson = recruitJson;
	}

	public String getJsonData() {
		return jsonData;
	}

	public void setJsonData(String jsonData) {
		this.jsonData = jsonData;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		/* json(gson) */
		
		HttpServletRequest request = ServletActionContext.getRequest();
		jsonData = request.getParameter("json");

		System.out.println(jsonData);
		
		Gson gson = new Gson();
		recruitJson = gson.fromJson(jsonData, RecruitBean.class);

		System.out.println(recruitJson);
		
		try {
			RecruitDao.insertRecruitScrap(recruitJson);
		} catch (Exception e) {
			JSONObject obj = new JSONObject();
			obj.put("no", 1);
			jsonArray.add(obj);
			
			System.out.println(jsonArray);
		}
		
		//System.out.println(bean);
		//RecruitDao.insertRecruitScrap(bean);

		System.out.println("RecruitInsertAction Complete");
		return SUCCESS;
	}

}
