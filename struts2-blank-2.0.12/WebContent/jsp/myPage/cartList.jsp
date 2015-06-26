<%@page import="cov.bean.CovBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- <html lang="en"> -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>IT취뽀 - IT 취업정보 사이트</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="http://bootstraptaste.com" />
<!-- css -->
<link href="/css/bootstrap.min.css" rel="stylesheet" />
<link href="/css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="/css/jcarousel.css" rel="stylesheet" />
<link href="/css/flexslider.css" rel="stylesheet" />
<link href="/css/style.css" rel="stylesheet" />
<link href="/css/recruitList.css" rel="stylesheet" />
<link href="/css/button.css" rel="stylesheet" />
<link href="/css/finallist.css" rel="stylesheet" />
<script type="text/javascript" src="/js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="/js/xdomainajax.js"></script>
<script type="text/javascript" src="/js/xml2json.js"></script>
<script type="text/javascript" src="/js/calcDate.js"></script>
<script type="text/javascript" src="/js/paging.js"></script>
<script src="/js/jquery.easing.1.3.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/jquery.fancybox.pack.js"></script>
<script src="/js/jquery.fancybox-media.js"></script>
<script src="/js/google-code-prettify/prettify.js"></script>
<script src="/js/portfolio/jquery.quicksand.js"></script>
<script src="/js/portfolio/setting.js"></script>
<script src="/js/jquery.flexslider.js"></script>
<script src="/js/animate.js"></script>
<script src="/js/custom.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	$("#cartButton").click(function(){
		if($("#pass").val()==$("#lpw").val()){
			alert("결제완료");
			$("form#cartFrm").submit();
		}
	});
	

});
</script>


<!-- Theme skin -->
<link href="/skins/default.css" rel="stylesheet" />

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>
<body>

	<div id="wrapper">
		<!-- start header -->
<%@ include file="/jsp/header.jsp" %>
		<!-- end header -->
		<section id="inner-headline">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="breadcrumb">
						<li><a href="#"><i class="fa fa-home"></i></a><i
							class="icon-angle-right"></i></li>
						<li class="active">채용공고</li>
					</ul>
				</div>
			</div>
		</div>
		</section>
		<section id="content">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<article>
					<div class="post-image">
						<div class="post-heading">


