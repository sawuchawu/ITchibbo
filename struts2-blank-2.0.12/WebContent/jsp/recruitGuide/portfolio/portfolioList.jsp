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
<link href="/css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="/css/jcarousel.css" rel="stylesheet" />
<link href="/css/flexslider.css" rel="stylesheet" />
<link href="/css/style.css" rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<script type="text/javascript" src="/js/jquery-2.0.0.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script type="text/javascript">


$(document).ready(function(){
	
	
	$("button").click(function() {
		searchUrl = "/portfolio/portfolioSearchJob.action?por_job=";
		if($(this).val() == "developer") {
			searchUrl += $(this).val();
		} else if($(this).val() == "Designer") {
			searchUrl += $("#Designer").val();
		} else if($(this).val() == "planner") {	
			searchUrl += $("#Planner").val();
		}
		
		$.ajax({
			url: searchUrl,
	    	type:"get",
	    	dataType:"json",
	    	success:function(data){
	    		temp="";
	    		
	    		$.each(data, function(i, dom) {
	    			    			
	    			temp += 
	    			"<li class='item-thumbs col-lg-3 design' data-id='id-0' data-type='web'>" +
					"<input type = 'hidden' value = '" + dom.por_no + "'>" +
					
					"<a class='hover-wrap fancybox' data-fancybox-group='gallery' title='Portfolio name' href='/portfolio/hit.action?por_no=" + dom.por_no + "&job=info&currentPage=1'>" + 
					
					"<span class='overlay-img'></span>" +
					"<span class='overlay-img-thumb font-icon-plus'></span></a>" +
					"<img src='/img/portfolioUp/" + dom.imgFileName +"' width = '400' height = '300'/></li>";
	    			
	    		});
	    		
	    		if(temp != "") {
	    			$("#sb").hide();
	    		}
	    		
	    		$("ul#thumbs").html(temp);
	    	}
			
		}); 
	});		
	
	
	
		
		    		
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
					<li class="active">포트폴리오</li>
				</ul>
			</div>
		</div>
	</div>
	</section>
	<section id="content">
	<div class="container">
		<div class="row">
<div class="col-lg-8">
			<div class="col-lg-12">
				<ul class="portfolio-categ filter">
					
					<li class="web"><button id = "" value = "All"  onclick = "location.href = '/portfolio/portfolioList.action';">All</button>
					<li class="web"><button id = "Developer" value = "developer">Developer</button>
					<li class="web"><button id = "Designer" value = "Designer">Designer</button>
					<li class="web"><button id = "Planner" value = "planner">Planner</button>
				</ul>
			</div>
				
				
			
			<div class="col-lg-99">
				<section id="projects">
				<ul id="thumbs" class="portfolio">
					<section id = "list">
				   <c:forEach var = "i" items = "${list}" varStatus ="cnt">
						<li class="item-thumbs col-lg-3 design" data-id="id-0" data-type="web">
						<input type = "hidden" value = "${i.por_no}">
						
						<a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Portfolio name" href="/portfolio/hit.action?por_no=${i.por_no}&job=info&currentPage=${currentPage}">
						
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
						
						<img src="/img/portfolioUp/${i.imgFileName}" width = "400" height = "300"/>
						</li>
					</c:forEach>
					</section>
				</ul>
					
				<div class = "row">
					<div class="col-lg-12">
					</div>
						
				</div>
					<div class="paging" align = "center" id = "sb">${sb}</div>
				</section>
				</div>
				
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
						<li><i class="icon-angle-right"></i><a href="/review/reviewList.action">취업후기</a><span id="j1"></span></li>
						<li><i class="icon-angle-right"></i><a href="/cov/covList.action">합격자소서</a><span id="j1"></span></li>
						<li><i class="icon-angle-right"></i><a href="/portfolio/portfolioList.action">포트폴리오</a><span id="j1"></span></li>
						<li><i class="icon-angle-right"></i><a href="/jsp/recruitGuide/jobAnalysys.jsp">직무분석</a><span id="j1"></span></li>

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