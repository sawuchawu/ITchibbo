package brd.dao;

import java.util.HashMap;
import java.util.List;

import qna.bean.QnaBean;
import reply.bean.ReplyBean;
import brd.bean.BoardBean;

import com.ibatis.sqlmap.client.SqlMapClient;

public class BrdDao {
	private static SqlMapClient client;	
	static{
		client=dao.ServiceUtil.getSqlMapClient();
	}
	public static void insertBrd(BoardBean bean)throws Exception{
		try {
			client.startTransaction();
			client.insert("brd.insertBrd", bean);
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
	public static List<BoardBean>selectBrd(HashMap<Object, Object>map) throws Exception{
		return client.queryForList("brd.selectBrd",map);
	}
	
	public static BoardBean selectBrdInfo(int no) throws Exception {
		return (BoardBean) client.queryForObject("brd.selectBrdInfo", no);
	}

	
	
	public static Integer getTotalRow() throws Exception{
		return (Integer) client.queryForObject("brd.getTotalRow");
	}
	
	public static void brdUpdateData(BoardBean bean){
		try {
			client.startTransaction();
			client.update("brd.brdUpdateData",bean);
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
	
	
	
	public static void deleteBrd(int brd_no){
		try {
			client.startTransaction();
			client.delete("brd.deleteBrd", brd_no);
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
	
	public static Integer getSequence()throws Exception{
		return (Integer)client.queryForObject("brd.getSequence");
	}
	
	
	public static void insertReply(ReplyBean bean)throws Exception{
		client.insert("brd.insertReply",bean);
	}
	
	public static List<ReplyBean>selectReply(int brd_no)throws Exception{
		return client.queryForList("brd.selectReply", brd_no);
	}
	
	
	
	public static void updateBrdHit(int brd_no)throws Exception{
		client.update("brd.updateBrdHit", brd_no);
	}
	
	
	public static void deleteReply(int rep_no) {
		try {
			client.startTransaction();
			client.delete("brd.deleteReply", rep_no);
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
	/*
	public static void deleteNews(int news_no) {
		try {
			client.startTransaction();
			client.delete("news.deleteNews", news_no);
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
		return (Integer) client.queryForObject("news.getTotalRow");
	}*/


}
