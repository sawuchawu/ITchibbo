package review.dao;

import java.util.HashMap;
import java.util.List;

import reply.bean.ReplyBean;
import review.bean.ReviewBean;

import com.ibatis.sqlmap.client.SqlMapClient;



public class ReviewDao {
	
	private static SqlMapClient client;	
	static{
		client=dao.ServiceUtil.getSqlMapClient();
	}
	
	public static void insertReview(ReviewBean bean)throws Exception{
		try {
			client.startTransaction();
			client.insert("review.insertReview", bean);
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
	
	
	public static List<ReviewBean>selectReivew(HashMap<Object, Object>map)throws Exception{
		return client.queryForList("review.selectReview", map);
	}
	

	
	public static ReviewBean selectReviewInfo(int no)throws Exception{
		return (ReviewBean)client.queryForObject("review.selectReviewInfo",no);
	}
	
	public static void ReviewUpdateData(ReviewBean bean){
		try {
			client.startTransaction();
			client.update("review.ReviewUpdateData",bean);
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
	
	public static void deleteData(int rev_no){
		try {
			client.startTransaction();
			client.delete("review.deleteData", rev_no);
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
	
	public static void updateRevHit(int rev_no)throws Exception{
		client.update("review.updateRevHit", rev_no);
	}
	
	public static List<ReplyBean>selectReply(int rev_no)throws Exception{
		return client.queryForList("review.selectReply", rev_no);
	}

	public static Integer getTotalRow() throws Exception{
		return (Integer) client.queryForObject("review.getTotalRow");
	}
	
	public static void deleteReply(int rep_no) {
		try {
			client.startTransaction();
			client.delete("review.deleteReply", rep_no);
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
	
	public static Integer getSequence()throws Exception{
		return (Integer)client.queryForObject("review.getSequence");
	}
	
	public static void insertReply(ReplyBean bean)throws Exception{
		client.insert("review.insertReply",bean);
	}
}
