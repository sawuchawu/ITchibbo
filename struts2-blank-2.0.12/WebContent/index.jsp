<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>IT취뽀 - IT 취업정보 사이트</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="http://bootstraptaste.com" />
<!-- css -->
<link href="/css/bootstrap.min.css" rel="stylesheet" />
<link href="/css/fancybox/jquery.fancybox.css" rel="stylesheet">
<!-- <link href="/css/jcarousel.css" rel="stylesheet" /> -->
<link href="/css/flexslider.css" rel="stylesheet" />
<link href="/css/style.css" rel="stylesheet" />
<link href="/skins/default.css" rel="stylesheet" />
<link href='/css/fullcalendar.css' rel='stylesheet' />
<link href='/css/fullcalendar.print.css' rel='stylesheet' media='print' />

<!-- Theme skin -->

<script type="text/javascript" src="/js/jquery-2.0.0.js"></script>
<script type="text/javascript">
function popupLogin(){
	var popUrl = "/jsp/login/login.jsp";	//팝업창에 출력될 페이지 URL
	var popOption = "width=525, height=685, resizable=no, scrollbars=no, status=no";    //팝업창 옵션(optoin)
		window.open(popUrl,"",popOption);
	}
function popupJoin(){
	var popUrl = "/jsp/login/signup.jsp";	//팝업창에 출력될 페이지 URL
	var popOption = "width=525, height=685, resizable=no, scrollbars=no, status=no";    //팝업창 옵션(optoin)
		window.open(popUrl,"",popOption);
	}	
