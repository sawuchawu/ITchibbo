<%@ page pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>header.jsp</title>
<script type="text/javascript" src="/js/jquery-2.0.0.js"></script>
<script type="text/javascript">
function popupLogin(){
	var popUrl = "/jsp/login/login.jsp";	//�˾�â�� ��µ� ������ URL
	var popOption = "width=525, height=685, resizable=no, scrollbars=no, status=no";    //�˾�â �ɼ�(optoin)
		window.open(popUrl,"",popOption);
	}
function popupJoin(){
	var popUrl = "/jsp/login/signup.jsp";	//�˾�â�� ��µ� ������ URL
	var popOption = "width=525, height=685, resizable=no, scrollbars=no, status=no";    //�˾�â �ɼ�(optoin)
		window.open(popUrl,"",popOption);
	}	
	
function logProcess(id) {

	
	var ids=id;

	if(ids==='dd'&& $("input#lid").val()=='null'){// �α����ؾߵ�
		$("#log").text('�α���');
		$("#log").attr("href", "/jsp/login/login.jsp");
		$("#log2").text('ȸ������');
		$("#log2").attr("href", "/jsp/login/signup.jsp");
	}else{// �α׾ƿ�
	if($("input#lmf").val()=='0'){
			$("#adm").text('������');
		}
		$("#log2").text('�α׾ƿ�');
		$("#log2").attr("href", "/app/logout.action");
		$("#log").text('����������');
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
                    <a class="navbar-brand" href="/index.jsp"><font size="13"><span>IT</span>���</font></a>
                    <ul class="nav navbar-nav">
                        <li><a href="#" id="log"></a></li> <!-- �α׾ƿ� �ٲٱ� -->
                        <li><a href="#" id="log2"></a></li> <!-- ���������� �ٲٱ� -->
                    </ul>
                </div>
             
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="/jsp/recruitInfo/recruit.jsp" class="dropdown-toggle " >ä����� <b class=" icon-angle-down"></b></a>
                        </li>
                        <li class="dropdown">
                            <a href="/jasoseol/jasoseolChoiceCompany.action?job=choice" class="dropdown-toggle " >�ڱ�Ұ��� <b class=" icon-angle-down"></b></a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">������� <b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="/expo/expoList.action">��� �ڶ�ȸ</a></li>
                                <li><a href="/tech/techList.action">IT��� ����</a></li>
								<li><a href="/news/newsList.action">��� ����</a></li>
								<li><a href="/jsp/jobInfo/lecture/lecture.jsp">��� ����</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">������̵� <b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="/review/reviewList.action">��� �ı�</a></li>
                                <li><a href="/cov/covList.action">�հ� �ڼҼ�</a></li>
								<li><a href="/portfolio/portfolioList.action">��Ʈ������</a></li>
								<li><a href="/jsp/recruitGuide/jobAnalysys.jsp">�����м�</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">Ŀ�´�Ƽ <b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="/brd/brdList.action">�����Խ���</a></li>
                                <li><a href="/qna/qnaList.action">Q&A</a></li>
                            </ul>
                        </li>
                        <li><a href="/jsp/contact/contact.jsp">CONTACT</a></li>
                        <li><a href="/app/adMemList.action" id="adm"></a></li>
                       <!--  <li class="dropdown">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false" id="adm">������<b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="/app/adMemList.action">����</a></li>
                                <li><a href="/app/adMemList.action">�޴�����</a></li>
                            </ul>
                        </li> -->
                    </ul>
                </div>
            </div>
        </div>
	</header>
	</body>
</html>