package myjsp.rFollowtPack;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import myjsp.followPack.Follow;
import myjsp.userPack.User;

public class rFollowBean {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		void connect() {	//��� ����
			try {
				Context initContext = new InitialContext();
				Context envContext = (Context) initContext.lookup("java:/comp/env");
				DataSource ds = (DataSource) envContext.lookup("jdbc/xe");
				conn = ds.getConnection();
			}
			catch (Exception e) {
				e.printStackTrace();
			}
		}
		void disconnect() {	//��� ����
			try {
				if(conn != null){
					conn.close();
				}
			}
			catch (SQLException e) {
				e.printStackTrace();
			}
		}
		public int getrSeq() {	//ģ�� ��û seq �޾ƿ���
			connect();
			
			String sql ="select rseq from requestfollow order by rseq desc";
			int seqNum = 1;
			try {
				pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
			
				rs.next();
				if(rs != null)
					seqNum = rs.getInt("rseq")+1;
					
				rs.close();
				
			}
			catch (SQLException e) {
				e.printStackTrace();
				
			}
			finally {
				disconnect();
			}
			
			return seqNum;
		}
	
		public boolean rInsertDB(String id, String fId) {	//ģ����û �޼ҵ�
			int rNum = getrSeq();
			connect();
			String sql ="insert into requestfollow(rseq, id, fid, state) values(?,?,?,?)";
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1,rNum);
				pstmt.setString(2,id);
				pstmt.setString(3,fId);
				pstmt.setInt(4,0);
						
				pstmt.executeUpdate();
				
			} catch (SQLException e) {
				e.printStackTrace();
				return false;
			}
			finally {
				disconnect();
			}
			return true;
		}
		public ArrayList getDBrList(String id) {	//ģ�� ��û ����Ʈ 
			connect();
			ArrayList<rFollow> datas = new ArrayList<rFollow>();
			
			String sql = "select * from requestfollow where fid= '"+id +"' and state = 0 order by rseq desc ";
			try {
				pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				while(rs.next()) {
					rFollow rfollow = new rFollow();
					rfollow.setrSeq(rs.getInt("rseq"));
					rfollow.setId(rs.getString("id"));
					rfollow.setfId(rs.getString("fid"));
					rfollow.setState(rs.getInt("state"));
					datas.add(rfollow);
				}
				rs.close();
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
			finally {
				disconnect();
			}
			return datas;
		}
		public boolean updateStateDB(int rseq) {	//DB���� ���� => ȸ����������
			connect();
			
			String sql ="update requestfollow set state=? where rseq=?";
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1,1);
				pstmt.setInt(2,rseq);
				pstmt.executeUpdate();
			}
			catch (SQLException e) {
				e.printStackTrace();
				return false;
			}
			finally {
				disconnect();
			}
			return true;
		}
		
		public void deleteDBid(String id) {	//�Խñ� ����(bbs_seq����)
			connect();
			
			String sql ="delete from requestfollow where id=? or fid=? ";
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,id);
				pstmt.setString(2,id);
				pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			finally {
				disconnect();
			}
		}
		
}
