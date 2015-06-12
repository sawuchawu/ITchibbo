<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
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
<link href="/css/portfolioInfo.css" rel="stylesheet" />
<link href="/css/portfolioEdit.css" rel="stylesheet" />

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link href="/skins/default.css" rel="stylesheet" />

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<% String rId = request.getParameter("rId"); %>
<body>
	<div id="wrapper">
		<!-- start header -->
		<header>
		<div class="navbar navbar-default navbar-static-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/index.jsp"><font size="13"><span>IT</span>취뽀</font></a>
					<ul class="nav navbar-nav">
						<li><a href="javascript:popupLogin()">로그인</a></li>
						<!-- 로그아웃 바꾸기 -->
						<li><a href="javascript:popupJoin()">회원가입</a></li>
						<!-- 마이페이지 바꾸기 -->
					</ul>
				</div>
				<div class="navbar-collapse collapse ">
					<ul class="nav navbar-nav">
						<li class="dropdown"><a href="#" class="dropdown-toggle "
							data-toggle="dropdown" data-hover="dropdown" data-delay="0"
							data-close-others="false">채용정보 <b class=" icon-angle-down"></b></a>
							<ul class="dropdown-menu">
								<li><a href="typography.html">채용공고</a></li>
								<li><a href="components.html">직종별 검색</a></li>
								<li><a href="pricingbox.html">채용정보 상세검색</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle "
							data-toggle="dropdown" data-hover="dropdown" data-delay="0"
							data-close-others="false">취업정보 <b class=" icon-angle-down"></b></a>
							<ul class="dropdown-menu">
								<li><a href="/jsp/jobInfo/expo/finallist.jsp">취업 박람회</a></li>
								<li><a href="components.html">IT기술 동향</a></li>
								<li><a href="pricingbox.html">취업 뉴스</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" data-hover="dropdown" data-delay="0"
							data-close-others="false">취업가이드 <b class="icon-angle-down"></b></a>
							<ul class="dropdown-menu">
								<li><a href="typography.html">취업 후기</a></li>
								<li><a href="components.html">합격 자소서</a></li>
								<li><a href="pricingbox.html">포트폴리오</a></li>
								<li><a href="/jsp/recruitGuide/jobAnalysys.jsp">직무분석</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle "
							data-toggle="dropdown" data-hover="dropdown" data-delay="0"
							data-close-others="false">커뮤니티 <b class=" icon-angle-down"></b></a>
							<ul class="dropdown-menu">
								<li><a href="typography.html">자유게시판</a></li>
								<li><a href="components.html">Q&A</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle "
							data-toggle="dropdown" data-hover="dropdown" data-delay="0"
							data-close-others="false">관리자 <b class=" icon-angle-down"></b></a>
							<ul class="dropdown-menu">
								<li><a href="/api/saramin.jsp">사람인</a></li>
								<li><a href="typography.html">회원관리</a></li>
								<li><a href="components.html">메뉴관리</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
		</header>
		<!-- end header -->
		<section id="inner-headline">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="breadcrumb">
						<li><a href="#"><i class="fa fa-home"></i></a><i
							class="icon-angle-right"></i></li>
						<li class="active">Tech</li>
					</ul>
				</div>
			</div>
		</div>
		</section>
		<section id="content">
		<div class="container">
			<div class="row">
				<div class="col-side">
					<h4>커뮤니티</h4>
					<h5>Q&A</h5>
					<h5>자유게시판</h5>
				</div>

				<!-- 포트폴리오 info 테이블 -->

				<div class="col-content">
					<fieldset>
						<div class="col-content">
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

					<div class="cmt_comm">

						<form
							action="/qna/qnareplyInsert.action?qna_no=${bean.qna_no}&jobs=info"
							name="replyForm" id="replyForm" method="post">
							<fieldset class="fld_cmt">

								<strong class="screen_out">댓글 달기</strong><br> <input
									type="hidden" name="mem_id" value="${bean.mem_id}" /> <input
									type="hidden" name="rep_infono" value="${bean.qna_no}" /> <input
									type="hidden" name="rep_job" value="new" /><br>


								<textarea name="rep_content" id="tx" class="tf_cmt" cols="90"
									rows="5" title="한줄 토크를 달아주세요">add talk</textarea>

								<button name="save" id="save" type="button"
									class="img_sample btn_cmt">등록</button>
								<br>

								<p class="info_append">
									<span class="screen_out">입력된 바이트 수 : </span> <span
										class="txt_byte" id="read"></span> / 30자 <span class="txt_bar">|</span>
									<a href="#none">댓글 운영원칙</a>
								</p>
							</fieldset>

						</form>

						<c:if test="${list.size()>0 }">
							<strong class="screen_out">전체 댓글</strong>
							<c:forEach var="i" items="${list}">

								<div class="list_cmt">
									<div class="cmt_body">
										${i.mem_id} <span class="txt_time">${i.rep_regdate}</span>

										<p class="txt_desc">${i.rep_content}</p>
									</div>
									<div class="cmt_foot">
										<a href="#none">수정</a><span class="txt_bar">|</span> <a
											href="/qna/qnaReplyDelete.action?qna_no=${i.rep_infono}&rep_no=${i.rep_no}&jobs=info">삭제</a><span
											class="txt_bar">
									</div>

								</div>
							</c:forEach>
						</c:if>
					</div>
				</div>
			</div>
		</div>


		</section>
		<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="widget">
						<h5 class="widgetheading">Get in touch with us</h5>
						<address>
							<strong>Moderna company Inc</strong><br> Modernbuilding
							suite V124, AB 01<br> Someplace 16425 Earth
						</address>
						<p>
							<i class="icon-phone"></i> (123) 456-7890 - (123) 555-7891 <br>
							<i class="icon-envelope-alt"></i> email@domainname.com
						</p>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="widget">
						<h5 class="widgetheading">Pages</h5>
						<ul class="link-list">
							<li><a href="#">Press release</a></li>
							<li><a href="#">Terms and conditions</a></li>
							<li><a href="#">Privacy policy</a></li>
							<li><a href="#">Career center</a></li>
							<li><a href="#">Contact us</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="widget">
						<h5 class="widgetheading">Latest posts</h5>
						<ul class="link-list">
							<li><a href="#">Lorem ipsum dolor sit amet, consectetur
									adipiscing elit.</a></li>
							<li><a href="#">Pellentesque et pulvinar enim. Quisque
									at tempor ligula</a></li>
							<li><a href="#">Natus error sit voluptatem accusantium
									doloremque</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="widget">
						<h5 class="widgetheading">Flickr photostream</h5>
						<div class="flickr_badge">
							<script type="text/javascript"
								src="http://www.flickr.com/badge_code_v2.gne?count=8&amp;display=random&amp;size=s&amp;layout=x&amp;source=user&amp;user=34178660@N03"></script>
						</div>
						<div class="clear"></div>
					</div>
				</div>
			</div>
		</div>
		<div id="sub-footer">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="copyright">
							<p>
								<span>&copy; Moderna 2014 All right reserved. By </span><a
									href="http://bootstraptaste.com" target="_blank">Bootstraptaste</a>
							</p>
						</div>
					</div>
					<div class="col-lg-6">
						<ul class="social-network">
							<li><a href="#" data-placement="top" title="Facebook"><i
									class="fa fa-facebook"></i></a></li>
							<li><a href="#" data-placement="top" title="Twitter"><i
									class="fa fa-twitter"></i></a></li>
							<li><a href="#" data-placement="top" title="Linkedin"><i
									class="fa fa-linkedin"></i></a></li>
							<li><a href="#" data-placement="top" title="Pinterest"><i
									class="fa fa-pinterest"></i></a></li>
							<li><a href="#" data-placement="top" title="Google plus"><i
									class="fa fa-google-plus"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		</footer>
	</div>
	<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
	<!-- javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/jquery.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.fancybox.pack.js"></script>
	<script src="js/jquery.fancybox-media.js"></script>
	<script src="js/google-code-prettify/prettify.js"></script>
	<script src="js/portfolio/jquery.quicksand.js"></script>
	<script src="js/portfolio/setting.js"></script>
	<script src="js/jquery.flexslider.js"></script>
	<script src="js/animate.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>