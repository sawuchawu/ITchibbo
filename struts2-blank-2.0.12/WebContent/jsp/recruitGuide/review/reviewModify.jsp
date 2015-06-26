<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    		 <%@ taglib prefix="s" uri="/struts-tags" %>
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

</script>
<script src="http://code.jquery.com/jquery-latest.js"
	type="text/javascript"></script>
<link href="/css/finaledit.css" rel="stylesheet" />
<link href="/css/button.css" rel="stylesheet" />
<script type="text/javascript">
	jQuery(function() {
		// Help Toggle
		$('.item>.i_help').click(function() {
			$(this).parent('.item').find('.i_dsc').toggleClass('hide');
		});
		// Input Clear
		var i_text = $('.item>.i_label').next('.i_text');
		$('.item>.i_label').css('position', 'absolute');
		i_text.focus(function() {
			$(this).prev('.i_label').css('visibility', 'hidden');
		}).blur(function() {
			if ($(this).val() == '') {
				$(this).prev('.i_label').css('visibility', 'visible');
			} else {
				$(this).prev('.i_label').css('visibility', 'hidden');
			}
		}).change(function() {
			if ($(this).val() == '') {
				$(this).prev('.i_label').css('visibility', 'visible');
			} else {
				$(this).prev('.i_label').css('visibility', 'hidden');
			}
		}).blur();
	});
</script>
<script type="text/javascript">

function si_ok(){
	var a=document.getElementById("rdate").value;
	document.frm.rev_year.value=a;
}

function sendData(){
	document.frm.submit();
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
					<li class="active">취업후기 / 수정</li>
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
								
								
								
								
	<!-- UI Object -->
	<form action="/review/reviewModify.action" method="post" name="frm" id="frm" enctype="multipart/form-data">
			<div class="form_table">
							<h4>취업후기 수정</h4>
				<table border="1" cellspacing="0" summary="표의 요약을 반드시 넣어 주세요">
					<tbody>

						<tr>
							<th scope="row">ID</th>
							<td>
								<div class="item">ADMIN1</div>
							<input type="hidden" value="info" id="job" name="job">
						<input type="hidden" value="${bean.rev_no}" id="rev_no" name="rev_no">
							</td>
						</tr>
						<tr>
							<th scope="row">제목</th>
							<td>
								<div class="item">
									<input title="레이블 텍스트" class="i_text" type="text" size="50" id="rev_title" name="rev_title" value="${bean.rev_title }">
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row">회사</th>
							<td>
								<div class="item">
									<input title="레이블 텍스트" class="i_text" type="text" size="50" id="rev_com" name="rev_com" value="${bean.rev_com }">
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row">직무</th>
							<td>
								<div class="item">
									<input title="레이블 텍스트" class="i_text" type="text" size="50" id="rev_job" name="rev_job" value="${bean.rev_job }">
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row">지원날짜</th>
							<td>
								<div class="item">
									<input title="레이블 텍스트" class="i_text" type="date" size="50" id="rdate" name="rdate" onblur="si_ok()">
									<input type="hidden" value="" id="rev_year" name="rev_year">
									<select name="rev_career" id="rev_career">
									<option value="상반기">상반기</option>
									<option value="하반기">하반기</option>
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row">내용</th>
							<td>
								<div class="item">
									<textarea wrap="hard" rows="20" cols="110" id="rev_content" name="rev_content">${bean.rev_content }</textarea>
								</div>
							</td>
						</tr>
						
						
					</tbody>
				</table>
			</div>
	</form>
	<!-- //UI Object -->
	<!-- UI Object -->
	<div align="right">
		<a class="btn_big" href="javascript:sendData()"><strong>저장</strong></a> <a class="btn_big"
			href="/review/reviewList.action"><span>취소</span></a>

	</div>
	<!-- //UI Object -->

								
								
								
								
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
					<h4 class="widgetheading">취업가이드</h4>
					<ul class="cat">
						<li><i class="icon-angle-right"></i><a href="/review/reviewList.action">취업후기</a></li>
						<li><i class="icon-angle-right"></i><a href="/cov/covList.action">합격 자소서</a></li>
						<li><i class="icon-angle-right"></i><a href="/portfolio/portfolioList.action">포트폴리오</a></li>
						<li><i class="icon-angle-right"></i><a href="/jsp/recruitGuide/jobAnalysys.jsp">직무분석</a></li>
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