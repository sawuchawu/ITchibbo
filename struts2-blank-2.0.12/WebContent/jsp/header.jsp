<%@ page pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>header.jsp</title>
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
}
window.attachEvent("onload", logProcess);

</script>
</head>
<body onload="logProcess('dd')">
<!-- <form action="/app/logout.action" method="post"><button type="submit">logout</button></form> -->
<%-- ${id }
<%=session.getAttribute("id") %> --%>
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
                       <!--  <li class="dropdown">
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
	</body>
</html>