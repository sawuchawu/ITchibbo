<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
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
<link href="/css/finallist.css" rel="stylesheet" />
<link href="/css/button.css" rel="stylesheet" />
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
<script type="text/javascript" src="http://code.jquery.com/jquery-2.0.0.js"></script>
<script type="text/javascript">
 function memModi(val){
		var mem_id = val;
		var mem_pw = $("input#"+mem_id).val();

		 $("input#"+mem_id).removeAttr("readonly");
		 $("input#"+mem_id).attr("style","text-align: center;");
		 $("a#"+mem_id).children().text('저장');
		 $("a#"+mem_id).attr("onclick","memModi2('"+mem_id+"')");

 }
 function memModi2(val){
		var mem_id = val;
		var mem_pw = $("input#"+val).val();
		$("a#"+mem_id).attr("href","/app/pwModify.action?mem_id="+mem_id+"&mem_pw="+mem_pw);
 }
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
					<li><a href="#"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
					<li class="active">회원관리</li>
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
								
<h4>회원관리</h4>
								
<table class="tbl_type" border="1" cellspacing="0" summary="게시판의 글제목 리스트">
<caption>게시판 리스트</caption>
<colgroup>
<col>
<col width="250">
</colgroup>
<thead>
<tr>
<th scope="col">아이디</th>
<th scope="col">비밀번호</th>
<th scope="col">이름</th>
<th scope="col">이메일</th>
<th scope="col">핸드폰</th>
<th scope="col">수정</th>

</tr>
</thead>
<tbody>
<c:forEach var="i" items="${list}" varStatus="cnt">
<tr>

<td>${i.mem_id}</td>
<td><input class="i_text" readonly="readonly" style="border: 0px;text-align: center;" type="text" size="10" 
id="${i.mem_id}" value="${i.mem_pw}"></td>
<td>${i.mem_name}</td>
<td>${i.mem_email}</td>
<td>${i.mem_phone}</td>
<td><a class="btn_big" href="#" id="${i.mem_id}" onclick="memModi('${i.mem_id}')"><strong>수정</strong></a></td>

</tr>
</c:forEach>
</tbody>
</table>
<!-- //UI Object -->

					<div class="row">
						<br>
						<div>

							<div class="paging" align="center">${sb}</div>
						</div>

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
						</div> -->
				</article>
				<!-- <div id="pagination">
				현재페이지는 class 속성을 current로 바꾸면 된다?///components페이지에 있는 페이징 소스도 보자.
					<span class="all">Page 1 of 3</span>
					<span class="current">1</span>
					<a href="#" class="inactive">2</a>
					<a href="#" class="inactive">3</a>
				</div> -->
			</div>
			<div class="col-lg-4">
				<aside class="right-sidebar">
				<!-- <div class="widget">
					<form class="form-search">
						<input class="form-control" type="text" placeholder="Search..">
					</form>
				</div> -->
				<div class="widget">
					<h4 class="widgetheading">관리자</h4>
					<ul class="cat">
						<li><i class="icon-angle-right"></i><a href="#">캘린더</a></li>
						<li><i class="icon-angle-right"></i><a href="/app/adMemList.action">회원관리</a></li>
						<li><i class="icon-angle-right"></i><a href="#">메뉴관리</a>
							<ul>
							<li><a href="/expo/expoList.action">취업 박람회</a></li>
							<li><a href="/tech/techList.action">IT 기술동향</a></li>
							<li><a href="/news/newsList.action">취업 뉴스</a></li>
							<li><a href="/cov/covList.action">합격 자소서</a></li>
							<li><a href="/portfolio/portfolioList.action">포트폴리오</a></li>
							<li><a href="/jasoseol/jasoseolList.action">자소서 항목</a></li>
							</ul>
						</li>

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