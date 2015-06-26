<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>	
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
<link rel="stylesheet" type="text/css" href="/css/tcal.css" />
<link href="/css/finallist.css" rel="stylesheet" />
<script type="text/javascript" src="/js/jquery-2.0.0.js"></script>
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
		$(this).location.reload();
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
						<li class="active">커뮤니티</li>
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

<h4>Q&A 게시판</h4>
							<br>
							<!-- 컨텐츠 넣는 부분 -->
							<table class="tbl_type" border="1" cellspacing="0"
								summary="게시판의 글제목 리스트">
								<caption>게시판 리스트</caption>
								<colgroup>
									<col width="80">
									<col width>
									<col width="200">
									<col width="100">
									<col width="80">
								</colgroup>
								<thead>
									<tr>

										<th scope="col">No</th>
										<th scope="col">제목</th>
										<th scope="col">작성자</th>
										<th scope="col">등록일</th>
										<th scope="col">조회수</th>

									</tr>
								</thead>

								<tbody>
									<c:forEach var="i" items="${list}" varStatus="cnt">
										<tr>

											<%-- <td>${i.news_title}</td> --%>

											<%-- <td class="title"><a href="/cov/covInfo.action?cov_no=${i.cov_no}&job=info">${i.cov_year}</a></td> --%>
											<td>${cnt.count}</td>
											<td class="title"><a
												href="/qna/hit.action?qna_no=${i.qna_no}&jobs=info">&nbsp;&nbsp;&nbsp;&nbsp;${i.qna_title}</a></td>
											<td>${i.mem_id}
											<input type="hidden" value="${i.qna_no}" id="qna_no" name="qna_no"></td>
											<td>${i.qna_date}</td>
											<td>${i.qna_hit}</td>
											<%-- <td>${i.qna_date}</td> --%>

										</tr>
									</c:forEach>
								</tbody>

							</table>
							<br>
						</div>
						<div align="right">
							<a class="btn_big" href="/jsp/community/qna/qnaEdit.jsp"><span>글쓰기</span></a>
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
						</div> --> <br>
					<div align="center">
						<div class="paging">
							<center>${sb}</center>
						</div>
					</div>
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

					<!-- 오른쪽 메뉴 넣는 부분  -->
					<aside class="right-sidebar">
					<div class="widget">
						<form class="form-search">
							<input class="form-control" type="text" placeholder="Search..">
						</form>
					</div>
					<div class="widget">
						<h4 class="widgetheading">커뮤니티</h4>
						<ul class="cat">
							<li><i class="icon-angle-right"></i><a href="/brd/brdList.action">자유게시판</a><span id="j1"></span></li>
							<li><i class="icon-angle-right"></i><a href="/qna/qnaList.action">Q&A</a><span id="j2"></span></li>
						</ul>
					</div>
					<div class="widget">
						<h5 class="widgetheading">Popular tags</h5>
						<ul class="tags">
							<li><a href="#">Web design</a></li>
							<li><a href="#">Trends</a></li>
							<li><a href="#">Technology</a></li>
							<li><a href="#">Internet</a></li>
							<li><a href="#">Tutorial</a></li>
							<li><a href="#">Development</a></li>
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