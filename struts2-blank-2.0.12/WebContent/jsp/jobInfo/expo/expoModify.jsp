<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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




<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<script type="text/javascript" src="/js/jquery-2.0.0.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link href="/skins/default.css" rel="stylesheet" />
<script type="text/javascript">

	
	/* $(document).ready(function() {
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

	}); */
	/* obj = document.frm;
	d=obj.file.value;
	if(d==""||d==null){	
		alert("파일을 첨부해주세요");
	}else{
		obj.submit();
		} */
	$(document).ready(function() {
		$("a#modify").click(function() {
			if($("#file").val()==""||$("#file").val()==null){
				alert("파일을 첨부해주세요");
			}else{
				$("form#mfrm").submit();
			}
		});	
	});
</script>
<script type="text/javascript">
function si_ok(){
	a=document.getElementById("a").value;
	b=document.getElementById("b").value;
	c=document.getElementById("c").value;
	d=document.getElementById("d").value;
	e=document.getElementById("e").value;
	f=document.getElementById("f").value;
	document.frm.exp_date.value=a+"년"+b+"월"+c+"일"+"~"+d+"년"+e+"월"+f+"일";
}

function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#blah').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
    }
}
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
					<li class="active">취업박람회</li>
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
			<form action="/expo/dataModify.action" method="post" name = "mfrm" id = "mfrm" enctype = "multipart/form-data">
					<input type = "hidden" name = "exp_no" value = "${bean.exp_no}">
					<input type = "hidden" name = "jobs" value = "modify">
				<table width="1000" height="" class="tbl_type" cellspacing = "0">
				
					<tbody>
						<tr>
							
							<td rowspan = "10" width = "620"><img id="blah" src = "/img/expo/${bean.fileFileName }"" width = "600"/></td>
							<td height = "15"> 
								${bean.mem_id}
							</td> 
							
							
							
						</tr>
						<tr>
							<td class = "td_title" height = "30"> 
								<input type = "text" name = "exp_title" value = "${bean.exp_title}">
								
							</td>
						</tr>
						<tr>
							<td height = "15px"> 시작
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
									</td>
						</tr>
						<tr>
									<td height = "15px"> 마감
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
									<input type="hidden" value="${bean.exp_date}" name="exp_date" id="exp_date">
								
							</td>
						</tr>
						<tr>
							
						</tr>
						<tr>
							<td height = "30"> 
							
  							<img alt="" src="/img/button/eye.jpg" width="15">
							&nbsp;&nbsp;${bean.exp_hit }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							
							
  							<img alt="" src="/img/button/like.jpg" width="15">
							&nbsp;&nbsp;${bean.exp_like }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td>
								<img src = "/img/ad.jpg" width = "200"/><br>
							</td>
						</tr>
						
						
						
						<tr>
						<th scope="row" height = "15">IMG 파일</th>
						<tr>
						<td>
							<div class="item">
								<input title="레이블 텍스트" type="file" name = "file" id = "file" onchange="readURL(this);">
							</div>
						</td>
						</tr>
					</tbody>
				</table>
				</form>
					<div align="center">
						<br><br>
							<a class="btn_big" href="#" name = "modify" id = "modify"><strong>수정</strong></a>
							
							<a class="btn_big" href="/expo/expoList.action"><span>목록</span></a> 
					</div>
				</fieldset>
				
				
				
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
							<li><i class="icon-angle-right"></i><a href="/news/newsList.action">취업뉴스</a><span id="j3"></span></li>
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