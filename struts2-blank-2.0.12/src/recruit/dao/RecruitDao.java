package recruit.dao;

import recruite.bean.RecruitBean;

import com.ibatis.sqlmap.client.SqlMapClient;

public class RecruitDao {
	private static SqlMapClient client;	
	static{
		client=dao.ServiceUtil.getSqlMapClient();
	}
	
	public static void insertRecruitScrap(RecruitBean bean)throws Exception{
		client.insert("recruit.insertRecScrap",bean);
	}
	
	
}
