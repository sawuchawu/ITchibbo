<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>	

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
<link href="/skins/default.css" rel="stylesheet" />

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<script type="text/javascript" src="/js/jquery-2.0.0.js" charset = "EUC-KR"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<script type="text/javascript">

	
	$(document).ready(function() {
			var cnt=0;
		$("#like").click(function(){
		if(cnt==0){
			$.ajax(
					{	
						url:"/expo/like.action?exp_no="+$("#like").val(),
						type:"get",
						dataType:"json",
						success:function(data){			
						
							
							$.each(data,function(i,dom){
								
								temp=dom.exp_like;
								
							});
							$("#tt").html(temp);
						}				
					});
		cnt=1;
		}
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
		
		$("button#save").click(function() {
			if ($("#tx").val().length == 0
					|| $("#tx").val() == "한줄 토크를 달아주세요! (30자)") {
				alert('DataCheck!');
			} else {
				$("form#replyForm").submit();
			}
		});

	});
</script>



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
					<li class="active">EXPO</li>
				</ul>
			</div>
		</div>
	</div>
	</section>
	<section id="content">
	<div class="container">
		<div class="row">
	
			
			<!-- 포트폴리오 info 테이블 -->
			
			<div class="col-lg-8">
			
			<fieldset>
			<legend>EXPO</legend>
				<table width="" height="" class="tbl_type" cellspacing = "0">
					<tbody>
						<tr>
							<td rowspan = "5" width = "620"><img src = "/img/expo/${bean.fileFileName}" width = "600"/></td>
							<td height = "15"> ${bean.mem_id}</td>
						</tr>
						<tr>
							<td class = "td_title" height = "30"> ${bean.exp_title}</td>
						</tr>
						<tr>
							<%-- <td height = "15px"> ${bean.por_job}</td> --%>
						</tr>
						<tr>
							
							<td height = "30"> 
							
  							<img alt="" src="/img/button/eye.jpg" width="15">
							&nbsp;&nbsp;${bean.exp_hit }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							 
						
  							<button id="like" value="${bean.exp_no}"><img alt="" src="/img/button/like.jpg" width="15"></button>
							&nbsp;&nbsp;<span id="tt">${bean.exp_like }</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>${bean.exp_date}
							</td>
						</tr>

						<tr>
							<td>
								<img src = "/img/ad.jpg" width = "200"/><br>
							</td>
						</tr>
					</tbody>
				</table>
				
					<div align="center">
					
						<br><br>
							<a class="btn_big" href="/expo/dataInfo.action?exp_no=${bean.exp_no}&jobs=modify"><strong>수정</strong></a>
							<a class="btn_big" href="/expo/dataDelete.action?exp_no=${bean.exp_no}"><strong>삭제</strong></a>
							<a class="btn_big" href="/expo/expoList.action"><span>목록</span></a> 
					</div>
				</fieldset>
				
				<div class="cmt_comm">

					<form action="/expo/exporeplyInsert.action?exp_no=${bean.exp_no}&jobs=info" name="replyForm" id="replyForm" method="post">
						<fieldset class="fld_cmt" style="width: 800px;">
							
							<strong class="screen_out">댓글 달기</strong><br>
							
							
							<input type="hidden" name = "mem_id" value="${bean.mem_id}" /> 
							<input type="hidden" name="rep_infono" value="${bean.exp_no}" /> 
							<input type="hidden" name="rep_job" value="new" /><br>
							
				
							<textarea name="rep_content" id="tx" class="tf_cmt" cols="90" rows="5" title="한줄 토크를 달아주세요" style="width: 716px;">add talk</textarea>
				
							<button name="save" id="save" type="button" class="img_sample btn_cmt" style="width: 79px;">등록</button><br>
				
							<p class="info_append">
								<span class="screen_out">입력된 바이트 수 : </span> 
								<span class="txt_byte" id="read"></span> / 30자 <span class="txt_bar">|</span> <a href="#none">댓글 운영원칙</a>
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
									<a href="#none">수정</a><span class="txt_bar">|</span>
									<a href="#none">삭제</a><span class="txt_bar">
								</div>
								
							</div>
						</c:forEach>
					</c:if>
				</div>
					<center>
						<div id="page" style="font-size: 16px;"></div>
					</center>
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
							<li><i class="icon-angle-right"></i><a href="/expo/expoList.action">취업박람회</a><span id="j1"></span></li>
							<li><i class="icon-angle-right"></i><a href="/tech/techList.action">IT기술동향</a><span id="j2"></span></li>
							<li><i class="icon-angle-right"></i><a href="#">취업뉴스</a><span id="j3"></span></li>
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