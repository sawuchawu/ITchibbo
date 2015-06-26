<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Moderna - Bootstrap 3 flat corporate template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="http://bootstraptaste.com" />
<!-- css -->
<link href="/css/bootstrap.min.css" rel="stylesheet" />
<link href="/css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="/css/jcarousel.css" rel="stylesheet" />
<link href="/css/flexslider.css" rel="stylesheet" />
<link href="/css/style.css" rel="stylesheet" />


<!-- Theme skin -->
<link href="/skins/default.css" rel="stylesheet" />

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    
<link href="/css/portfolioEdit.css" rel="stylesheet" />
<script type="text/javascript" src="/js/jquery-2.0.0.js" charset = "EUC-KR"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script type="text/javascript">
/* 이미지 미리보기 */
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#blah').attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
        /* 기간 */
        function si_ok(){
	a=document.getElementById("a").value;
	b=document.getElementById("b").value;
	c=document.getElementById("c").value;
	d=document.getElementById("d").value;
	e=document.getElementById("e").value;
	f=document.getElementById("f").value;
	document.frm.exp_date.value=a+"년"+b+"월"+c+"일"+"~"+d+"년"+e+"월"+f+"일";
}
        
</script>
<script type="text/javascript" charset = "EUC-KR">
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

	$(document).ready(function() {
		$("a#save").click(function() {
			if($("#file").val()==""||$("#file").val()==null){
				alert("파일을 첨부해주세요");
			}
			else{
			$("form#frm").submit();
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
					<li><a href="#">Features</a><i class="icon-angle-right"></i></li>
					<li class="active">Typography</li>
				</ul>
			</div>
		</div>
	</div>
	</section>
	<section id="content" >
	<div class="container" >
		<div class="row">
			
				
			
			<div class="col-lg-8">
			
				<!-- UI Object -->
				<form action="/expo/dataInsert.action" method="post" name = "frm" id = "frm" enctype = "multipart/form-data">
					<fieldset>
						<legend>EXPO</legend>
						<div class="form_table">
						<table border="0" cellspacing="0" summary="표의 요약을 반드시 넣어 주세요">
						<tbody>
							<tr>
						<td rowspan="5" width="100" height="150"><img id="blah" width="300" height="400"/></td>
						
						</tr>
						<tr>
						<th scope="row">아이디</th>
						<td>
							
								<%=session.getAttribute("id") %>
							<input type="hidden" id="mem_id" name="mem_id" value="<%=session.getAttribute("id") %>">
						</td>
						</tr>
						<tr>
						<th scope="row">제목</th>
						<td>
							<div class="item">
								<input title="레이블 텍스트" class="i_text" type="text" name = "exp_title" id = "exp_title">
							</div>
						</td>
						</tr>
						<tr>
						<th scope="row">기간</th>
						<td>
							<div class="item">
								<!-- <input title="레이블 텍스트" class="i_text" type="text" name = "por_job" id = "por_job"> -->
							<select style="width: 85px;" name="a" SIZE="1" id="a">
									<c:forEach var="i"  begin="2015" end="2020">
										<option value="${i}">${i}</option>
									</c:forEach>	
									</select>
									<select style="width: 50px;" name="b" SIZE="1" id="b">
									<c:forEach var="i"  begin="1" end="12">
										<option value="${i}">${i}</option>
									</c:forEach>	
									</select>
									<select  style="width: 50px;" name="c" SIZE="1" id="c">
									<c:forEach var="i"  begin="1" end="30">
										<option value="${i}">${i}</option>
									</c:forEach>	
									</select>
									~
									<select style="width: 85px;" name="d" SIZE="1" id="d">
									<c:forEach var="i"  begin="2015" end="2020">
										<option value="${i}">${i}</option>
									</c:forEach>	
									</select>
									<select style="width: 50px;" name="e" SIZE="1" id="e">
									<c:forEach var="i"  begin="1" end="12">
										<option value="${i}">${i}</option>
									</c:forEach>	
									</select>
									<select style="width: 50px;" name="f" SIZE="1" id="f" onblur="si_ok()">
									<c:forEach var="i"  begin="1" end="30">
										<option value="${i}">${i}</option>
									</c:forEach>	
									</select>
									<input type="hidden" value="" name="exp_date" id="exp_date">
								
								
							</div>
						</td>
						</tr>
						
					
						
						
						
						<tr>
						<th scope="row">IMG 파일</th>
						<td>
							<div class="item">
								<input title="레이블 텍스트" type="file"  name="file" id="file" value="d" onchange="readURL(this);" >
							</div>
						</td>
						</tr>
					
						</tbody>
						</table>
					</div>
					</fieldset>
					
					<div align="right">
						<a class="btn_big" href="#" id="save"><strong>저장</strong></a>
						<a class="btn_big" href="/expo/expoList.action" id="cancel"><strong>취소</strong></a>
					</div>
				</form>
				
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
</body>
</html>