function logProcess(id) {
	var ids=id;
	//alert(ids+" "+$("input#lid").val());
	if(ids==='dd'&& $("input#lid").val()=='null'){// 로그인해야됨
		$("#log").text('로그인');
		$("#log").attr("href", "/jsp/login/login.jsp");
		$("#log2").text('회원가입');
		$("#log2").attr("href", "/jsp/login/signup.jsp");
	}else{// 로그아웃
		if($("input#lmf").val()=='0'){
				$("#adm").text('관리자');
		}
		$("#log2").text('로그아웃');
		$("#log2").attr("href", "/app/logout.action");
		$("#log").text('마이페이지');
		$("#log").attr("href", "/app/memInfo.action?mem_id=${id}&job=info");
	}

	/* 최신공고 리스트 */
	$.ajax({
		url: "/app/mainList.action",
		type: "get",
		dataType: "json",
		success: function(data){
			var tData="";
			var rData="";
			var cData="";
			var pData="";
			
			$.each(data, function(i, dom){

				if(dom.tec_title!=undefined){
					tData+="<a href=\"/tech/techHit.action?tec_no="+dom.tec_no+"&job=info\">"+dom.tec_title+"</a><br>";
				}
				if(dom.rev_title!=undefined){
					rData+="<a href=\"/review/hit.action?rev_no="+dom.rev_no+"&job=info\">"+dom.rev_title+"</a><br>"
				}
				if(dom.cov_title!=undefined){
					cData+="<a href=\"/cov/covInfo.action?cov_no="+dom.cov_no+"&job=info\">"+dom.cov_title+"</a><br>"
				}
				if(dom.por_title!=undefined){
					pData+="<a href=\"/portfolio/hit.action?por_no="+dom.por_no+"&job=info\">"+dom.por_title+"</a><br>"
				}
				 
			});  
 			$("#tecMt").html(tData);
			$("#recMt").html(rData);
			$("#covMt").html(cData);
			$("#porMt").html(pData); 
		}
	});
	
}
</script>
</head>
<body onload="logProcess('dd')">
<!-- <form action="/app/logout.action" method="post"><button type="submit">logout</button></form> -->
<%-- ${id }
<% getID =session.getAttribute("id") %> --%>
<div id="wrapper">
	<!-- start header -->
	<input type="hidden" value="<%=session.getAttribute("id") %>" id="lid">
	<input type="hidden" value="<%=session.getAttribute("mf") %>" id="lmf">
	<header>
        <div class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/index.jsp"><font size="13"><span>IT</span>취뽀</font></a>
                    <ul class="nav navbar-nav">
                        <li><a href="#" id="log"></a></li> <!-- 로그아웃 바꾸기 -->
                        <li><a href="#" id="log2"></a></li> <!-- 마이페이지 바꾸기 -->
                    </ul>
                </div>
             
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="/jsp/recruitInfo/recruit.jsp" class="dropdown-toggle " >채용공고 <b class=" icon-angle-down"></b></a>
                        </li>
                        <li class="dropdown">
                            <a href="/jasoseol/jasoseolChoiceCompany.action?job=choice" class="dropdown-toggle " >자기소개서 <b class=" icon-angle-down"></b></a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">취업정보 <b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="/expo/expoList.action">취업 박람회</a></li>
                                <li><a href="/tech/techList.action">IT기술 동향</a></li>
								<li><a href="/news/newsList.action">취업 뉴스</a></li>
								<li><a href="/jsp/jobInfo/lecture/lecture.jsp">취업 강의</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">취업가이드 <b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="/review/reviewList.action">취업 후기</a></li>
                                <li><a href="/cov/covList.action">합격 자소서</a></li>
								<li><a href="/portfolio/portfolioList.action">포트폴리오</a></li>
								<li><a href="/jsp/recruitGuide/jobAnalysys.jsp">직무분석</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">커뮤니티 <b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="/brd/brdList.action">자유게시판</a></li>
                                <li><a href="/qna/qnaList.action">Q&A</a></li>
                            </ul>
                        </li>
                        <li><a href="/jsp/contact/contact.jsp">CONTACT</a></li>
                        <li><a href="/app/adMemList.action" id="adm"></a></li>
                        <!-- <li class="dropdown">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false" id="adm">관리자<b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="/app/adMemList.action">관리</a></li>
                                <li><a href="/app/adMemList.action">메뉴관리</a></li>
                            </ul>
                        </li> -->
                    </ul>
                </div>
            </div>
        </div>
	</header>
	<!-- end header -->
	<section id="featured">
	<!-- start slider -->
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
	<!-- Slider -->
        <div id="main-slider" class="flexslider">
            <ul class="slides">
              <li>
                <img src="img/slides/1.jpg" alt="" />
                <div class="flex-caption">
					<p>IT직무 채용 및 취업 정보 제공</p> 
                </div>
              </li>
              <li>
                <img src="img/slides/2.jpg" alt="" />
                <div class="flex-caption">
					<p>IT직무 채용공고 일정 관리</p>
                </div>
              </li>
              <li>
                <img src="img/slides/3.jpg" alt="" />
                <div class="flex-caption">
					<p>IT인들만의 커뮤니티 공간</p>
                </div>
              </li>
            </ul>
        </div>
	<!-- end slider -->
			</div>
		</div>
	</div>	
	</section>

	<!-- <section class="callaction"> -->
	<div class="container">
		<h4 class="heading">&nbsp;&nbsp;최신 공고</h4>
		<div class="row">
			<div class="col-lg-12">
				<div class="big-cta">
				 	<div class="cta-text">
						
						<iframe src="/jsp/myPage/mainCalendar.jsp" frameborder="0" width="100%" height="230"></iframe>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- </section> -->
	<section id="content">
	<div class="container">
		<!-- Portfolio Projects -->
		<!-- <div class="row">
			<div class="col-lg-12">
				
				<div class="row">
					
					
				</div>
			</div>
		</div> -->
		<div class="row">
			<div class="col-lg-12">
				<div class="row">
					<div class="col-lg-3">
						<div class="box">
							<div class="box-gray aligncenter">
								<h4>IT 기술동향</h4>
								<div class="icon">
								<i class="fa fa-pagelines fa-3x"></i>
								</div>
								<p id="tecMt" style="text-align: left;">
								
								</p>
									
							</div>
							<div class="box-bottom">
								<a href="/tech/techList.action">Learn more</a>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="box">
							<div class="box-gray aligncenter">
								<h4>취업후기</h4>
								<div class="icon">
								<i class="fa fa-edit fa-3x"></i>
								</div>
								<p id="recMt" style="text-align: left;">
								
								</p>
									
							</div>
							<div class="box-bottom">
								<a href="/review/reviewList.action">Learn more</a>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="box">
							<div class="box-gray aligncenter">
								<h4>합격 자소서</h4>
								<div class="icon">
								<i class="fa fa-code fa-3x"></i>
								</div>
								<p id="covMt" style="text-align: left;">
								
								</p>
									
							</div>
							<div class="box-bottom">
								<a href="/cov/covList.action">Learn more</a>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="box">
							<div class="box-gray aligncenter">
								<h4>포트폴리오</h4>
								<div class="icon">
								<i class="fa fa-desktop fa-3x"></i>
								</div>
								<p id="porMt" style="text-align: left;">
								
								</p>
									
							</div>
							<div class="box-bottom">
								<a href="/portfolio/portfolioList.action">Learn more</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- divider -->
		<div class="row">
			<div class="col-lg-12">
				<div class="solidline">
				</div>
			</div>
		</div>
		<!-- end divider -->
		

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
<script src="/js/jquery.js"></script>
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
</body>
</html>
