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

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
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
	new WOW().init();		//	���� �Ұ� ȿ�� �Լ�
	
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
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">������� <b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="/expo/expoList.action">��� �ڶ�ȸ</a></li>
                                <li><a href="/tech/techList.action">IT��� ����</a></li>
								<li><a href="pricingbox.html">��� ����</a></li>
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
	<!-- end header -->
	<section id="inner-headline">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<ul class="breadcrumb">
					<li><a href="#"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
					<li class="active">Contact</li>
				</ul>
			</div>
		</div>
	</div>
	</section>
	<section id="content" class="home-section text-center">
	<div class="map">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1582.6793950987917!2d127.0335184828165!3d37.49945510766375!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca1563e76bc39%3A0x438fa7c6bd828a18!2z7ZWc64-F7JW97ZKI67mM65Sp!5e0!3m2!1sja!2s!4v1433923856581"></iframe>
	</div>
	
	<div class="container">
			<div class="heading-about">
			<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
					<div class="section-heading">
					<h2>�����Ұ�</h2>
					<i class="fa fa-2x fa-angle-down"></i>

					</div>
					</div>
				</div>
			</div>
			</div>
		</div>
	   <div class="row">
           <div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="0.2s">
                <div class="team boxed-grey">
                    <div class="inner">
                        <div class="avatar"><img src="/img/team/1.jpg" alt="" class="img-responsive img-circle"/></div>
						<h3>�����</h3>
                        <p class="email">sangchan1@naver.com</p>
                        <p class="subtitle">��������</p>
                        <p class="say">�ϰ������</p>
                    </div>
                </div>
				</div>
            </div>
			<div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="0.5s">
                <div class="team boxed-grey">
                    <div class="inner">
                        <div class="avatar"><img src="/img/team/2.jpg" alt="" class="img-responsive img-circle"/></div>
						<h3>��</h3>
                        <p class="email">sangchan1@naver.com</p>
                        <p class="subtitle">��������</p>
                        <p class="say">�ϰ������</p>

                    </div>
                </div>
				</div>
            </div>
			<div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="0.8s">
                <div class="team boxed-grey">
                    <div class="inner">
                        <div class="avatar"><img src="/img/team/3.jpg" alt="" class="img-responsive img-circle"/></div>
						<h3>������</h3>
                        <p class="email">sangchan1@naver.com</p>
                        <p class="subtitle">��������</p>
                        <p class="say">�ϰ������</p>
                    </div>
                </div>
				</div>
            </div>
			<div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="1s">
                <div class="team boxed-grey">
                    <div class="inner">
                        <div class="avatar"><img src="/img/team/4.jpg" alt="" class="img-responsive img-circle"/></div>
						<h3>������</h3>
                        <p class="email">sangchan1@naver.com</p>
                        <p class="subtitle">��������</p>
                        <p class="say">�ϰ������</p>
                    </div>
                </div>
				</div>
            </div>
        
        
			</div>
	   <div class="row">
           <div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="0.2s">
                <div class="team boxed-grey">
                    <div class="inner">
                        <div class="avatar"><img src="/img/team/5.jpg" alt="" class="img-responsive img-circle"/></div>
						<h3>������</h3>
                        <p class="email">sangchan1@naver.com</p>
                        <p class="subtitle">��������</p>
                        <p class="say">�ϰ������</p>
                    </div>
                </div>
				</div>
            </div>
			<div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="0.5s">
                <div class="team boxed-grey">
                    <div class="inner">
                        <div class="avatar"><img src="/img/team/6.jpg" alt="" class="img-responsive img-circle"/></div>
						<h3>���¿�</h3>
                        <p class="email">sangchan1@naver.com</p>
                        <p class="subtitle">��������</p>
                        <p class="say">�ϰ������</p>

                    </div>
                </div>
				</div>
            </div>
			<div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="0.8s">
                <div class="team boxed-grey">
                    <div class="inner">
                        <div class="avatar"><img src="/img/team/7.jpg" alt="" class="img-responsive img-circle"/></div>
						<h3>���¿�</h3>
                        <p class="email">sangchan1@naver.com</p>
                        <p class="subtitle">��������</p>
                        <p class="say">�ϰ������</p>

                    </div>
                </div>
				</div>
            </div>
			<div class="col-xs-6 col-sm-3 col-md-3">
				<div class="wow bounceInUp" data-wow-delay="1s">
                <div class="team boxed-grey">
                    <div class="inner">
                        <div class="avatar"><img src="/img/team/8.jpg" alt="" class="img-responsive img-circle"/></div>
						<h3>ȫ����</h3>
                        <p class="email">sangchan1@naver.com</p>
                        <p class="subtitle">��������</p>
                        <p class="say">�ϰ������</p>
                    </div>
                </div>
				</div>
            </div>
        
        
			</div>
			
		</div>
	</section>
	</div>
	<footer>
	<div class="container">
		<div class="row">
			<div class="col-lg-4">
				<div class="info customer">
			<h5 class="widgetheading"><a href="#">������</a></h5>
			<h2>02)3482-4632</h2>
			<p>�ٹ��ð� : ���� 09:00 ~ 19:00</p>
			<p>�ѽ���ȣ : 02-565-9351</p>
			<p><a href="mailto:helpdesk@jobkorea.co.kr">���� �̸��� ������ : helpdesk@jobkorea.co.kr</a></p>
			<a href="http://www.jobkorea.co.kr/Customer_C/ETC/CC_Inquiry.asp?Offer=0">1:1�����ϱ�</a>
			<a href="http://www.jobkorea.co.kr/Customer_C/CC_Main.asp">&nbsp&nbsp FAQ</a>
			
		</div>
			</div>
			<div class="col-lg-3">
				<div class="widget">
					<h5 class="widgetheading">�����̳� ȸ��</h5>
					<ul class="link-list">
						<li>����� ������ ���ﵿ �ѵ����� 8��</li>
						<li>��ǥ : �����</li>
						<li>����ڵ�Ϲ�ȣ : 123-45-67890</li>
						<li>����Ǹž��Ű�: ����777ȣ</li>
						<li>��������������� : ���� 2015-06</li>
					</ul>
				</div>
			</div>
			<div class="col-lg-2">
				<div class="widget">
					<h5 class="widgetheading">����</h5>
					<ul class="link-list">
						<li><a href="#">ȸ��Ұ�</a></li>
						<li><a href="#">�̿���</a></li>
						<li><a href="#">���޹���</a></li>
						<li><a href="#">��ʱ���</a></li>
						<li><a href="#">��Ÿ���</a></li>
						<li><a href="#"><font color="#fff38e">����������޹�ħ</font></a></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="widget">
					<h5 class="widgetheading">�����ڼҰ�</h5>
					<div class="flickr_badge">
						<script type="text/javascript" src="http://www.flickr.com/badge_code_v2.gne?count=8&amp;display=random&amp;size=s&amp;layout=x&amp;source=user&amp;user=34178660@N03"></script>
					</div>
					<div class="clear">
					</div>
				</div>
			</div>
		</div>
	<!-- <div>
		<ul><a href="#" target="_blank"><img src="img/main/footer_award_9.gif" width="100" height="100" alt="�ѱ����ͳ������ - ������� ���� ISMS ���� ȹ��"></a>
			<a href="#" target="_blank"><img src="img/main/footer_award_1.gif" width="100" height="100" alt="����������ȣ �������Ʈ"></a>
			<a href="#" target="_blank"><img src="img/main/footer_award_4.gif" width="100" height="100" alt="���뵿�� - 2011 ���ڸ� â�� �����ǥâ ����"></a>
			<a href="#" target="_blank"><img src="img/main/footer_award_2.gif" width="100" height="100" alt="�ѱ��ɷ���ȸ - 2014 �ѱ��� �濵��� 12�� ���Ӽ���"></a>
			<a href="#" target="_blank"><img src="img/main/footer_award_10.gif" width="100" height="100" alt="�ѱ������Ź� ������� - 2013 ���л� ���� ������ �� �귣��(3�� ����)"></a>
			<a href="#" target="_blank"><img src="img/main/footer_award_14.gif" width="100" height="100" alt="�ѱ����ͳ���������ȸ - �������,����Ʈ�� 2014 8���� ����"></a>
			<a href="#" target="_blank"><img src="img/main/footer_award_11.gif" width="100" height="100" alt="�ѱ��Ϻ�, �������ڿ��� - 2014 ���ѹα� ���񽺸��� ��� ���� (e���� �ι�)"></a>
			<a href="#" target="_blank"><img src="img/main/dog1.jpg" width="100" height="100" alt="�ѱ��Ϻ�, �������ڿ��� - 2014 ���ѹα� ���񽺸��� ��� ���� (e���� �ι�)"></a>
			<a href="#" target="_blank"><img src="img/main/78.jpg" width="100" height="100" alt="�ѱ��Ϻ�, �������ڿ��� - 2014 ���ѹα� ���񽺸��� ��� ���� (e���� �ι�)"></a>
			<a href="#" target="_blank"><img src="img/main/dog2.jpg" width="100" height="100" alt="�ѱ��Ϻ�, �������ڿ��� - 2014 ���ѹα� ���񽺸��� ��� ���� (e���� �ι�)"></a>
		</ul>
		
	</div> -->
	<div id="sub-footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="copyright">
						<p>
							<span>&copy; Sangchan 2015 All right reserved. By </span><a href="http://bootstraptaste.com" target="_blank">Woonsub</a>
						</p>
					</div>
				</div>
				<div class="col-lg-6">
					<ul class="social-network">
						<li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
						<li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
						<li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</div>
	
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
<script src="/js/validate.js"></script>
<script src="/js/wow.min.js"></script>
</body>
</html>
