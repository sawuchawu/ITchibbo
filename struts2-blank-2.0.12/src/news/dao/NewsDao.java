package news.dao;

import java.util.HashMap;
import java.util.List;

import reply.bean.ReplyBean;
import news.bean.NewsBean;

import com.ibatis.sqlmap.client.SqlMapClient;

public class NewsDao {

	private static SqlMapClient client;
	static {
		client = dao.ServiceUtil.getSqlMapClient();
	}

	public static void insertNews(NewsBean bean) throws Exception {
		try {
			client.startTransaction();
			client.insert("news.insertNews", bean);
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
			}
		}
	}

	public static List<NewsBean> selectNews(HashMap<Object, Object> map)
			throws Exception {
		return client.queryForList("news.selectNews", map);
	}

	public static NewsBean selectNewsInfo(int no) throws Exception {
		return (NewsBean) client.queryForObject("news.selectNewsInfo", no);
	}

	public static void newsUpdateData(NewsBean bean) {
		try {
			client.startTransaction();
			client.update("news.newsUpdateData", bean);
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
	}
	
	
	public static void updateNewsHit(int news_no)throws Exception{
		client.update("news.updateNewsHit", news_no);
	}
	public static Integer getSequence()throws Exception{
		return (Integer)client.queryForObject("news.getSequence");
	}


	public static void insertReply(ReplyBean bean)throws Exception{
		client.insert("news.insertReply",bean);
	}
	
	public static List<ReplyBean>selectReply(int news_no)throws Exception{
		return client.queryForList("news.selectReply", news_no);
	}
	/*public static List<ReplyBean>selectReply(int brd_no)throws Exception{
		return client.queryForList("brd.selectReply", brd_no);
	}*/
	public static void deleteReply(int rep_no) {
		try {
			client.startTransaction();
			client.delete("news.deleteReply", rep_no);
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
