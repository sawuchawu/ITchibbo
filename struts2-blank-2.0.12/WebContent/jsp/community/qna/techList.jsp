<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>	

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>IT취뽀 - IT 취업정보 사이트</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="http://bootstraptaste.com" />
<!-- css -->
<link href="/css/finallist.css" rel="stylesheet" />
<link href="/css/button.css" rel="stylesheet" />
<link href="/css/bootstrap.min.css" rel="stylesheet" />
<link href="/css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="/css/jcarousel.css" rel="stylesheet" />
<link href="/css/flexslider.css" rel="stylesheet" />
<link href="/css/style.css" rel="stylesheet" />
<script type="text/javascript" src="/script/jquery-2.0.0.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(this).location.reload();
	});
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
					<li class="active">tech</li>
				</ul>
			</div>
		</div>
	</div>
	</section>
	<section id="content">
	<div class="container">
		<div class="row">
			<div class="col-side">
				<h4>기술동향</h4>
				<h5>다</h5>
				<h5>른</h5>
				<h5>거</h5>
				<h5>임</h5>
			</div>
			
			<div class="col-lg-12">
				<table class="tbl_type" border="1" cellspacing="0" summary="게시판의 글제목 리스트">
<caption>게시판 리스트</caption>
<colgroup>
<col width="100">
<col width>
<col width="300">
<col width="100">
</colgroup>
<thead>
<tr>

<th scope="col">No</th>
<th scope="col">제목</th>
<th scope="col">등록일</th>
<th scope="col">조회수</th>

</tr>
</thead>
<tbody>
<c:forEach var="i" items="${list}" varStatus="cnt">
<tr><td>${cnt.count}</td>
<td class="title"><a href="/tech/techHit.action?tec_no=${i.tec_no}&job=info&currentPage=${currentPage}">${i.tec_title}</a></td>
<td>${i.tec_date}</td><td>${i.tec_hit}</td>
</tr>
</c:forEach>
</tbody>
</table>
			</div>
			
<!-- //UI Object -->
<div align="right">
		<!-- <a class="btn_big" href="javascript:sendData()"><strong>저장</strong></a>  -->
		<a class="btn_big"
			href="/jsp/jobInfo/tech/techEdit.jsp"><span>글쓰기</span></a>

	</div>
		
	<div class = "row">
						<div class="col-lg-12">
							<div class="paging" align = "center">${sb}</div>
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