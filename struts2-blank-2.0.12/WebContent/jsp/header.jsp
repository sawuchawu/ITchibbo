<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>IT��� - IT ������� ����Ʈ</title>
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

<!-- javascript -->
<script src="/js/jquery.js"></script>
<script type="text/javascript" src="/js/xdomainajax.js"></script>
<script type="text/javascript" src="/js/xml2json.js"></script>
<script type="text/javascript" src="/js/parsing.js"></script>
<script type="text/javascript" src="/js/paging.js"></script>
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
</script>
	
</head>
<body onload="logProcess('dd')">
<!-- <form action="/app/logout.action" method="post"><button type="submit">logout</button></form> -->
<%-- ${id }
<%=session.getAttribute("id") %> --%>
<input type="hidden" value="<%=session.getAttribute("id") %>" id="lid">
<input type="hidden" value="<%=session.getAttribute("mf") %>" id="lmf">
<div id="wrapper">
<!-- start header -->
	<header>
        <div class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp"><font size="13"><span>IT</span>���</font></a>
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
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">������� <b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">��� �ڶ�ȸ</a></li>
                                <li><a href="/tech/techList.action">IT��� ����</a></li>
								<li><a href="pricingbox.html">��� ����</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">������̵� <b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="/review/reviewList.action">��� �ı�</a></li>
                                <li><a href="/cov/covList.action">�հ� �ڼҼ�</a></li>
								<li><a href="pricingbox.html">��Ʈ������</a></li>
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
                        <li><a href="/contact/contact.html">CONTACT</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false" id="adm"><b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="/api/saramin.jsp">�����</a></li>
                                <li><a href="/app/adminMemList.action">ȸ������</a></li>
                                <li><a href="components.html">�޴�����</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
	</header>
	</div>
	</body>
</html>