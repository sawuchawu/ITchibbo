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
<script type="text/javascript">
	$(document).ready(function() {
		$("a#save").click(function() {
			$("form#frm").submit();
		});
	});
</script>
<script type="text/javascript">
	
	function sendData() {
		document.frm.submit();
	}
	$(document).ready(function() {
		$("a#save").click(function() {
			$("form#frm").submit();
		});
	});

	function si_ok() {
		var a = document.getElementById("rdate").value;
		document.frm.brd_date.value = a;
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
					<li class="active">Q&A</li>
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
							
								<!-- 컨텐츠 넣는 부분 -->
								<form action="/qna/qnaModify.action" method="post" name="frm"
						id="frm" enctype="multipart/form-data">
						<fieldset>
							
<h4>Q&A 게시판</h4>
							<br>
							<div class="form_table">
								<table border="0" cellspacing="0" summary="표의 요약을 반드시 넣어 주세요">
									<tbody>
										<tr>
											<th scope="row">아이디</th>
											<td>admin <input type="hidden" value="${bean.qna_no}"
												id="qna_no" name="qna_no">
											</td>
										</tr>
										<%-- <tr>
											<th scope="row">작성일</th>
											<td>
												<div class="item">
													<input title="레이블 텍스트" class="i_text" type="date" size="50"
														id="rdate" name="rdate" onblur="si_ok()">
														 <input
														type="hidden" value="${bean.brd_date}" id="brd_date"
														name="brd_date">

												</div>
											</td>
											<td>
											<input
														type="text" value="${bean.qna_date}" id="qna_date"
														name="qna_date">
											</td>
										</tr> --%>

										<tr>
											<th scope="row">제목</th>
											<td>
												<div class="item">
													<input title="레이블 텍스트" class="i_text" type="text" size="50"
														id="qna_title" name="qna_title" value="${bean.qna_title}">

												</div>
											</td>
										</tr>



										<tr>
											<th scope="row">내용</th>
											<td>
												<div class="item">
													<textarea rows="30" cols="150" id="qna_content"
														name="qna_content">${bean.qna_content }</textarea>
													<input type="hidden" value="info" id="jobs" name="jobs">
												</div>
											</td>
										</tr>


									</tbody>
								</table>
							</div>
						</fieldset>

						<div align="right">
							<a class="btn_big" href="javascript:sendData()"><strong>저장</strong></a>
							<a class="btn_big" href="/qna/qnaList.action"><span>취소</span></a>

						</div>
					</form>

							
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