package tech.dao;

import java.util.HashMap;
import java.util.List;

import reply.bean.ReplyBean;
import tech.bean.TechBean;

import com.ibatis.sqlmap.client.SqlMapClient;

public class TechDao {
	private static SqlMapClient client;
	static {
		client = dao.ServiceUtil.getSqlMapClient();
	}

	public static void insertTech(TechBean bean) throws Exception {
		try {
			client.startTransaction();
			client.insert("tech.insertTech", bean);
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

	public static void deleteTech(int tec_no) {
		try {
			client.startTransaction();
			client.delete("tech.deleteTech", tec_no);
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
	public static void deleteReply(int rep_no) {
		try {
			client.startTransaction();
			client.delete("tech.deleteReply", rep_no);
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
/*	public static void modifyReply(ReplyBean bean) {
		try {
			client.startTransaction();
			client.update("tech.modifyReply", bean);
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
	} */
	public static List<TechBean> selectTech(HashMap<Object, Object> map)
			throws Exception {
		return client.queryForList("tech.selectTech", map);
	}

	public static TechBean selectTechInfo(int no) throws Exception {
		return (TechBean) client.queryForObject("tech.selectTechInfo", no);
	}

	public static void TechUpdate(TechBean bean) {
		try {
			client.startTransaction();
			client.update("tech.techUpdate", bean);
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
		return (Integer) client.queryForObject("tech.getTotalRow");
	}

	public static void insertReply(ReplyBean bean) throws Exception {
		client.insert("tech.insertReply", bean);
	}

	public static List<ReplyBean> selectReply(int tec_no) throws Exception {
		return client.queryForList("tech.selectReply", tec_no);
	}
	public static Integer getSequence() throws Exception {
		return (Integer) client.queryForObject("tech.getSequence");
	}
	public static void updateHit(int tec_no) throws Exception{
		client.update("tech.updateHit", tec_no);
	}

}
