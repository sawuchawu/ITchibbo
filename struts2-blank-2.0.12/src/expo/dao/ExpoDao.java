package expo.dao;

import java.util.HashMap;
import java.util.List;

import recruite.bean.RecruitBean;
import reply.bean.ReplyBean;

import com.ibatis.sqlmap.client.SqlMapClient;

import expo.bean.ExpoBean;

public class ExpoDao {
	private static SqlMapClient client;	
	static{
		client=dao.ServiceUtil.getSqlMapClient();
	}
	
	public static List<ExpoBean>expoSelectSearch(HashMap<Object, Object>map)throws Exception{
		return client.queryForList("expo.expoSelectSearch",map);
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
	public static void insertReply(ReplyBean bean)throws Exception{
		client.insert("expo.insertReply",bean);
	}
	public static Integer getSequence()throws Exception{
		return (Integer)client.queryForObject("expo.getSequence");
	}
	public static List<ReplyBean>selectReply(int exp_no)throws Exception{
		return client.queryForList("expo.selectReply", exp_no);
	}
	public static Integer getTotalRow()throws Exception{
		return (Integer)client.queryForObject("expo.getTotalRow");
	}
	public static void deleteData(int exp_no){
		try {
			client.startTransaction();
			client.delete("expo.deleteData", exp_no);
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
	public static List<ExpoBean>selectExpo(HashMap<Object, Object>map)throws Exception{
		return client.queryForList("expo.selectExpo",map);
	}
	public static List<ExpoBean>selectExpoLike(int exp_no)throws Exception{
		return client.queryForList("expo.selectExpoLike",exp_no);
	}
	public static ExpoBean selectExpoInfo(int no)throws Exception{
		return (ExpoBean)client.queryForObject("expo.selectExpoInfo",no);
	}
	public static void updateExpoHit(int exp_no)throws Exception{
		client.update("expo.updateExpoHit", exp_no);
	}
	public static void updateExpoLike(int exp_no)throws Exception{
		client.update("expo.updateExpoLike", exp_no);
	}
	public static void ExpoUpdateData(ExpoBean bean){
		try {
			client.startTransaction();
			client.update("expo.ExpoUpdateData",bean);
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
