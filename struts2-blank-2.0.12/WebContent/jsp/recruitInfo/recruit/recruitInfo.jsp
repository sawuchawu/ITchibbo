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
<link rel="stylesheet" type="text/css" href="/css/tcal.css" />

<script type="text/javascript" src="/js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="/js/xdomainajax.js"></script>
<script type="text/javascript" src="/js/xml2json.js"></script>
<script type="text/javascript" src="/js/parsing.js"></script>
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
<script type="text/javascript" src="/js/tcal.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link href="/skins/default.css" rel="stylesheet" />
<script type="text/javascript">
$(document).ready(function() {
	parsing(0);
	jobParsing(401);jobParsing(402);jobParsing(403);jobParsing(404);jobParsing(406);jobParsing(407);jobParsing(408);jobParsing(409);
	jobParsing(410);jobParsing(411);jobParsing(412);jobParsing(413);jobParsing(414);jobParsing(415);jobParsing(416);jobParsing(405);
});

// 직무별 url 생성
function jobSearch(val){
	$("tr#ind_cd_tr").hide();
	$("tr#job_category_tr").hide();
	
	jobSearchUrl(val);
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
								<fieldset>
							<!-- UI Object -->
							제목 ~2015년05월12일토요일 (D-12)
							<form action="#" method="post" name="frm" id="frm" enctype="multipart/form-data">
								<fieldset>
									<div class="form_table">
										<table border="0" cellspacing="0" >
											<colgroup>
												<col width="100">
												<col width="30">
												<col width="100">
												<col width="100">
												<col width="100">
											</colgroup>
											<tbody>
												<tr>
													<th scope="row">업종</th>
													<td>&nbsp;</td>
													<td colspan="2">
														dsffgfg	
													</td>
												</tr>
												<tr>
													<th scope="row">직무</th>
													<td>&nbsp;</td>
													<td colspan="2">
														dsffgfg	
													</td>
												</tr>
												<tr>
													<th scope="row">고용형태</th>
													<td>&nbsp;</td>
													<td colspan="2">
														dsffgfg	
													</td>
												</tr>
												<tr>
													<th scope="row">경력</th>
													<td colspan="3">

													</td>
												</tr>
												<tr>
													<th scope="row">학력</th>
													<td colspan="3">

													</td>
												</tr>
												<tr>
													<th scope="row">연봉</th>
													<td colspan="3">

													</td>
												</tr>
												<tr>
													<th scope="row">지역</th>
													<td colspan="3">

													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</fieldset>

								<div align="right">
									<a class="btn_big"
										href="/qna/qnaInfo.action?qna_no=${bean.qna_no}&jobs=modify"><strong>수정</strong></a>
									<a class="btn_big"
										href="/qna/qnaDelete.action?qna_no=${bean.qna_no}"><strong>삭제</strong></a>
									<a class="btn_big" href="/qna/qnaList.action"><span>목록</span></a>

								</div>
							</form>
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
						</div> -->
				</article>
				<center><div id="page" style="font-size: 16px;"></div></center>
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
					<h4 class="widgetheading">직무별</h4>
					<ul class="cat">
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(401);">웹마스터·QA·테스터</a><span id="j1"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(402);">서버·네트워크·보안</a><span id="j2"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(403);">웹기획·웹마케팅·PM</a><span id="j3"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(404);">웹프로그래머</a><span id="j4"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(406);">컨텐츠·사이트운영</a><span id="j6"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(407);">응용프로그래머</a><span id="j7"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(408);">시스템프로그래머</a><span id="j8"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(409);">ERP·시스템분석·설계</a><span id="j9"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(410);">통신·모바일</a><span id="j10"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(411);">HW·SW</a><span id="j11"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(412);">웹디자인</a><span id="j12"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(413);">HTML·웹표준·UI개발</a><span id="j13"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(414);">동영상·편집·코덱</a><span id="j14"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(415);">IT·디자인·컴퓨터교육</a><span id="j15"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(416);">데이터베이스   </a><span id="j16"></span></li>
						<li><i class="icon-angle-right"></i><a href="javascript:jobSearch(405);">게임</a><span id="j5"></span></li>
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