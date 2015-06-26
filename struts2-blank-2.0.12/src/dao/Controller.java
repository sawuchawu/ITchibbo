package dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import portfolio.bean.PortfolioBean;
import recruite.bean.RecruitBean;
import review.bean.ReviewBean;
import tech.bean.TechBean;
import bean.MemberBean;







import com.ibatis.sqlmap.client.SqlMapClient;

import cov.bean.CovBean;

public class Controller {
	private static SqlMapClient client;	
	
	static{
		client=dao.ServiceUtil.getSqlMapClient();
	}
	
	public static List<TechBean> selectMainTech() throws Exception{
		return client.queryForList("bean.MemberBean.mainTechList");
	}
	public static List<ReviewBean> selectMainRev() throws Exception{
		return client.queryForList("bean.MemberBean.mainRevList");
	}
	public static List<CovBean> selectMainCov() throws Exception{
		return client.queryForList("bean.MemberBean.mainCovList");
	}
	public static List<PortfolioBean> selectMainPor() throws Exception{
		return client.queryForList("bean.MemberBean.mainPorList");
	}
	
	
	public static int selectMf(String id) throws Exception{
		return (Integer)client.queryForObject("bean.MemberBean.chkMf",id);
	}
	
	public static boolean loginCheck(HashMap<String, String>map)throws Exception{
		String pw=(String)client.queryForObject("bean.MemberBean.loginCheck", map);
		String mdf=(String)client.queryForObject("bean.MemberBean.chkMdf", map);

		if(pw!=null&& pw.length()>0){
			if(pw.equals(map.get("pw"))){
				if(mdf.equals("1")){
					return true;
				}
			}
		}
		return false;
	}
	
	public static int chkLogin(String id, String pw){
		try {
			String ID = (String)client.queryForObject("bean.MemberBean.chkId", id);
			String PW = (String)client.queryForObject("bean.MemberBean.chkPw", id);
			
			/*if(PW.equals(pw)){
				return 1;		
			}else{
				return 0;		
			}*/
			
			if(ID!=null){
				if(PW.equals(pw)){
					return 1;		
				}else{
					return 0;		
				}
			}else{
				return -1;			
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return -1;		
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
	
	
	
	public static List<MemberBean> selectMem() throws Exception{
		return client.queryForList("bean.MemberBean.selectMem");
	}
	
	public static List<MemberBean> adSelectMem(HashMap<Object, Object>map) throws Exception{
		return client.queryForList("bean.MemberBean.adSelectMem", map);
	}
	
	public static Integer getTotalRow() throws Exception{
		return (Integer) client.queryForObject("bean.MemberBean.getTotalRow");
	}
	
	
	public static MemberBean selectMemInfo(String id)throws Exception{
		return (MemberBean)client.queryForObject("bean.MemberBean.selectMemInfo",id);
	}
	
	public static String selectPw(String id) throws Exception{
		return (String)client.queryForObject("bean.MemberBean.chkPw",id);
	}
	
	
	public static void memUpdateData(MemberBean bean){
		try {
			client.startTransaction();
			client.update("bean.MemberBean.memUpdateData",bean);
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
	
	public static void memSignout(MemberBean bean){
		try {
			client.startTransaction();
			client.update("bean.MemberBean.memSignout",bean);
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
	
	public static void memPwUpdate(MemberBean bean){
		try {
			client.startTransaction();
			client.update("bean.MemberBean.memPwUpdate",bean);
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
