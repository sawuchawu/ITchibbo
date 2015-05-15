package myjsp.userPack;

import java.sql.*;
import java.util.*;

import javax.naming.*;
import javax.sql.DataSource;

import myjsp.followPack.Follow;
import myjsp.userPack.*;

public class UserBean {	//���� ����
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
	
	public boolean updateDB(User user) {	//DB���� ���� => ȸ����������
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
	public boolean updatePasswd(User user) {	//��й�ȣ ����
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
	public boolean deleteDB(String id) {	//ȸ�� Ż��
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
	public boolean insertDB(User user) {	//ȸ������
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
	public boolean checkId(String id){	//ID �ߺ�üũ
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
	public String searchId(String name, String rrNum){		//ID ã��
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
	public int checkDB(String id, String passwd){		//�α��� üũ
		connect();
		
		String sql = "select * from usertable where id=?";
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()){
				if(rs.getString("passwd").equals(passwd)){
					disconnect();
					return 0;	//������ �α���
				}else{
					disconnect();
					return 2;	//��й�ȣ ����
				}
			}
		}
		catch(Exception e){
			e.printStackTrace();
			return 1;			//����ó�� ����
			
		}
		disconnect();
		return 1;			//ID ����
	}
	public boolean lost_checkDB(String id, String name, String rrnum){	//��й�ȣ ã��
		connect();
		
		String sql = "select * from usertable where id=?";
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()){
				if(rs.getString("name").equals(name) && rs.getString("rrnum").equals(rrnum)){
					disconnect();
					return true;	//������ ã��
				}
			}
		}
		catch(Exception e){
			e.printStackTrace();
			return false;			//����ó�� ����
			
		}
		disconnect();
		return false;			//�߸��� ����
	}
	
	public User getDB(String id) {	//ȸ�� ���� ��ȸ
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
	public ArrayList getDBallList(String id) { //��� ��ü ���(guestbook_list)�� ���
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