package myjsp.followPack;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import myjsp.schePack.Schedule;
import myjsp.userPack.User;

public class FollowBean {
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	void connect() {	//디비 연결
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
	void disconnect() {	//디비 접종
		try {
			if(conn != null){
				conn.close();
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList getDBList(String id) {	//목록 전체 출력(guestbook_list)에 사용
		connect();
		ArrayList<Follow> datas = new ArrayList<Follow>();
		
		String sql = "select * from followtable where id= '"+id +"' order by fseq desc ";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				Follow follow = new Follow();
				follow.setfSeq(rs.getInt("fseq"));
				follow.setId(rs.getString("id"));
				follow.setfId(rs.getString("fid"));
				follow.setRegDate(rs.getDate("regdate"));
				datas.add(follow);
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
	
	
	public int getSeq() {	//게시글 등록
		connect();
		
		String sql ="select fseq from followtable order by fseq desc";
		int seqNum = 1;
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
		
			rs.next();
			if(rs != null)
				seqNum = rs.getInt("fseq")+1;
				
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
	
	public int getrSeq() {	//친구 요청 seq 받아오기
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
	
	public boolean checkfId(String id, String fId) {	//목록 전체 출력(guestbook_list)에 사용
		connect();
		User user = new User();
		String sql = "select * from followtable where id= '"+id +"' and fId='"+fId+"'";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			rs.next();
			user.setId(rs.getString("id"));
			rs.close();			
			if(user.getId().equals(id))
				return true;			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return false;
	}
	
	public boolean deleteDB(String id, String fId) {	//친구 삭제
		connect();
		
		String sql ="delete from followtable where id=? and fid=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,id);
			pstmt.setString(2,fId);
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
	
	public boolean insertDB(String id, String fId) {	//친구 삭제
		int fNum = getSeq();
		connect();
		String sql ="insert into followtable(fseq, id, fid, regdate) values(?,?,?,sysdate)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,fNum);
			pstmt.setString(2,id);
			pstmt.setString(3,fId);
					
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
	
	public void deleteDBid(String id) {	//게시글 삭제(bbs_seq조건)
		connect();
		
		String sql ="delete from followtable where id=? or fid=?";
		
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
