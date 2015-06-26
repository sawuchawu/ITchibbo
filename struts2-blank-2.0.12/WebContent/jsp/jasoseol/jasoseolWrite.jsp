<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>IT취뽀 - 자기소개서 쓰기</title>
<!-- css -->
<link href="/css/bootstrap.min.css" rel="stylesheet" />
<link href="/css/fancybox/jquery.fancybox.css" rel="stylesheet" />
<link href="/css/jcarousel.css" rel="stylesheet" />
<link href="/css/flexslider.css" rel="stylesheet" />
<link href="/css/style.css" rel="stylesheet" />
<link href="/css/button.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="/css/tcal.css" />
<link href="/skins/default.css" rel="stylesheet" />
<script type="text/javascript" src="/js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="/js/fileSaver.js"></script>
<script type="text/javascript" src="/js/blob.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js" ></script>
<script type="text/javascript">
	
	// 파일 다운로드
	function downloadFile() {
		var companyName = $("input#companyName").val();
		var blob = new Blob([$("textarea#txAll").val()], {type: "doc/plain;charset=UTF-8"});
//		var blob = new Blob([$("div#txAllDiv").val()], {type: "doc/plain;charset=UTF-8"});
		saveAs(blob, companyName + "자소서.doc");
    }
	
	
	// val는 문항수. 5-val 만큼 숨기기
	function title(val) {
		
		for (var i = 1; i <= 5 - val; i++) {
			var str = "#test" + i;
			$(str).hide();
		}
	}

	
	$(document).ready(function() {
		$("#txAllDiv").hide();
		$("textarea[name=tx]").hide();
		$("input[name=tc]").hide();
		$("#tx1").show();
		$("#tx1").focus();
		$("#textCounter1").show();
		$("#textCounter1").focus();
		
		
		// 문항수 개수
		question = $("input#questionNumber").val();
		
		// 문항수 개수에 맞게 client에 뿌려줌
		title(question);		
		
		
		$("#tab1").click(function() {
			$("textarea[name=tx]").hide();
			$("input[name=tc]").hide();
			$("#tx1").show();
			$("#tx1").focus();
			$("#textCounter1").show();
			if ($("#tx1").val() == 0) {
				$("#read").text(0);
			} else {
				$("#read").text(("#tx1").val().length);

			}
		});
		$("#tab2").click(function() {
			$("textarea[name=tx]").hide();
			$("input[name=tc]").hide();
			$("#tx2").show();
			$("#tx2").focus();
			$("#textCounter2").show();
			if ($("#tx2").val() == 0) {
				$("#read").text(0);
			} else {
				$("#read").text($("#tx2").val().length);

			}
		});
		$("#tab3").click(function() {
			$("textarea[name=tx]").hide();
			$("input[name=tc]").hide();
			$("#tx3").show();
			$("#tx3").focus();
			$("#textCounter3").show();
			if ($("#tx3").val() == 0) {
				$("#read").text(0);
			} else {
				$("#read").text($("#tx3").val().length);

			}
		});
		$("#tab4").click(function() {
			$("textarea[name=tx]").hide();
			$("input[name=tc]").hide();
			$("#tx4").show();
			$("#tx4").focus();
			$("#textCounter4").show();
			if ($("#tx4").val() == 0) {
				$("#read").text(0);
			} else {
				$("#read").text($("#tx4").val().length);
			}
		});
		$("#tab5").click(function() {
			$("textarea[name=tx]").hide();
			$("input[name=tc]").hide();
			$("#tx5").show();
			$("#tx5").focus();
			$("#textCounter5").show();
			if ($("#tx5").val() == 0) {
				$("#read").text(0);
			} else {
				$("#read").text($("#tx5").val().length);
			}
		});

		$("#tx1").keyup(function() {
			$("#read").html(($(this).val().length));
			if($("#textCounter1").val()==""){
				alert("[글자수]를 입력해주세요.");
				$(this).val("");
				
			}else{
				if ($(this).val().length > $("#textCounter1").val()) {
					alert($("#textCounter1").val()+'자 초과되었습니다.');
					$("#tx1").val(($("#tx1").val().substr(0, $("#textCounter1").val())));
				}
			}
			$("#read").html(($(this).val().length));
		});
		$("#tx2").keyup(function() {
			$("#read").html(($(this).val().length));
			if($("#textCounter2").val()==""){
				alert("[글자수]를 입력해주세요.");
				$(this).val("");
				
			}else{
				if ($(this).val().length > $("#textCounter2").val()) {
					alert($("#textCounter2").val()+'자 초과되었습니다.');
					$("#tx2").val(($("#tx2").val().substr(0, $("#textCounter2").val())));
				}
			}
			$("#read").html(($(this).val().length));
		}
		);
		$("#tx3").keyup(function() {
			$("#read").html(($(this).val().length));
			if($("#textCounter3").val()==""){
				alert("[글자수]를 입력해주세요.");
				$(this).val("");
				
			}else{
				if ($(this).val().length > $("#textCounter3").val()) {
					alert($("#textCounter3").val()+'자 초과되었습니다.');
					$("#tx3").val(($("#tx3").val().substr(0, $("#textCounter3").val())));
				}
			}
			$("#read").html(($(this).val().length));
		});
		$("#tx4").keyup(function() {
			$("#read").html(($(this).val().length));
			if($("#textCounter4").val()==""){
				alert("[글자수]를 입력해주세요.");
				$(this).val("");
				
			}else{
				if ($(this).val().length > $("#textCounter4").val()) {
					alert($("#textCounter4").val()+'자 초과되었습니다.');
					$("#tx4").val(($("#tx4").val().substr(0, $("#textCounter4").val())));
				}
			}
			$("#read").html(($(this).val().length));
		});
		$("#tx5").keyup(function() {
			$("#read").html(($(this).val().length));
			if($("#textCounter5").val()==""){
				alert("[글자수]를 입력해주세요.");
				$(this).val("");
				
			}else{
				if ($(this).val().length > $("#textCounter5").val()) {
					alert($("#textCounter5").val()+'자 초과되었습니다.');
					$("#tx5").val(($("#tx5").val().substr(0, $("#textCounter5").val())));
				}
			}
			$("#read").html(($(this).val().length));
		});

		$("#save").click(function() {
			if ($("textarea[name=tx]").val().length == 0 || $("textarea[name=tx]").val() == " ") {
				alert('저장할 내용이 없습니다.');
			} else {
				var temp ="";
				
				for(var i=1; i<=question; i++) {
					var moon = "문항" + i;
					var qu = "input#question" + i;
					var tx = "#tx" +i;
					temp += i + ". " + $(qu).val() + "\n" + $(tx).val() + "\n\n------------------------------------------------------------------------------------------------\n\n";
				
					/* temp += i + ". " +  $(qu).val() + "<br>"
					        "<tr><td>"+ $(tx).val() +"</td></tr><br>"; */
							
				}
				
				temp += "\n\n\n\n쉽고, 편리한 자기소개서 작성은 <IT취뽀>";
				
				$("#txAll").val(temp);
				//$("#txAllDiv").html(temp);
				
				downloadFile();
			}
		});
	});;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            

