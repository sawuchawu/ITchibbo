<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"  import="myjsp.userPack.*"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>

<!-- errorPage="calendar_error.jsp" -->
<html>
<head>
<title>Insert title here</title>
</head>
<body>

<%-- <jsp:useBean id="gb" class="pack.GuestBean"/>
<jsp:useBean id="guestbook" class="pack.GuestBook"/>
<jsp:setProperty name="guestbook" property="*"/>
<jsp:useBean id="ub" class="pack.UserBean"></jsp:useBean>
<jsp:useBean id="userbook" class="pack.UserBook"/>
<jsp:setProperty name="userbook" property="*"/>
<jsp:useBean id="bb" class="pack.BbsBean"/>
<jsp:useBean id="bbsbook" class="pack.BbsBook"/>
<jsp:setProperty name="bbsbook" property="*"/>
 --%>
 <jsp:useBean id="ub" class="myjsp.userPack.UserBean"/>
 <jsp:useBean id="user" class="myjsp.userPack.User"/>
 <jsp:useBean id="fb" class="myjsp.followPack.FollowBean"/>
 <jsp:useBean id="follow" class="myjsp.followPack.Follow"/>
 <jsp:useBean id="sb" class="myjsp.schePack.ScheBean"/>
 <jsp:useBean id="schedule" class="myjsp.schePack.Schedule"/>
 <jsp:useBean id="mv" class="myjsp.calPack.MiniViewHandler"/>
 <jsp:useBean id="rfb" class="myjsp.rFollowtPack.rFollowBean"/>
 <jsp:useBean id="rfollow" class="myjsp.rFollowtPack.rFollow"/>
 

 
 <jsp:setProperty property="*" name="schedule"/>
 <jsp:setProperty property="*" name="follow"/>
 <jsp:setProperty property="*" name="user"/>
 <jsp:setProperty property="*" name="mv" />
 <jsp:setProperty property="*" name="rfollow" />
 
 <% 
 	Calendar today = Calendar.getInstance();
	String action = request.getParameter("action");		//���� request
	System.out.println("action = "+action);				//� �������� �ý��� ���
	/* action�� list(�Խñ۸��) �϶� */
	if(action.equals("list")) {
		response.sendRedirect("calendar_list.jsp");
	}
	/* action�� mybooklis(���� �� �Խñ� ��ϸ�) �϶� */
	else if(action.equals("mybooklist")) {			
		response.sendRedirect("calendar_mybook_list.jsp");
	}
	/* action�� join(ȸ������)�϶� */
	else if(action.equals("join")){				
		user.setRrnum(request.getParameter("s_rrnum") + request.getParameter("e_rrnum"));
		user.setMailnum(request.getParameter("s_mailnum") + request.getParameter("e_mailnum"));
		
		if(ub.insertDB(user)){
			out.println("<script>alert('ȯ���մϴ�!!')</script>");
			out.println("<script>location.href=\"calendar_login.jsp\"</script>");
		}
		else
			throw new Exception("DB ���� ����");
	}
	/* action�� collision(ID�ߺ��˻�)�϶� */
	else if(action.equals("collision")){
		if(ub.checkId(user.getId())){
			session.setAttribute("result","�ߺ��� ���̵��Դϴ�.");	
		}else{
			session.setAttribute("result",user.getId()+"�� ��� ������ ���̵��Դϴ�");
		}
		response.sendRedirect("calendar_collision.jsp");
		
		
	}
	/* action�� update_user(ȸ������ ����)�϶� */
	else if(action.equals("update_user")){			
		user.setId((String)session.getAttribute("login_id"));
 		user.setPasswd(request.getParameter("passwd"));
		user.setName(request.getParameter("name"));
		user.setRrnum(request.getParameter("s_rrnum") + request.getParameter("e_rrnum"));
		user.setTel(request.getParameter("tel"));
		user.setMailnum(request.getParameter("s_mailnum") + request.getParameter("e_mailnum"));
		user.setAddress(request.getParameter("address"));
		user.setEmail(request.getParameter("email"));
		user.setDomain(request.getParameter("domain"));
		user.setForgetq(request.getParameter("forgetq"));
		user.setForgeta(request.getParameter("forgeta")); 
		if(ub.updateDB(user)){
			System.out.println("����Ϸ�");
			response.sendRedirect("calendar_view.jsp");
		}
		else
			throw new Exception("DB ����");
	}
	/* action�� login(�α���)�϶� */
	else if(action.equals("login")){				//�α���
		int check = ub.checkDB(request.getParameter("login_id"), request.getParameter("login_passwd"));
		if(check == 0) {
			user = ub.getDB(request.getParameter("login_id"));
			session.setAttribute("login_id",user.getId());
			session.setAttribute("login_name",user.getName());
			session.setAttribute("login_passwd",request.getParameter("login_passwd"));
			session.setAttribute("year",today.get(Calendar.YEAR));
			session.setAttribute("month",today.get(Calendar.MONTH)+1);
			out.println("<script>alert('ȯ���մϴ�!!!')</script>"); 
			out.println("<script>location.href=\"calendar_view.jsp\"</script>");
		}
		else if(check == 1){
			out.println("<script>alert('ID�� Ȯ���� �ּ���!!!')</script>");
			out.println("<script>history.go(-1)</script>");
		}else if(check == 2){
			out.println("<script>alert('��й�ȣ�� Ȯ���� �ּ���!!!')</script>");
			out.println("<script>history.go(-1)</script>");
		}		
		else
			throw new Exception("DB ���� ����");
	}

	/* action�� lost_id(IDã��)�϶� */
	else if(action.equals("lost_id")){				
		String rrnum = request.getParameter("s_rrnum") + request.getParameter("e_rrnum");
		String l_id = ub.searchId(request.getParameter("name"), rrnum);
		if(l_id != null){
			session.setAttribute("l_id", l_id);
			out.println("<script>location.href=\"calendar_login2.jsp?\"</script>");
		}
		else{
			out.println("<script>alert('������ ������ ��ġ���� �ʽ��ϴ�.')</script>");
			out.println("<script>location.href=\"calendar_lost_id.jsp\"</script>");
		}
	}

	/* action�� lost_passwd(��й�ȣ ã��1)�϶� */
	else if(action.equals("lost_passwd")){
		String rrnum = request.getParameter("s_rrnum") + request.getParameter("e_rrnum");
		boolean check = ub.lost_checkDB(request.getParameter("id"), request.getParameter("name"), rrnum);
		if(check == true) {
			User lostUser = ub.getDB(request.getParameter("id"));
			session.setAttribute("lostUser",lostUser);
			
 			out.println("<script>location.href=\"calendar_lost_passwd2.jsp\"</script>");
		}else{
			out.println("<script>alert('������ ������ ��ġ���� �ʽ��ϴ�.')</script>");
			out.println("<script>location.href=\"calendar_lost_passwd.jsp\"</script>");
		}
	}
	
	// action�� lost_passwd2(��й�ȣ ã��2)�϶�
	else if(action.equals("lost_passwd2")){
		User lostUser = (User)session.getAttribute("lostUser");
		System.out.println(request.getParameter("forgeta"));
		if(lostUser.getForgeta().equals(request.getParameter("forgeta"))) {
 			out.println("<script>location.href=\"calendar_lost_passwd3.jsp\"</script>");
		}else{
			out.println("<script>alert('������ ������ ��ġ���� �ʽ��ϴ�.')</script>");
			out.println("<script>location.href=\"calendar_lost_passwd2.jsp\"</script>");
		}
	}
	// action�� lost_passwd3(��й�ȣ ã��3)�϶�
	else if(action.equals("lost_passwd3")){
		User lostUser = (User)session.getAttribute("lostUser");
		lostUser.setPasswd(request.getParameter("passwd"));
		if(ub.updatePasswd(lostUser)){
			out.println("<script>alert('��й�ȣ�� �����Ǿ����ϴ�.')</script>");
			out.println("<script>location.href=\"calendar_login.jsp\"</script>");
		}
		else{
			throw new Exception("DB ���� ����");
		}
	} 
	if(action.equals("myear")){
		mv.setYear(mv.getYear()-1);
		session.setAttribute("year",Integer.parseInt(session.getAttribute("year").toString())-1);
		response.sendRedirect("calendar_view.jsp");
	}else if(action.equals("pyear")){
		session.setAttribute("year",Integer.parseInt(session.getAttribute("year").toString())+1);
		response.sendRedirect("calendar_view.jsp");
	}else if(action.equals("mmonth")){
		if(Integer.parseInt(session.getAttribute("month").toString())!=1){
			session.setAttribute("month",Integer.parseInt(session.getAttribute("month").toString())-1);
		}else{
			session.setAttribute("month",12);
			session.setAttribute("year",Integer.parseInt(session.getAttribute("year").toString())-1);
		}
		response.sendRedirect("calendar_view.jsp");
	}else if(action.equals("pmonth")){
		if(Integer.parseInt(session.getAttribute("month").toString())!=12){
			session.setAttribute("month",Integer.parseInt(session.getAttribute("month").toString())+1);
		}else{
			session.setAttribute("month",1);
			session.setAttribute("year",Integer.parseInt(session.getAttribute("year").toString())+1);
		}
		response.sendRedirect("calendar_view.jsp");
	
	}else if(action.equals("insert_Sche")) {
		int sYear = Integer.parseInt(request.getParameter("sYear"));  
		int sMonth = Integer.parseInt(request.getParameter("sMonth"));
		int sDay = Integer.parseInt(request.getParameter("sDay"));
		Date nDate;
		java.sql.Date sDate;
		java.sql.Date eDate;
		System.out.println(request.getParameter("title"));
		if(request.getParameter("title").equals("")){
			out.println("<script>alert('������ �Է��ϼ���!!!')</script>");
			out.println("<script>history.go(-1)</script>");			
		}
			nDate = new Date(sYear-1900,sMonth-1,sDay);
			sDate = new java.sql.Date(nDate.getTime());
		
		int eYear = Integer.parseInt(request.getParameter("eYear"));  
		int eMonth = Integer.parseInt(request.getParameter("eMonth"));
		int eDay = Integer.parseInt(request.getParameter("eDay"));
		nDate = new Date(eYear-1900,eMonth-1,eDay);
		eDate = new java.sql.Date(nDate.getTime());
		schedule.setId((String)session.getAttribute("login_id"));
		schedule.setsDate((Date)sDate);
		schedule.seteDate((Date)eDate);
		System.out.println(sDate.compareTo(eDate));
		if(sDate.compareTo(eDate) > 0){
			System.out.println("if");
			out.println("<script>alert('���۽ð��� ����ð����� �ռ��ֽ��ϴ�!!!')</script>");
			out.println("<script>history.go(-1)</script>");			
		}
		else{
			System.out.println("else");
			boolean ch;
			if( ch = sb.insertDB(schedule)) {
				System.out.println(ch);
				response.sendRedirect("calendar_view.jsp");
			}
			else
				throw new Exception("DB �Է¿���");			
		}
		
	}
	// action�� delete(�Խñ� ����)�϶�
	else if(action.equals("sche_del")) {
		//if(schedule.getId().equals((String)session.getAttribute("login_id"))) {
			
			int seqNum = Integer.parseInt(request.getParameter("seqNum"));
			System.out.println(seqNum);
			if(sb.deleteDB(seqNum)){
				response.sendRedirect("calendar_view.jsp");

			}
			else
				throw new Exception("DB ���� ����");
	}
	
	//action�� update(�Խñ� ����)�϶� 
	else if(action.equals("sche_edit")) {
		int sYear = Integer.parseInt(request.getParameter("sYear"));  
		int sMonth = Integer.parseInt(request.getParameter("sMonth"));
		int sDay = Integer.parseInt(request.getParameter("sDay"));
		Date nDate;
		java.sql.Date sDate;
		java.sql.Date eDate;
		System.out.println(request.getParameter("title"));
		if(request.getParameter("title").equals("")){
			out.println("<script>alert('������ �Է��ϼ���!!!')</script>");
			out.println("<script>history.go(-1)</script>");			
		}
			nDate = new Date(sYear-1900,sMonth-1,sDay);
			sDate = new java.sql.Date(nDate.getTime());
		
		int eYear = Integer.parseInt(request.getParameter("eYear"));  
		int eMonth = Integer.parseInt(request.getParameter("eMonth"));
		int eDay = Integer.parseInt(request.getParameter("eDay"));
		nDate = new Date(eYear-1900,eMonth-1,eDay);
		eDate = new java.sql.Date(nDate.getTime());
		schedule.setId((String)session.getAttribute("login_id"));
		schedule.setsDate((Date)sDate);
		schedule.seteDate((Date)eDate);
		System.out.println(sDate.compareTo(eDate));
		if(sDate.compareTo(eDate) > 0){
			out.println("<script>alert('���۽ð��� ����ð����� �ռ��ֽ��ϴ�!!!')</script>");
			out.println("<script>history.go(-1)</script>");			
		}
		else{
			System.out.println("else");
			if(sb.updateDB(schedule)){
				System.out.println("�ȵǳ�?");
				response.sendRedirect("calendar_view.jsp");
				
			}
			else
				throw new Exception("DB ���ſ���");
		}
	}
	
	else if(action.equals("insert_friend")) {
	
		
		if(fb.insertDB((String)session.getAttribute("login_id") , request.getParameter("id")) && // ģ���߰��� ���ΰ���..
				fb.insertDB(request.getParameter("id"),(String)session.getAttribute("login_id"))) {
			//requestfollow ���̺��� ģ������ state�� 0->1 �� ����.
			
			rfb.updateStateDB(Integer.parseInt(request.getParameter("rseq")));
			response.sendRedirect("calendar_view.jsp");
		
		}
		else
			throw new Exception("DB ���� ����");
	}
	
	
	else if(action.equals("delete_friend")) {
		
		
		if(fb.deleteDB((String)session.getAttribute("login_id") , request.getParameter("id"))&&
				fb.deleteDB(request.getParameter("id"),(String)session.getAttribute("login_id") )) {
			response.sendRedirect("calendar_view.jsp");
		}
		else
			throw new Exception("DB ���� ����");
	}
	
	else if(action.equals("request_friend")) {
		
		System.out.println("���� session id : "+ (String)session.getAttribute("login_id"));
		System.out.println("���� session id : "+  request.getParameter("id"));
		if(rfb.rInsertDB((String)session.getAttribute("login_id") , request.getParameter("id"))) {
			response.sendRedirect("calendar_view.jsp");
		}
		
		else
			throw new Exception("DB ���� ����");
	}
	else if(action.equals("reject_friend")) {	
		
		//requestfollow ���̺��� ģ������ state�� 0->1 �� ����.
	
	rfb.updateStateDB(Integer.parseInt(request.getParameter("rseq")));
	response.sendRedirect("calendar_view.jsp");
	}
		
	else if(action.equals("delete_user")){			
		int check = ub.checkDB(request.getParameter("delete_id"), request.getParameter("delete_passwd"));
		if(check == 0) {
			out.println("<script>alert('�����Ǿ����ϴ�!!!')</script>");
			fb.deleteDBid(request.getParameter("delete_id"));
			rfb.deleteDBid(request.getParameter("delete_id"));
			sb.deleteDBid(request.getParameter("delete_id"));
			if(ub.deleteDB(request.getParameter("delete_id"))) 
				response.sendRedirect("calendar_login.jsp");
			else
				throw new Exception("DB ���� ����");
		}
		else if(check == 1){
			out.println("<script>alert('ID�� Ȯ���� �ּ���!!!')</script>");
			out.println("<script>history.go(-1)</script>");
		}else if(check == 2){
			out.println("<script>alert('��й�ȣ�� Ȯ���� �ּ���!!!')</script>");
			out.println("<script>history.go(-1)</script>");
		}		
		else
			throw new Exception("DB ���� ����");
	}
	
	
	else {
		out.println("<script>alert('action �Ķ���͸� Ȯ���� �ּ���!!!')</script>");
	}
		
		
	
	
	/*
	// action�� insert(�Խñ� �߰�)�϶� 
	else if(action.equals("insert")) {				
		bbsbook.setBbs_id((String)(session.getAttribute("login_id")));
		bbsbook.setBbs_name((String)(session.getAttribute("login_name")));
		if(bb.insertDB(bbsbook)) {
			response.sendRedirect("guestbook_list.jsp");
		}
		else
			throw new Exception("DB �Է¿���");
	}

	// action�� delete(�Խñ� ����)�϶�
	else if(action.equals("sche_del")) {
		if(bbsbook.getBbs_id().equals((String)session.getAttribute("login_id"))) {
			int bbs_seq = bbsbook.getBbs_seq();
			rb.deleteAllDB(bbs_seq);
			bb.deleteDB(bbs_seq);
			response.sendRedirect("guestbook_list.jsp");
		}
		else
			throw new Exception("DB ���� ����");
	}
	*/
	
	// action�� delete_user(ȸ��Ż��)�϶�
	
	/*
		// action�� view(�Խñ� ���뺸��)�϶� 
	else if(action.equals("view")){					
		bbsbook = (BbsBook)bb.getDB(Integer.parseInt(request.getParameter("bbs_seq")));
		session.setAttribute("bbsbook",bbsbook);
		response.sendRedirect("guestbook_view.jsp");
		bb.updateHit(bbsbook.getBbs_seq());
	}
	*/
	
	// action�� ripple(��� �ޱ�)�϶� 
	
	/*
	else if(action.equals("ripple")){				
		request.setCharacterEncoding("euc-kr");
		ripplebook.setRipple_id((String)session.getAttribute("login_id"));
		ripplebook.setRipple_name((String)session.getAttribute("login_name"));
		ripplebook.setRipple_bbs_seq(bbsbook.getBbs_seq());
		if(rb.insertDB(ripplebook)){
			response.sendRedirect("guestbook_view.jsp");
		}
		else{
			throw new Exception("DB ���� ����");
		}
	}
	// action�� del_ripple(��� ����)�϶�
	else if(action.equals("del_ripple")){
		request.setCharacterEncoding("euc-kr");
		rb.deleteDB(ripplebook.getRipple_seq());
		response.sendRedirect("guestbook_view.jsp");
	}
	
	*/
	
%>
</body>
</html>