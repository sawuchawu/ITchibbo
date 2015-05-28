package expo.dao;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import dao.ServiceUtil;
import expo.bean.ExpoBean;

public class ExpoDao {
	private static SqlMapClient client;	
	static{
		client=dao.ServiceUtil.getSqlMapClient();
	}
	public static void insertExpo(ExpoBean bean)throws Exception{
		try {
			client.startTransaction();
			client.insert("expo.insertExpo", bean);
			client.commitTransaction();
			System.out.println(bean);
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
	public static List<ExpoBean>selectExpo()throws Exception{
		return client.queryForList("expo.selectExpo");
	}
}