<h4>결제정보</h4>
							<table class="tbl_type" border="3" cellspacing="0"
								summary="게시판의 글제목 리스트">
								<caption>게시판 리스트</caption>
								<colgroup>
									<col width="50">
									<col width="90">
									<col width="100">
									<col width="150">
									<col width>
									<col width="80">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">NO</th>
										<th scope="col">채용시기</th>
										<th scope="col">회사</th>
										<th scope="col">지원분야</th>
										<th scope="col">제목</th>
										<th scope="col">가격</th>
									</tr>
								</thead>
								<tbody>
									<%
										ArrayList<CovBean> list = (ArrayList<CovBean>) session
												.getAttribute("scrap12");
										String b = request.getParameter("a");
										/* ArrayList<CovBean> scrap = (ArrayList<CovBean>)session.getAttribute("scrap");
										if(scrap==null){
											scrap=new ArrayList<CovBean>();
										} */
										String a="";
										for (int i = 0; i < list.size(); i++) {
											for (int j = 0; j < b.split(",").length; j++) {
												if (Integer.parseInt(b.split(",")[j]) == i) {
												a+=list.get(i).getCov_no()+",";
									%>

									<tr>
										<td><%=list.get(i).getCov_no()%></td>
										<td><%=list.get(i).getCov_year()%></td>
										<td><%=list.get(i).getCov_com()%></td>
										<td><%=list.get(i).getCov_job()%></td>
										<td><%=list.get(i).getCov_title()%></td>
										<td><%=list.get(i).getCov_price()%></td>
										
									</tr>
									<%
										}
											}
										}
									%>


								</tbody>

							</table>
							<br><br>
							
							<div> <!-- align="right"> -->
							<%-- 	<br> 아이디:
								<%=session.getAttribute("id")%>
								<input  type="text" id="ckcom" size="10">
								<a class="btn_big" href="javascript:aaa()"><span>결제하기</span></a> --%>
								<h4>회원정보</h4>
								<form action="/cov/cartInsert.action" id="cartFrm" name="cartFrm">
								<table class="tbl_type" border="3" cellspacing="0">
								<colgroup>
									<col width="100">
									<col width="100">
									<col width="145">
									<col width="115">
								</colgroup>
								<tr>
								<th scope="col">아이디</th>
								<th scope="col">비밀번호</th>
								<th scope="col">이메일</th>
								<th scope="col">합계</th>
								</tr>
								
								<tr>
								<td><%=session.getAttribute("id")%> 
								<input type="hidden" id="cov_no" name="cov_no" value="<%=a%>">
								<input type="hidden" value="<%=session.getAttribute("id")%>" id="mem_id" name="mem_id">
								<input type="hidden" value="<%=session.getAttribute("pw")%>" id="lpw" name="cart_pw">
								<input type="hidden" value="kongha2@naver.com" id="cart_from" name="cart_from">
								<input type="hidden" value="결제가 완료되었습니다." id="cart_text" name="cart_text">
								</td>
								<td><input type="text" id="pass" size="10"></td>
								<td><input type="text" id="email" size="30"></td>
								<td><%=request.getParameter("temp")%>
								<input type="hidden" value="<%=request.getParameter("temp")%>" id="cart_temp" name="cart_temp"></td>
								
								</tr>
								
								</table>
								</form>
								<br>
							</div>
								
							<div align="right">
							<a class="btn_big" id="cartButton"><span>결제</span></a>
							</div>

						</div>
					</div>

					<!-- <div class="bottom-article">
							<ul class="meta-post">
								<li><i class="icon-calendar"></i><a href="#"> Mar 23, 2013</a></li>
								<li><i class="icon-user"></i><a href="#"> Admin</a></li>
								<li><i class="icon-folder-open"></i><a href="#"> Blog</a></li>
								<li><i class="icon-comments"></i><a href="#">4 Comments</a></li>
							</ul>
							<a href="#" class="pull-right">Continue reading <i class="icon-angle-right"></i></a>
						</div> --> </article>
					<!-- <div id="pagination">
				현재페이지는 class 속성을 current로 바꾸면 된다?///components페이지에 있는 페이징 소스도 보자.
					<span class="all">Page 1 of 3</span>
					<span class="current">1</span>
					<a href="#" class="inactive">2</a>
					<a href="#" class="inactive">3</a>
				</div> -->
				</div>
				<div class="col-lg-4">
					<aside class="right-sidebar"> <!-- <div class="widget">
					<form class="form-search">
						<input class="form-control" type="text" placeholder="Search..">
					</form>
				</div> -->
					<div class="widget">
						<h4 class="widgetheading">마이페이지</h4>
						<ul class="cat">
						<li><i class="icon-angle-right"></i>
							<a href="javascript:window.open('/jsp/myPage/calendar.jsp', '나의 캘린더','status=no,menubar=no,scrollbars=no,resizable=yes, location=no');">캘린더</a>
						</li>
						<li><i class="icon-angle-right"></i><a href="/jsp/myPage/scrapList.jsp">스크랩</a></li>
						<li><i class="icon-angle-right"></i><a href="/cov/cartList.action">구매내역</a></li>
						<li><i class="icon-angle-right"></i><a href="/app/memInfo.action?mem_id=${id }&job=info">회원정보수정</a></li>
						<li><i class="icon-angle-right"></i><a href="/jsp/myPage/memSignout.jsp">탈퇴</a></li>

					</ul>
					</div>

					</aside>
				</div>
			</div>
		</div>
		</section>
		<footer>
<%@ include file="/jsp/bottominfo.jsp" %>
		</footer>
	</div>
	<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
</body>
</html>