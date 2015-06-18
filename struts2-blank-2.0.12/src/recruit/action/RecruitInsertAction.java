package recruit.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
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

	/*@Override
	public RecruitBean getModel() {
		// TODO Auto-generated method stub
		return bean;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		this.bean = new RecruitBean();
	}*/

	public RecruitBean getBean() {
		return bean;
	}

	public void setBean(RecruitBean bean) {
		this.bean = bean;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		/* json(gson) */
		
		HttpServletRequest request = ServletActionContext.getRequest();
		String jsonData = request.getParameter("json");

		Gson gson = new Gson();
		recruitJson = gson.fromJson(jsonData, RecruitBean.class);
		

		System.out.println(recruitJson);
		

		
		RecruitDao.insertRecruitScrap(recruitJson);
		
		//System.out.println(bean);
		//RecruitDao.insertRecruitScrap(bean);

		System.out.println("RecruitInsertAction Complete");
		return SUCCESS;
	}

}
