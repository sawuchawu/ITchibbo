package dao;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;

public class Controller {
	private static SqlMapClient client;	
	
	static{
		client=dao.ServiceUtil.getSqlMapClient();
	}
	
	public static int chkLogin(String id, String pw){
		try {
			String pass = (String)client.queryForObject("bean.MemberBean.chkLogin", id);
			
			if(pass.equals(pw)){
				return 1;		// 로그인 성공
			}else{
				return 0;		// 비번 틀렸을 때
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return -1;		// 아이디가 없을 때
	}
}
