package jasoseol.dao;

import jasoseol.bean.JasoseolBean;

import java.util.HashMap;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

public class JasoseolDao {

	private static SqlMapClient client;	
	static{
		client=dao.ServiceUtil.getSqlMapClient();
	}
	
	public static List<JasoseolBean> selectJasoseolCompany() throws Exception {
		
		return client.queryForList("jasoseol.selectJasoseolCompany");
	}
	
	public static List<JasoseolBean> selectJasoseolOneCompany(String choiceCompany) throws Exception {
		
		return client.queryForList("jasoseol.selectJasoseolOneCompany", choiceCompany);
	}
	public static void insertJasoseol(JasoseolBean bean) throws Exception {
		try {
			client.startTransaction();
			client.insert("jasoseol.insertJasoseol", bean);
			client.commitTransaction();
			System.out.println(bean);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();

		} finally {
			try {
				client.endTransaction();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
	}

	public static void deleteJasoseol(int com_no) {
		try {
			client.startTransaction();
			client.delete("jasoseol.deleteJasoseol", com_no);
			client.commitTransaction();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {

			try {
				client.endTransaction();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	}
	public static List<JasoseolBean> selectJasoseol(HashMap<Object, Object> map)
			throws Exception {
		return client.queryForList("jasoseol.selectJasoseol", map);
	}

	public static JasoseolBean selectJasoseolInfo(int no) throws Exception {
		return (JasoseolBean) client.queryForObject("jasoseol.selectJasoseolInfo", no);
	}

	public static void JasoseolUpdate(JasoseolBean bean) {
		try {
			client.startTransaction();
			client.update("jasoseol.jasoseolUpdate", bean);
			client.commitTransaction();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				client.endTransaction();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	}
	
	public static Integer getTotalRow() throws Exception {
		return (Integer) client.queryForObject("jasoseol.getTotalRow");
	}


}
