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
	String action = request.getParameter("action");		//동작 request
	System.out.println("action = "+action);				//어떤 동작인지 시스템 출력
	/* action이 list(게시글목록) 일때 */
	if(action.equals("list")) {
		response.sendRedirect("calendar_list.jsp");
	}
	/* action이 mybooklis(내가 쓴 게시글 목록만) 일때 */
	else if(action.equals("mybooklist")) {			
		response.sendRedirect("calendar_mybook_list.jsp");
	}
	/* action이 join(회원가입)일때 */
	else if(action.equals("join")){				
		user.setRrnum(request.getParameter("s_rrnum") + request.getParameter("e_rrnum"));
		user.setMailnum(request.getParameter("s_mailnum") + request.getParameter("e_mailnum"));
		
		if(ub.insertDB(user)){
			out.println("<script>alert('환영합니다!!')</script>");
			out.println("<script>location.href=\"calendar_login.jsp\"</script>");
		}
		else
			throw new Exception("DB 삽입 오류");
	}
	/* action이 collision(ID중복검사)일때 */
	else if(action.equals("collision")){
		if(ub.checkId(user.getId())){
			session.setAttribute("result","중복된 아이디입니다.");	
		}else{
			session.setAttribute("result",user.getId()+"는 사용 가능한 아이디입니다");
		}
		response.sendRedirect("calendar_collision.jsp");
		
		
	}
	/* action이 update_user(회원정보 수정)일때 */
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
			System.out.println("저장완료");
			response.sendRedirect("calendar_view.jsp");
		}
		else
			throw new Exception("DB 오류");
	}
	/* action이 login(로그인)일때 */
	else if(action.equals("login")){				//로그인
		int check = ub.checkDB(request.getParameter("login_id"), request.getParameter("login_passwd"));
		if(check == 0) {
			user = ub.getDB(request.getParameter("login_id"));
			session.setAttribute("login_id",user.getId());
			session.setAttribute("login_name",user.getName());
			session.setAttribute("login_passwd",request.getParameter("login_passwd"));
			session.setAttribute("year",today.get(Calendar.YEAR));
			session.setAttribute("month",today.get(Calendar.MONTH)+1);
			out.println("<script>alert('환영합니다!!!')</script>"); 
			out.println("<script>location.href=\"calendar_view.jsp\"</script>");
		}
		else if(check == 1){
			out.println("<script>alert('ID를 확인해 주세요!!!')</script>");
			out.println("<script>history.go(-1)</script>");
		}else if(check == 2){
			out.println("<script>alert('비밀번호를 확인해 주세요!!!')</script>");
			out.println("<script>history.go(-1)</script>");
		}		
		else
			throw new Exception("DB 삭제 오류");
	}

	/* action이 lost_id(ID찾기)일때 */
	else if(action.equals("lost_id")){				
		String rrnum = request.getParameter("s_rrnum") + request.getParameter("e_rrnum");
		String l_id = ub.searchId(request.getParameter("name"), rrnum);
		if(l_id != null){
			session.setAttribute("l_id", l_id);
			out.println("<script>location.href=\"calendar_login2.jsp?\"</script>");
		}
		else{
			out.println("<script>alert('고객님의 정보가 일치하지 않습니다.')</script>");
			out.println("<script>location.href=\"calendar_lost_id.jsp\"</script>");
		}
	}

	/* action이 lost_passwd(비밀번호 찾기1)일때 */
	else if(action.equals("lost_passwd")){
		String rrnum = request.getParameter("s_rrnum") + request.getParameter("e_rrnum");
		boolean check = ub.lost_checkDB(request.getParameter("id"), request.getParameter("name"), rrnum);
		if(check == true) {
			User lostUser = ub.getDB(request.getParameter("id"));
			session.setAttribute("lostUser",lostUser);
			
 			out.println("<script>location.href=\"calendar_lost_passwd2.jsp\"</script>");
		}else{
			out.println("<script>alert('고객님의 정보가 일치하지 않습니다.')</script>");
			out.println("<script>location.href=\"calendar_lost_passwd.jsp\"</script>");
		}
	}
	
	// action이 lost_passwd2(비밀번호 찾기2)일때
	else if(action.equals("lost_passwd2")){
		User lostUser = (User)session.getAttribute("lostUser");
		System.out.println(request.getParameter("forgeta"));
		if(lostUser.getForgeta().equals(request.getParameter("forgeta"))) {
 			out.println("<script>location.href=\"calendar_lost_passwd3.jsp\"</script>");
		}else{
			out.println("<script>alert('고객님의 정보가 일치하지 않습니다.')</script>");
			out.println("<script>location.href=\"calendar_lost_passwd2.jsp\"</script>");
		}
	}
	// action이 lost_passwd3(비밀번호 찾기3)일때
	else if(action.equals("lost_passwd3")){
		User lostUser = (User)session.getAttribute("lostUser");
		lostUser.setPasswd(request.getParameter("passwd"));
		if(ub.updatePasswd(lostUser)){
			out.println("<script>alert('비밀번호가 수정되었습니다.')</script>");
			out.println("<script>location.href=\"calendar_login.jsp\"</script>");
		}
		else{
			throw new Exception("DB 수정 오류");
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
			out.println("<script>alert('제목을 입력하세요!!!')</script>");
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
			out.println("<script>alert('시작시간이 종료시간보다 앞서있습니다!!!')</script>");
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
				throw new Exception("DB 입력오류");			
		}
		
	}
	// action이 delete(게시글 삭제)일때
	else if(action.equals("sche_del")) {
		//if(schedule.getId().equals((String)session.getAttribute("login_id"))) {
			
			int seqNum = Integer.parseInt(request.getParameter("seqNum"));
			System.out.println(seqNum);
			if(sb.deleteDB(seqNum)){
				response.sendRedirect("calendar_view.jsp");

			}
			else
				throw new Exception("DB 삭제 오류");
	}
	
	//action이 update(게시글 수정)일때 
	else if(action.equals("sche_edit")) {
		int sYear = Integer.parseInt(request.getParameter("sYear"));  
		int sMonth = Integer.parseInt(request.getParameter("sMonth"));
		int sDay = Integer.parseInt(request.getParameter("sDay"));
		Date nDate;
		java.sql.Date sDate;
		java.sql.Date eDate;
		System.out.println(request.getParameter("title"));
		if(request.getParameter("title").equals("")){
			out.println("<script>alert('제목을 입력하세요!!!')</script>");
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
			out.println("<script>alert('시작시간이 종료시간보다 앞서있습니다!!!')</script>");
			out.println("<script>history.go(-1)</script>");			
		}
		else{
			System.out.println("else");
			if(sb.updateDB(schedule)){
				System.out.println("안되나?");
				response.sendRedirect("calendar_view.jsp");
				
			}
			else
				throw new Exception("DB 갱신오류");
		}
	}
	
	else if(action.equals("insert_friend")) {
	
		
		if(fb.insertDB((String)session.getAttribute("login_id") , request.getParameter("id")) && // 친구추가는 서로간의..
				fb.insertDB(request.getParameter("id"),(String)session.getAttribute("login_id"))) {
			//requestfollow 테이블에서 친구관계 state를 0->1 로 수정.
			
			rfb.updateStateDB(Integer.parseInt(request.getParameter("rseq")));
			response.sendRedirect("calendar_view.jsp");
		
		}
		else
			throw new Exception("DB 삭제 오류");
	}
	
	
	else if(action.equals("delete_friend")) {
		
		
		if(fb.deleteDB((String)session.getAttribute("login_id") , request.getParameter("id"))&&
				fb.deleteDB(request.getParameter("id"),(String)session.getAttribute("login_id") )) {
			response.sendRedirect("calendar_view.jsp");
		}
		else
			throw new Exception("DB 삭제 오류");
	}
	
	else if(action.equals("request_friend")) {
		
		System.out.println("현재 session id : "+ (String)session.getAttribute("login_id"));
		System.out.println("현재 session id : "+  request.getParameter("id"));
		if(rfb.rInsertDB((String)session.getAttribute("login_id") , request.getParameter("id"))) {
			response.sendRedirect("calendar_view.jsp");
		}
		
		else
			throw new Exception("DB 삭제 오류");
	}
	else if(action.equals("reject_friend")) {	
		
		//requestfollow 테이블에서 친구관계 state를 0->1 로 수정.
	
	rfb.updateStateDB(Integer.parseInt(request.getParameter("rseq")));
	response.sendRedirect("calendar_view.jsp");
	}
		
	else if(action.equals("delete_user")){			
		int check = ub.checkDB(request.getParameter("delete_id"), request.getParameter("delete_passwd"));
		if(check == 0) {
			out.println("<script>alert('삭제되었습니다!!!')</script>");
			fb.deleteDBid(request.getParameter("delete_id"));
			rfb.deleteDBid(request.getParameter("delete_id"));
			sb.deleteDBid(request.getParameter("delete_id"));
			if(ub.deleteDB(request.getParameter("delete_id"))) 
				response.sendRedirect("calendar_login.jsp");
			else
				throw new Exception("DB 삭제 오류");
		}
		else if(check == 1){
			out.println("<script>alert('ID를 확인해 주세요!!!')</script>");
			out.println("<script>history.go(-1)</script>");
		}else if(check == 2){
			out.println("<script>alert('비밀번호를 확인해 주세요!!!')</script>");
			out.println("<script>history.go(-1)</script>");
		}		
		else
			throw new Exception("DB 삭제 오류");
	}
	
	
	else {
		out.println("<script>alert('action 파라미터를 확인해 주세요!!!')</script>");
	}
		
		
	
	
	/*
	// action이 insert(게시글 추가)일때 
	else if(action.equals("insert")) {				
		bbsbook.setBbs_id((String)(session.getAttribute("login_id")));
		bbsbook.setBbs_name((String)(session.getAttribute("login_name")));
		if(bb.insertDB(bbsbook)) {
			response.sendRedirect("guestbook_list.jsp");
		}
		else
			throw new Exception("DB 입력오류");
	}

	// action이 delete(게시글 삭제)일때
	else if(action.equals("sche_del")) {
		if(bbsbook.getBbs_id().equals((String)session.getAttribute("login_id"))) {
			int bbs_seq = bbsbook.getBbs_seq();
			rb.deleteAllDB(bbs_seq);
			bb.deleteDB(bbs_seq);
			response.sendRedirect("guestbook_list.jsp");
		}
		else
			throw new Exception("DB 삭제 오류");
	}
	*/
	
	// action이 delete_user(회원탈퇴)일때
	
	/*
		// action이 view(게시글 내용보기)일때 
	else if(action.equals("view")){					
		bbsbook = (BbsBook)bb.getDB(Integer.parseInt(request.getParameter("bbs_seq")));
		session.setAttribute("bbsbook",bbsbook);
		response.sendRedirect("guestbook_view.jsp");
		bb.updateHit(bbsbook.getBbs_seq());
	}
	*/
	
	// action이 ripple(댓글 달기)일때 
	
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
			throw new Exception("DB 삽입 오류");
		}
	}
	// action이 del_ripple(댓글 삭제)일때
	else if(action.equals("del_ripple")){
		request.setCharacterEncoding("euc-kr");
		rb.deleteDB(ripplebook.getRipple_seq());
		response.sendRedirect("guestbook_view.jsp");
	}
	
	*/
	
%>
</body>
</html>