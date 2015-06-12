package portfolio.dao;

import java.util.HashMap;
import java.util.List;

import org.eclipse.jdt.internal.compiler.ast.ThrowStatement;

import portfolio.bean.PortfolioBean;
import reply.bean.ReplyBean;

import com.ibatis.sqlmap.client.SqlMapClient;

public class PortfolioDao {

	private static SqlMapClient client;	
	static{
		client=dao.ServiceUtil.getSqlMapClient();
	}
	
	public static void insertPortfolio(PortfolioBean bean)throws Exception {
		client.insert("portfolio.insertPortfolio", bean);
	}
	
	public static List<PortfolioBean> selectPortfolio(HashMap<Object, Object> map) throws Exception {
		
		return client.queryForList("portfolio.selectPortfolio",map);
		
	}
	
	public static PortfolioBean selectPortfolioInfo(int por_no) throws Exception {
		return (PortfolioBean)client.queryForObject("portfolio.selectPortfolioInfo", por_no);
	}
	
	public static void updatePortfolio(PortfolioBean bean) throws Exception {
		try {
			client.startTransaction();
			client.update("portfolio.updatePortfolio", bean);
			client.commitTransaction();
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
	
	public static void portfolioDelete(int por_no) throws Exception {
		try {
			client.startTransaction();
			System.out.println(por_no);
			client.delete("portfolio.deletePortfolio", por_no);
			client.commitTransaction();			
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
	
	public static Integer getTotalRow() throws Exception {
		return (Integer)client.queryForObject("portfolio.getTotalRow");
	}
	
	public static Integer getSequence() throws Exception {
		return (Integer)client.queryForObject("portfolio.getSequence");
	}	
	
	public static void insertReply(ReplyBean bean) throws Exception {
		client.insert("portfolio.insertReply", bean);
	}
	
	public static List<ReplyBean> selectPortfolioReply(int por_no) throws Exception {
		return client.queryForList("portfolio.selectPortfolioReply", por_no);
	}
	
	public static void updateHit(int por_no) throws Exception {
		client.update("portfolio.updateHit", por_no);
	}
	public static List<PortfolioBean> selectPortfolioSearchJob(String por_job) throws Exception {
		return client.queryForList("portfolio.selectPortfolioSearchJob", por_job);
	}
}
