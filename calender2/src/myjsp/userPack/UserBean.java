package myjsp.userPack;

import java.sql.*;
import java.util.*;

import javax.naming.*;
import javax.sql.DataSource;

import myjsp.followPack.Follow;
import myjsp.userPack.*;

public class UserBean {	//빈즈 파일
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
	
	public boolean updateDB(User user) {	//DB내용 수정 => 회원정보수정
		connect();
		
		String sql ="update usertable set passwd=?, name=?, rrnum=?, tel=?, mailnum=?, address=?, email=?, domain=?, forgetq=?, forgeta=? where id=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,user.getPasswd());
			pstmt.setString(2,user.getName());
			pstmt.setString(3,user.getRrnum());
			pstmt.setString(4,user.getTel());
			pstmt.setString(5,user.getMailnum());
			pstmt.setString(6,user.getAddress());
			pstmt.setString(7,user.getEmail());
			pstmt.setString(8,user.getDomain());
			pstmt.setString(9,user.getForgetq());
			pstmt.setString(10,user.getForgeta());
			pstmt.setString(11,user.getId());
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
	public boolean updatePasswd(User user) {	//비밀번호 수정
		connect();
		
		String sql ="update usertable set passwd=? where id=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,user.getPasswd());
			pstmt.setString(2,user.getId());
			pstmt.executeUpdate();
			return true;
		}
		catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	public boolean deleteDB(String id) {	//회원 탈퇴
		connect();
		
		String sql ="delete from usertable where id=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,id);
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
	public boolean insertDB(User user) {	//회원가입
		connect();
		
		String sql ="insert into usertable(id,passwd,name,rrnum,tel,mailnum,address,email,domain,forgetq,forgeta) values(?,?,?,?,?,?,?,?,?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,user.getId());
			pstmt.setString(2,user.getPasswd());
			pstmt.setString(3,user.getName());
			pstmt.setString(4,user.getRrnum());
			pstmt.setString(5,user.getTel());
			pstmt.setString(6,user.getMailnum());
			pstmt.setString(7,user.getAddress());
			pstmt.setString(8,user.getEmail());
			pstmt.setString(9,user.getDomain());
			pstmt.setString(10,user.getForgetq());
			pstmt.setString(11,user.getForgeta());
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
	public boolean checkId(String id){	//ID 중복체크
		connect();
		
		String sql = "select id from usertable";
		try{
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				if(rs.getString("id").equals(id)){
					disconnect();
					return true;
				}
			}
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return false;
	}
	public String searchId(String name, String rrNum){		//ID 찾기
		connect();
		
		String sql = "select * from usertable where name=?";
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,name);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()){
				if(rs.getString("rrNum").equals(rrNum)){
					
					return rs.getString("id");
				}
			}
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
		return null;
		
	}
	public int checkDB(String id, String passwd){		//로그인 체크
		connect();
		
		String sql = "select * from usertable where id=?";
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()){
				if(rs.getString("passwd").equals(passwd)){
					disconnect();
					return 0;	//정상적 로그인
				}else{
					disconnect();
					return 2;	//비밀번호 오류
				}
			}
		}
		catch(Exception e){
			e.printStackTrace();
			return 1;			//예외처리 오류
			
		}
		disconnect();
		return 1;			//ID 오류
	}
	public boolean lost_checkDB(String id, String name, String rrnum){	//비밀번호 찾기
		connect();
		
		String sql = "select * from usertable where id=?";
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()){
				if(rs.getString("name").equals(name) && rs.getString("rrnum").equals(rrnum)){
					disconnect();
					return true;	//정상적 찾기
				}
			}
		}
		catch(Exception e){
			e.printStackTrace();
			return false;			//예외처리 오류
			
		}
		disconnect();
		return false;			//잘못된 정보
	}
	
	public User getDB(String id) {	//회원 정보 조회
		connect();
		
		String sql = "select * from usertable where id=?";
		User user = new User();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,id);
			ResultSet rs = pstmt.executeQuery();
			
			rs.next();
			user.setId(rs.getString("id"));
			user.setPasswd(rs.getString("passwd"));
			user.setName(rs.getString("name"));
			user.setRrnum(rs.getString("rrnum"));
			user.setTel(rs.getString("tel"));
			user.setMailnum(rs.getString("mailnum"));
			user.setAddress(rs.getString("address"));
			user.setEmail(rs.getString("email"));
			user.setDomain(rs.getString("domain"));
			user.setForgetq(rs.getString("forgetq"));
			user.setForgeta(rs.getString("forgeta"));
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return user;
	}
	public ArrayList getDBallList(String id) { //목록 전체 출력(guestbook_list)에 사용
		  connect();
		  ArrayList<User> datas = new ArrayList<User>();
		  
		  String sql = "select * from usertable where id like ?";
		  
		  try {
		   pstmt = conn.prepareStatement(sql);
		   pstmt.setString(1,id);
		   ResultSet rs = pstmt.executeQuery();
		   while(rs.next()) {
		    User user = new User();
		    user.setId(rs.getString("id"));
		    user.setPasswd(rs.getString("passwd"));
		    user.setName(rs.getString("name"));
		    user.setRrnum(rs.getString("rrnum"));
		    user.setTel(rs.getString("tel"));
		    user.setMailnum(rs.getString("mailnum"));
		    user.setAddress(rs.getString("address"));
		    user.setEmail(rs.getString("email"));
		    user.setDomain(rs.getString("domain"));
		    user.setForgetq(rs.getString("forgetq"));
		    user.setForgeta(rs.getString("forgeta"));
		    datas.add(user);
		    
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
	
}