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
<%@ include file="/jsp/header.jsp" %>
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
<%@ include file="/jsp/bottominfo.jsp" %>
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