package action;

import com.opensymphony.xwork2.Action;

import dao.Controller;

public class LoginAction2 implements Action {
	private String id;
	private String pw;

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
		
		System.out.println(id+" "+pw);
		
		int chk = Controller.chkLogin(id, pw);
		
		if(chk==1){				// 로그인 성공
			return "success";
		}else if(chk==0){		// 비번 오류
			return "fail";
		}else{		// 아이디 없음
			return "notFound";
		}
	}

}
