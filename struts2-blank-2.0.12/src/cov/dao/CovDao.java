package cov.dao;

import java.util.HashMap;
import java.util.List;





import com.ibatis.sqlmap.client.SqlMapClient;

import cov.bean.CartListBean;
import cov.bean.CovBean;
import expo.bean.ExpoBean;

public class CovDao {
	private static SqlMapClient client;	
	static{
		client=dao.ServiceUtil.getSqlMapClient();
	}
	public static void insertCov(CovBean bean)throws Exception{
		try {
			client.startTransaction();
			client.insert("cov.insertCov", bean);
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
	public static void insertCart(CartListBean bean)throws Exception{
		try {
			client.startTransaction();
			client.insert("cov.insertCart", bean);
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
	
	
	public static List<CovBean>selectCov(HashMap<Object, Object>map)throws Exception{
		return client.queryForList("cov.selectCov", map);
	}
	public static List<CovBean>selectCart(String id)throws Exception{
		System.out.println(id+"dao ¿À³Ä");
		return client.queryForList("cov.selectCart", id);
	}
	
	public static Integer getTotalRow() throws Exception{
		return (Integer) client.queryForObject("cov.getTotalRow");
	}
	
	public static CovBean selectCovInfo(int no)throws Exception{
		return (CovBean)client.queryForObject("cov.selectCovInfo",no);
	}
	
	
	public static void covUpdateData(CovBean bean){
		try {
			client.startTransaction();
			client.update("cov.covUpdateData",bean);
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
	

	
	public static void deleteCov(int cov_no){
		try {
			client.startTransaction();
			client.delete("cov.deleteCov", cov_no);
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
