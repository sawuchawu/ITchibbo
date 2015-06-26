<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
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
<link href="/css/reset.css" rel="stylesheet" />
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


<!-- Theme skin -->
<link href="/skins/default.css" rel="stylesheet" />

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->



</head>
<body >
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
					<li class="active">합격 자소서 / 상세보기</li>
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
							<legend>합격 자소서</legend>
							<br>
													<h4>합격 자소서</h4>	
								<!-- 컨텐츠 넣는 부분 -->


<jsp:include page="/jsp/recruitGuide/coverLetter/covInfo2.jsp"></jsp:include>
							
							
							
							</div>
						
						<%-- 	<div class="cmt_comm">

						<form
							action="/review/revReplyInsert.action?rev_no=${bean.rev_no}&job=info"
							name="replyForm" id="replyForm" method="post">
							<fieldset class="fld_cmt" style="width: 800px;">
								<strong class="screen_out">댓글 달기</strong><br> <input
									type="hidden" name="mem_id" value="${bean.mem_id}" /> <input
									type="hidden" name="rep_infono" value="${bean.rev_no}" /> <input
									type="hidden" name="rep_job" value="new" /><br>

								<textarea name="rep_content" id="tx" class="tf_cmt" cols="90"
									rows="5" title="한줄 토크를 달아주세요" style="width: 716px;">add talk</textarea>
								<button name="save" id="save" type="button"
									class="img_sample btn_cmt" style="width: 79px;">등록</button>

								<p class="info_append">
									<span class="screen_out">입력된 바이트 수 : </span> <span
										class="txt_byte" id="read"></span> / 30자 <span class="txt_bar">|</span>
									<a href="http://news.zum.com/commentOperatingRule">댓글 운영원칙</a>
								</p>
							</fieldset>

						</form>

						<c:if test="${list.size()>0 }">
						<strong class="screen_out">전체 댓글</strong>
						<c:forEach var="i" items="${list}">
							<div class="list_cmt" style="width: 800px;">
								<div class="cmt_body">
									${i.mem_id}
									<span class="txt_time">${i.rep_regdate}</span>
									
									<p class="txt_desc">${i.rep_content}</p>
								</div>
								<div class="cmt_foot"> 
									<a href="/tech/techReplyModify.action?tec_no=${i.rep_infono}&rep_no=${i.rep_no}&job=modify">수정</a><span class="txt_bar">|</span>
									<a href="#">수정</a><span class="txt_bar">|</span>
									<a
											href="/review/revReplyDelete.action?rev_no=${i.rep_infono}&rep_no=${i.rep_no}&job=info">삭제</a><span class="txt_bar">
								</div>
								
							</div>
						</c:forEach>
					</c:if>
					</div> --%>
							
						</div>
						
						
			</article>
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
					<h4 class="widgetheading">취업가이드</h4>
					<ul class="cat">
						<li><i class="icon-angle-right"></i><a href="/review/reviewList.action">취업후기</a></li>
						<li><i class="icon-angle-right"></i><a href="/cov/covList.action">합격 자소서</a></li>
						<li><i class="icon-angle-right"></i><a href="/portfolio/portfolioList.action">포트폴리오</a></li>
						<li><i class="icon-angle-right"></i><a href="/jsp/recruitGuide/jobAnalysys.jsp">직무분석</a></li>

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