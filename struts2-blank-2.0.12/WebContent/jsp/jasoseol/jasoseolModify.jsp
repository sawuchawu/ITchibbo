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
<link href="/css/reset.css" rel="stylesheet" />
<link href="/css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="/css/jcarousel.css" rel="stylesheet" />
<link href="/css/flexslider.css" rel="stylesheet" />
<link href="/css/style.css" rel="stylesheet" />
<link href="/css/recruitList.css" rel="stylesheet" />
<link href="/css/button.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="/css/tcal.css" />
<link href="/css/portfolioInfo.css" rel="stylesheet" />
<link href="/css/portfolioEdit.css" rel="stylesheet" />
<!-- Theme skin -->
<link href="/skins/default.css" rel="stylesheet" />

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
<script type="text/javascript" src="/js/jquery-2.0.0.js" charset = "EUC-KR"></script>
<script type="text/javascript">
function sendData(){
	obj = document.frm;
	/* d=obj.file.value;
	alert(d); */
	obj.submit();
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
		<section id="content">
	<div class="container">
		<div class="row">
			<div class="col-lg-8">
				<article>
						<div class="post-image">
							<div class="post-heading">
							
								<!-- 컨텐츠 넣는 부분 -->
								
					<fieldset>
						<legend><p>기업별 자소서 항목</p></legend>
						<form action="/jasoseol/jasoseolModify.action" method="post" name="frm"
									id="frm" enctype="multipart/form-data">
					<input type = "hidden" name = "com_no" value = "${bean.com_no}">
					<input type = "hidden" name = "job" value = "info">
						<div class="form_table">
						<table border="0" cellspacing="0" summary="표의 요약을 반드시 넣어 주세요">
						<tbody>
						<tr>
						<th scope="row">아이디</th>
						<td>
							
								admin
							
						</td>
						</tr>
						<tr>
						<th scope="row">기업명</th>
						<td>
							<div class="item">
								<input title="레이블 텍스트" class="i_text" type="text" name = "com_name" id = "com_name" value="${bean.com_name}">
							</div>
						</td>
						</tr>
	
						<tr>
						<th scope="row">항목1</th>
						<td>
							<div class="item">
								<input title="레이블 텍스트" class="i_text" type="text" name = "com_title1" id = "com_title1" value="${bean.com_title1}">
							</div>
						</td>
						</tr>
						<tr>
						<th scope="row">항목2</th>
						<td>
							<div class="item">
								<input title="레이블 텍스트" class="i_text" type="text" name = "com_title2" id = "com_title1" value="${bean.com_title2}">
							</div>
						</td>
						</tr>
						<tr>
						<th scope="row">항목3</th>
						<td>
							<div class="item">
								<input title="레이블 텍스트" class="i_text" type="text" name = "com_title3" id = "com_title3" value="${bean.com_title3}">
							</div>
						</td>
						</tr>
						<tr>
						<th scope="row">항목4</th>
						<td>
							<div class="item">
								<input title="레이블 텍스트" class="i_text" type="text" name = "com_title4" id = "com_title4" value="${bean.com_title4}">
							</div>
						</td>
						</tr>
						<tr>
						<th scope="row">항목5</th>
						<td>
							<div class="item">
								<input title="레이블 텍스트" class="i_text" type="text" name = "com_title5" id = "com_title5" value="${bean.com_title5}">
							</div>
						</td>
						</tr>
						
					</tbody>
						</table>
					</div></form>
								<div align="center">
									<br>
									<br> <a class="btn_big" href="javascript:sendData()"><strong>수정</strong></a>
									<a class="btn_big"
										href="/jasoseol/jasoseolDelete.action?com_no=${bean.com_no}"><strong>삭제</strong></a>
									<a class="btn_big" href="/jasoseol/jasoseolList.action"><span>목록</span></a>
								</div>
							</fieldset>

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
					<center>
						<div id="page" style="font-size: 16px;"></div>
					</center>
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
						<h4 class="widgetheading">취업정보</h4>
						<ul class="cat">
							<li><i class="icon-angle-right"></i><a
								href="javascript:jobSearch(401);">취업박람회</a><span id="j1"></span></li>
							<li><i class="icon-angle-right"></i><a href="/tech/techList.action">IT기술동향</a><span
								id="j2"></span></li>
							<li><i class="icon-angle-right"></i><a
								href="javascript:jobSearch(403);">취업뉴스</a><span id="j3"></span></li>
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