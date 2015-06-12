package qna.dao;

import java.util.HashMap;
import java.util.List;

import qna.bean.QnaBean;
import reply.bean.ReplyBean;

import com.ibatis.sqlmap.client.SqlMapClient;

public class QnaDao {

	
	private static SqlMapClient client;	
	static{
		client=dao.ServiceUtil.getSqlMapClient();
	}
	
	
	public static List<ReplyBean>selectReply(int qna_no)throws Exception{
		return client.queryForList("qna.selectReply", qna_no);
	}
	
	public static void insertReply(ReplyBean bean)throws Exception{
		client.insert("qna.insertReply",bean);
	}
	
	public static Integer getSequence()throws Exception{
		return (Integer)client.queryForObject("qna.getSequence");
	}
	
	public static void insertQna(QnaBean bean)throws Exception{
		try {
			client.startTransaction();
			client.insert("qna.insertQna", bean);
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

	/*public static List<QnaBean>selectQna()throws Exception{
		return client.queryForList("qna.selectQna");
	}*/
	public static List<QnaBean> selectQna(HashMap<Object, Object>map) throws Exception {
		return client.queryForList("qna.selectQna", map);
	}
	
	public static Integer getTotalRow() throws Exception{
		return (Integer) client.queryForObject("qna.getTotalRow");
	}
	
	public static QnaBean selectQnaInfo(int no)throws Exception{
		return (QnaBean)client.queryForObject("qna.selectQnaInfo",no);
	}
	public static void qnaUpdateData(QnaBean bean){
		try {
			client.startTransaction();
			client.update("qna.qnaUpdateData",bean);
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
	
	
	public static void deleteQna(int qna_no){
		try {
			client.startTransaction();
			client.delete("qna.deleteQna", qna_no);
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

	public static void updateQnaHit(int qna_no)throws Exception{
		client.update("qna.updateQnaHit", qna_no);
	}
	
	
	public static void deleteReply(int rep_no) {
		try {
			client.startTransaction();
			client.delete("qna.deleteReply", rep_no);
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
}