</script>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              

</head>


<body data-spy="scroll" data-target=".bs-docs-sidebar">

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
						<li class="active">자기소개서</li>
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
							<fieldset>
								<form action="" name="frm" id="frm" method="post">
									<legend>
										<c:forEach var = "i" items = "${list}">
											<input type="hidden" id="name_resume"
												class="ga-name-resume name-resume" class="tooltipstered"
												value="" READONLY />
											<p>${i.com_name.split("_")[0]}</p>
											<input type="hidden" id = "questionNumber" name = "questionNumber" value= "${i.com_name.split('_')[1]}">
											<input type="hidden" id = "companyName" name = "companyName" value= "${i.com_name.split('_')[0]}">
										</c:forEach>
										
										
										
									</legend>
									
									<div class="bs-docs-example">
										<ul id="myTab" class="nav nav-tabs">

											<li class="active" id="test5"><a href="#question1"
												data-toggle="tab" id="tab1">문항1</a></li>
											<li id="test4"><a href="#question2" data-toggle="tab"
												id="tab2">문항2</a></li>
											<li id="test3" ><a href="#question3" data-toggle="tab"
												id="tab3" >문항3</a></li>
											<li id="test2"><a href="#question4" data-toggle="tab"
												id="tab4">문항4</a></li>
											<li id="test1"><a href="#question5" data-toggle="tab"
												id="tab5">문항5</a></li>
										</ul>
										<div id="myTabContent" class="tab-content">
											<c:forEach var = "i" items = "${list}">
												<div class="tab-pane fade in active" id="question1">
													<p>${i.com_title1}</p>
													<input type = "hidden" id = "question1" value = "${i.com_title1}">
												</div>
												<div class="tab-pane fade" id="question2">
													<p>${i.com_title2}</p>
													<input type = "hidden" id = "question2" value = "${i.com_title2}">
												</div>
												<div class="tab-pane fade" id="question3">
													<p>${i.com_title3}</p>
													<input type = "hidden" id = "question3" value = "${i.com_title3}">
												</div>
												<div class="tab-pane fade" id="question4">
													<p id ="com_title4" title ="${i.com_title4}">${i.com_title4}</p>
													<input type = "hidden" id = "question4" value = "${i.com_title4}">
												</div>
												<div class="tab-pane fade" id="question5">
													<p >${i.com_title5}</p>
													<input type = "hidden" id = "question5" value = "${i.com_title5}">
												</div>
											</c:forEach>
										</div>
										
										
										<div class="item" align="center">
											<textarea title="레이블 텍스트" class="i_text" rows="10" cols=""
												style="width: 840px;" name="tx" id="tx1"></textarea>
										</div>
										<div class="item" align="center">
											<textarea title="레이블 텍스트" class="i_text" rows="10" cols=""
												style="width: 840px;" name="tx" id="tx2"></textarea>
										</div>
										<div class="item" align="center">
											<textarea title="레이블 텍스트" class="i_text" rows="10" cols=""
												style="width: 840px;" name="tx" id="tx3"></textarea>
										</div>
										<div class="item" align="center">
											<textarea title="레이블 텍스트" class="i_text" rows="10" cols=""
												style="width: 840px;" name="tx" id="tx4"></textarea>
										</div>
										<div class="item" align="center">
											<textarea title="레이블 텍스트" class="i_text" rows="10" cols=""
												style="width: 840px;" name="tx" id="tx5"></textarea>
										</div>
										
									</div>
								</form>
								<div class="count_character_area">
									<div class="character_count_line">
										<div class="character_count">
											<span class="character_title">글자 수</span> <span
												class="character_length" id="read">0</span> / <input
												type="text" id="textCounter1"
												class="limit_character_length ga-character-length" size="5"
												maxlength="8" value="" name="tc"/>
												<input
												type="text" id="textCounter2"
												class="limit_character_length ga-character-length" size="5"
												maxlength="8" value="" name="tc" />
												<input
												type="text" id="textCounter3"
												class="limit_character_length ga-character-length" size="5"
												maxlength="8" value="" name="tc" />
												<input
												type="text" id="textCounter4"
												class="limit_character_length ga-character-length" size="5"
												maxlength="8" value="" name="tc" />
												<input
												type="text" id="textCounter5"
												class="limit_character_length ga-character-length" size="5"
												maxlength="8" value="" name="tc" /><br>
												*문항에 맞게 글자수를 입력해주세요.
										</div>
									</div>
								</div>

							</fieldset>
							<div class="row" align="right">
								<a href="#" class="btn btn-theme" name="save" id="save" onclick = "">저장</a>
							</div>
						</div>
						<iframe id="SaveSomePart" style="display:none">
						</iframe>
							<div id="txAllDiv" >
								
								<textarea title="" class="i_text" rows="10" cols="" style="width: 840px;" name="txAll" id="txAll" ></textarea>
								
							</div>
							
						
					</div>
				</div>
				</article>


				<div class="col-lg-4">

					<!-- 오른쪽 메뉴 넣는 부분  -->
					<aside class="right-sidebar">
					<div class="widget">
						<form class="form-search">
							<input class="form-control" type="text" placeholder="Search..">
						</form>
					</div>
					<div class="widget">
						<h4 class="widgetheading">자기소개서</h4>
						<ul class="cat">
							<li><i class="icon-angle-right"></i><a
								href="javascript:window.open('/jsp/myPage/calendar.jsp', '나의 캘린더','status=no,menubar=no,scrollbars=no,resizable=yes, location=no');">나의 캘린더</a><span id="j1"></span></li>							
							<li><i class="icon-angle-right"></i><a href="javascript:;"
								onclick="window.open('http://speller.cs.pusan.ac.kr','맞춤법 검사','resizable=no width=850 height=720');return false">맞춤법
									검사</a><span id="j3"></span></li>
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