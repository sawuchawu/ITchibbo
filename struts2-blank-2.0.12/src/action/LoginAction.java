package action;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;

import dao.Controller;

public class LoginAction implements Action {
	private String id;
	private String pw;
	private String mf;
	


	public String getMf() {
		return mf;
	}

	public void setMf(String mf) {
		this.mf = mf;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HashMap<String, String>map=new HashMap<String,String>();
		map.put("id", id);
		map.put("pw", pw);
		map.put("mf", mf);
		
		if(Controller.loginCheck(map)){
			mf = Integer.toString(Controller.selectMf(id));
			HttpSession session=ServletActionContext.getRequest().getSession();
			session.setAttribute("id", id);
			session.setAttribute("mf", mf);
			session.setAttribute("pw", pw);
			session.setMaxInactiveInterval(60);
			return SUCCESS;
		}
		return "fail";
		
/*		System.out.println(id+" "+pw);
		
		int chk = Controller.chkLogin(id, pw);
		
		if(chk==1){				// �α��� ����
			return "success";
		}else if(chk==0){		// ��� ����
			return "fail";
		}else{		// ���̵� ����
			return "notFound";
		}*/
	}
	
	




}
