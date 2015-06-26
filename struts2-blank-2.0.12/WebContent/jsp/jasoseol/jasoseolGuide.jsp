<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>IT취뽀 - 자기소개서 쓰기</title>
<!-- css -->
<link href="/css/bootstrap.min.css" rel="stylesheet" />
<link href="/css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="/css/jcarousel.css" rel="stylesheet" />
<link href="/css/flexslider.css" rel="stylesheet" />
<link href="/css/style.css" rel="stylesheet" />
<link href="/css/recruitList.css" rel="stylesheet" />
<link href="/css/button.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="/css/tcal.css" />
<link href="/skins/default.css" rel="stylesheet" />
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/jquery-2.0.0.js"></script>
<script src="/js/jquery.easing.1.3.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/jquery.fancybox.pack.js"></script>
<script src="/js/jquery.fancybox-media.js"></script>
<script src="/js/google-code-prettify/prettify.js"></script>
<script src="/js/jquery.flexslider.js"></script>
<script src="/js/animate.js"></script>
<script src="/js/custom.js"></script>
<script type="text/javascript" src="/js/jquery-2.0.0.js"
	charset="EUC-KR"></script>
<script type="text/javascript" charset="UTF-8">
$(document).ready(function() {
	
	$("a#write_resume").click(function(){
		$("form#frm").submit();
	});
	
	$("select#selectCompany").change(function() {
		$("input#choiceCompany").val($(this).val());
	});
	
});
</script>
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
						<li class="active">자기소개서</li>
					</ul>
				</div>
			</div>
		</div>
		</section>
		<section id="content">
		<div class="container">
			<div class="row">
				<div class>
					<article>
					<div class="post-image">
						<div class="post-heading">
							<div class="container-fluid index_jumbotron hidden-xs">
								<div class="index_container" align="center">
									<div class="row">
										<div class="col-sm-12 index_jumbotron_headcopy" align="center">
											<p>
											<h1>
												세상에서 <span style=""><b>가장 쉬운</b></span> IT 취업 뽀개기!
											</h1>
										</div>
									</div>
									<table align="center">
									<colgroup><col ><col width="80"><col ></colgroup>
										<tr>
											<td>
												<div class="main_image"></div> 
												<img src="http://jasoseol.com/assets/index/main_image-faccf54b7b260feceeb52f33efb64b23.png" alt="" />
											</td>
											<td></td>
											<td>
												<div class="go_to_write">
													<div class="row index_jumbotron_inputhead"><h4>복잡한 절차 없이</h4>
													</div>
													<form action="/jasoseol/jasoseolChoiceCompany.action" method = "post" id = "frm" name = "frm">
														<div class="row index_jumbotron_inputbox">
															<div class="btn-group">
																<select id="selectCompany"  name = "selectCompany" style="font-size:18px" >
																	<option selected="selected">선택하세요</option>
																		<c:forEach var="i" items="${list}">
																			<option value="${i.com_name}" id="${i.com_name}">${i.com_name.split("_")[0]}</option>
																		</c:forEach>		
																</select>
																<input type = "hidden" id = "choiceCompany" name = "choiceCompany" value = ""/>
																<input type = "hidden" id = "job" name = "job" value = "success"/>
															</div>
															<label>&nbsp;&nbsp;&nbsp;회사 선택</label>
														</div>
														
														<div class="row">
															<a id="write_resume" type = "submit" class="btn btn-theme">바로쓰는 자기소개서</a>
														</div>
													</form>
												</div>
											</td>
										</tr>
									</table>
									<div class="row index_jumbotron_how_many_xs" align="center">
										<br>
										<p>
										<h3>
											지금까지 <b>[ 22,405 ]</b> 개의 자소서가 탄생했습니다.
										</h3>
									</div>
								</div>
							</div>
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
</body>
</html>