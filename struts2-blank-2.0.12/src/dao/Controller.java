package dao;

import java.sql.SQLException;

import bean.MemberBean;

import com.ibatis.sqlmap.client.SqlMapClient;

public class Controller {
	private static SqlMapClient client;	
	
	static{
		client=dao.ServiceUtil.getSqlMapClient();
	}
	
	public static int chkLogin(String id, String pw){
		try {
			String ID = (String)client.queryForObject("bean.MemberBean.chkId", id);
			String PW = (String)client.queryForObject("bean.MemberBean.chkPw", id);
			
			/*if(PW.equals(pw)){
				return 1;		// 로그인 성공
			}else{
				return 0;		// 비번 틀렸을 때
			}*/
			
			if(ID!=null){
				if(PW.equals(pw)){
					return 1;		// 로그인 성공(id, pw 있을때)
				}else{
					return 0;		// pw 틀렸을 때
				}
			}else{
				return -1;			// id 없을 때
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return -1;		// 아이디가 없을 때
	}
	
	public static void mem_Signup(MemberBean bean){
		try {
			client.startTransaction();
			client.insert("bean.MemberBean.mem_Signup", bean);
			client.commitTransaction();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			try {
				client.endTransaction();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	}
}
