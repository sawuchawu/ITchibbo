package myjsp.schePack;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import myjsp.schePack.*;


public class ScheBean {
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
	public boolean insertDB(Schedule schedule) {	//게시글 등록
		int scheNum = getSeq();
		connect();
		String sql ="insert into Schedule(schenum,id,title,content,publish,sDate,eDate,type) values(?,?,?,?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,scheNum);
			pstmt.setString(2,schedule.getId());
			pstmt.setString(3,schedule.getTitle());
			pstmt.setString(4,schedule.getContent());
			pstmt.setString(5,schedule.getPublish());
			pstmt.setDate(6,(Date)schedule.getsDate());
			pstmt.setDate(7,(Date)schedule.geteDate());
			pstmt.setString(8,schedule.getType());
					
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
	
	public int getSeq() {	//게시글 등록
		connect();
		
		String sql ="select schenum from schedule order by schenum desc";
		int seqNum = 1;
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
		
			rs.next();
			if(rs != null)
				seqNum = rs.getInt("scheNum")+1;
				
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
	
	public Schedule getDB(int scheNum) {	//게시글 조회(bbs_seq조건)
		connect();
		
		String sql = "select * from schedule where schenum=?";
		Schedule schedule = new Schedule();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,scheNum);
			ResultSet rs = pstmt.executeQuery();
			
			rs.next();
			schedule.setScheNum(scheNum);
			schedule.setTitle(rs.getString("title"));
			schedule.setContent(rs.getString("content"));
			schedule.setId(rs.getString("id"));
			schedule.seteDate(rs.getDate("eDate"));
			schedule.setPublish(rs.getString("publish"));
			schedule.setsDate(rs.getDate("sDate"));
			schedule.setType(rs.getString("type"));
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return schedule;
	}
	
	public ArrayList getDBList() {	//목록 전체 출력(guestbook_list)에 사용
		connect();
		ArrayList<Schedule> datas = new ArrayList<Schedule>();
		
		String sql = "select * from schedule order by schenum desc ";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				Schedule schedule = new Schedule();
				schedule.setScheNum(rs.getInt("schenum"));
				schedule.setId(rs.getString("id"));
				schedule.setTitle(rs.getString("title"));
				schedule.setsDate(rs.getDate("sDate"));
				schedule.seteDate(rs.getDate("eDate"));
				schedule.setType(rs.getString("type"));
				schedule.setPublish(rs.getString("publish"));
				schedule.setContent(rs.getString("content"));
				datas.add(schedule);
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
	
	public ArrayList getDBmyList(String login_id) {	//목록 전체 출력(guestbook_list)에 사용
		connect();
		ArrayList<Schedule> datas = new ArrayList<Schedule>();
		
		String sql = "select * from schedule where id=? or (publish='친구 공개' and id = (select id from followtable where fid=? ))";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,login_id);
			pstmt.setString(2,login_id);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				Schedule schedule = new Schedule();
				schedule.setScheNum(rs.getInt("schenum"));
				schedule.setId(rs.getString("id"));
				schedule.setTitle(rs.getString("title"));
				schedule.setsDate(rs.getDate("sDate"));
				schedule.seteDate(rs.getDate("eDate"));
				schedule.setType(rs.getString("type"));
				schedule.setPublish(rs.getString("publish"));
				schedule.setContent(rs.getString("content"));
				datas.add(schedule);
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
	
	
	public boolean deleteDB(int seqNum) {	//게시글 삭제(bbs_seq조건)
		connect();
		
		String sql ="delete from schedule where schenum=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,seqNum);
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
	
	public boolean updateDB(Schedule schedule) {	//게시글 수정(bbs_seq 조건)
		connect();
			String sql ="update schedule set title=?, content=?, publish=?, sdate=?, edate=?, type=? where schenum=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,schedule.getTitle());
			pstmt.setString(2,schedule.getContent());
			pstmt.setString(3,schedule.getPublish());
			pstmt.setDate(4,(Date)schedule.getsDate());
			pstmt.setDate(5,(Date)schedule.geteDate());
			pstmt.setString(6,schedule.getType());
			pstmt.setInt(7,schedule.getScheNum());
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
	
	public void deleteDBid(String id) {	//게시글 삭제(bbs_seq조건)
		connect();
		
		String sql ="delete from schedule where id=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
	}
	
	

}
