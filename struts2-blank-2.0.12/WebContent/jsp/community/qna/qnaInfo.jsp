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


<script type="text/javascript" charset="EUC-KR">
	$(document)
			.ready(
					function() {
						$("a#save").click(function() {
							$("form#frm").submit();
						});

						$("#tx").focus(function() {
							$(this).text('');
						});

						$("#tx").keyup(function() {
							$("#read").html(($(this).val().length));
							if ($(this).val().length > 30) {
								alert('30글자 초과');
								$("#tx").val(($("#tx").val().substr(0, 30)));
							}
						});

						$("button#save")
								.click(
										function() {
											if ($("#tx").val().length == 0
													|| $("#tx").val() == "한줄 토크를 달아주세요! (30자)") {
												alert('DataCheck!');
											} else {
												$("form#replyForm").submit();
											}
										});

					});

	function si_ok() {
		var a = document.getElementById("rdate").value;
		document.frm.brd_date.value = a;
	}

	function sendData() {
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
							
<h4>Q&A 게시판</h4>
							<br>
								<!-- 컨텐츠 넣는 부분 -->
								<form action="/qna/qnaInsert.action" method="post" name="frm"
								id="frm" enctype="multipart/form-data">
								<fieldset>

									<div class="form_table">
										<table border="0" cellspacing="0" summary="표의 요약을 반드시 넣어 주세요">
											<tbody>
												<tr>
													<th scope="row">아이디</th>
													<td colspan="4">${bean.mem_id}</td>
													<div class="item">
														<td><input type="hidden" value="${bean.qna_no}"
															id="qna_no" name="qna_no"> <input type="hidden"
															value="${bean.qna_hit}" id="qna_hit" name="qna_hit">
														</td>
													</div>
													<td></td>
													<td></td>


												</tr>
												<tr>
													<th scope="row">작성일</th>
													<td colspan="2">${bean.qna_date}</td>
													<div class="item">
														<td></td>
													</div>
													<th scope="row">조회수</th>
													<td colspan="2">${bean.qna_hit}</td>
													<div class="item">
														<td></td>
													</div>
												</tr>

												<tr>
													<th scope="row">제목</th>
													<td colspan="4">${bean.qna_title}</td>
													<div class="item">
														<td></td>
													</div>
													<td></td>
													<td></td>
												</tr>



												<tr>
													<th scope="row">내용</th>
													<td colspan="4">${bean.qna_content}</td>
													<div class="item">
														<td></td>
													</div>
													<td></td>
													<td></td>
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
							
							
							
							</div>
						
							<div class="cmt_comm">

						<form
							action="/qna/qnareplyInsert.action?qna_no=${bean.qna_no}&jobs=info"
							name="replyForm" id="replyForm" method="post">
							<fieldset class="fld_cmt" style="width: 800px;">
								<strong class="screen_out">댓글 달기</strong><br> <input
									type="hidden" name="mem_id" value="${bean.mem_id}" /> <input
									type="hidden" name="rep_infono" value="${bean.qna_no}" /> <input
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
									<%-- <a href="/tech/techReplyModify.action?tec_no=${i.rep_infono}&rep_no=${i.rep_no}&job=modify">수정</a><span class="txt_bar">|</span> --%>
									<a href="#">수정</a><span class="txt_bar">|</span>
									<a
											href="/qna/qnaReplyDelete.action?qna_no=${i.rep_infono}&rep_no=${i.rep_no}&jobs=info">삭제</a><span class="txt_bar">
								</div>
								
							</div>
						</c:forEach>
					</c:if>
					</div>
							
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