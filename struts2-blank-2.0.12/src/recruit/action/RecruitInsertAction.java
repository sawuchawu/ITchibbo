package recruit.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;

import recruite.bean.RecruitBean;

import com.google.gson.Gson;
import com.opensymphony.xwork2.Action;

public class RecruitInsertAction implements Action {

	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpServletRequest request = ServletActionContext.getRequest();
		String jsonData = request.getParameter("json");
		
		Gson gson = new Gson();
		//String recruitJson = gson.toJson(jsonData);
		
		RecruitBean recruitJson=gson.fromJson(jsonData, RecruitBean.class);
		
		JSONObject jsonObject = (JSONObject)JSONValue.parse(jsonData);
		//JSONArray jsonArray = (JSONArray)jsonObject.get(0);
		
		System.out.println("jsonData="+jsonData);
		System.out.println("[gson]recruitJson="+recruitJson);
		
		System.out.println("bean="+recruitJson);
		//System.out.println(recruitJson.getTitle());
		//System.out.println("[JSONObject]"+jsonObject);
		
		//System.out.println(jsonData.);
		//System.out.println("json");
		
		return SUCCESS;
	}

}
