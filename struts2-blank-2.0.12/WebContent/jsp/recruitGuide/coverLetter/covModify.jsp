<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
		 <%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"
	type="text/javascript"></script>
<link href="/css/finaledit.css" rel="stylesheet" />
<link href="/css/button.css" rel="stylesheet" />
<script type="text/javascript">
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
</script>
<script type="text/javascript">

function year_ok(){
	a=document.getElementById("a").value;
	b=document.getElementById("b").value;

	document.frm.cov_year.value=a+"년 "+b;
}

function si_ok(){
	y=document.getElementById("y").value;
	m=document.getElementById("m").value;
	d=document.getElementById("d").value;

	document.frm.cov_date.value=y+"년"+m+"월"+d+"일";
}
function job_ok(){
	cjob=document.getElementById("cjob").value;

	document.frm.cov_job.value=cjob;
}
function price_ok(){
	price=document.getElementById("price").value;

	document.frm.cov_price.value=price;
}
function sendData(){
	obj = document.frm;

	obj.submit();
}
</script>


</head>
<body topmargin="40">
	<!-- UI Object -->
	<form action="/cov/covModify.action" method="post" name="frm" id="frm" enctype="multipart/form-data">
		<fieldset>
			<legend>Legend</legend>
			<div class="form_table">
				<table border="1" cellspacing="0" summary="표의 요약을 반드시 넣어 주세요">
					<tbody>

					
						<tr>
							<th scope="row">ID</th>
							<td>
								<div class="item">ADMIN1</div>
							</td>
						</tr>
						
							<tr>
							<th scope="row">합격회사</th>
							<td>

								<div class="item">
									<input title="레이블 텍스트" class="i_text" type="text" size="50" value="${bean.cov_com}" id="cov_com" name="cov_com">
									<input type="hidden" value="${bean.cov_no}" id="cov_no" name="cov_no">
								</div>
							</td>
						</tr>
						
						<tr>
							<th scope="row">합격직군</th>
							<td>
								<div class="item">
							<select name="cjob" SIZE="1" id="cjob" onblur="job_ok()">
                           
                              <option>웹 프로그래머</option>
        					  <option>시스템 소프트웨어 엔지니어</option>
        					  <option>컴퓨터 프로그래머</option>
        					  <option>스마트폰 앱 개발자</option>
        					  <option>응용 소프트웨어 개발자</option>
        					  <option>데이터베이스 개발자</option>
        					  <option>게임 프로그래머</option>
        					  <option>컴퓨터 하드웨어 관리자</option>
        					  <option>컴퓨터 보안</option>
        					  <option>정보 시스템 관리자</option>
        					  <option>네트워크 엔지니어</option>
        					  <option>네트워크 프로그래머</option>
        					  <option>네트워크 매니져</option>

      
                           </select>
     
                           <input type="text" value="${bean.cov_job }" name="cov_job" id="cov_job">
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row">합격연도</th>
							<td>
								<div class="item">
                           <select name="a" SIZE="1" id="a">
                           <c:forEach var="i"  begin="2000" end="2015">
                              <option value="${i}">${i}</option>
                           </c:forEach>   
                           </select>
                           <select name="b" SIZE="1" id="b" onblur="year_ok()">
                           
                              <option>상반기</option>
        					  <option>하반기</option>	
                           </select>
     
                           <input type="text" value="${bean.cov_year}" name="cov_year" id="cov_year">
                           
                        </div>
							</td>
						</tr>
						<tr>
							<th scope="row">스펙</th>
							<td>
								<div class="item">
									<input title="레이블 텍스트" value="${bean.cov_spec}" class="i_text" type="text" size="50" id="cov_spec" name="cov_spec">
								</div>
							</td>
						</tr>
						
						<tr>
							<th scope="row">가격</th>
							<td>
								<div class="item">
							<select name="price" SIZE="1" id="price" onblur="price_ok()">
                           
                              <option>1000</option>
        					  <option>1500</option>
        					  <option>2000</option>
        					  <option>2500</option>
        					  <option>3000</option>
        					  <option>3500</option>
        					  <option>4000</option>
        					  <option>4500</option>
        					  <option>5000</option>
        					 
                           </select>
     
                           <input type="text" value="${bean.cov_price}" name="cov_price" id="cov_price">
								</div>
							</td>
						</tr>
						
						<tr>
							<th scope="row">제목</th>
							<td>
								<div class="item">
								<%-- <input type="hidden" value="${bean.cov_no }" id="cov_no" name="cov_no"> --%>
									<input title="레이블 텍스트" class="i_text" type="text" size="50" value="${bean.cov_title}" id="cov_title" name="cov_title">
								</div>
							</td>
						</tr>

						<tr>
                     <th scope="row">등록일</th>
                     <td>
                        <div class="item">
                           <select name="d" SIZE="1" id="y">
                           <c:forEach var="i"  begin="2015" end="2020">
                              <option value="${i}">${i}</option>
                           </c:forEach>   
                           </select>
                           <select name="e" SIZE="1" id="m">
                           <c:forEach var="i"  begin="1" end="12">
                              <option value="${i}">${i}</option>
                           </c:forEach>   
                           </select>
                           <select name="f" SIZE="1" id="d" onblur="si_ok()">
                           <c:forEach var="i"  begin="1" end="30">
                              <option value="${i}">${i}</option>
                           </c:forEach>   
                           </select>
                           <input type="text" value="${bean.cov_date}" name="cov_date" id="cov_date">
                           
                        </div>
                     </td>
                  </tr>
						<tr>
							<th scope="row">내용</th>
							<td>
								<div class="item">
								<%-- <input type="hidden" value="${bean.cov_no }" id="cov_no" name="cov_no"> --%>
									<input title="레이블 텍스트" class="i_text" type="text" size="50" value="${bean.cov_content}" id="cov_content" name="cov_content" >
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row">파일</th>
							<td>
								<div class="item">
									<input title="레이블 텍스트"  type="file" name="file" id="file">
									<input value="info"  id="job" name="job" type="hidden">
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</fieldset>
	</form>
	<!-- //UI Object -->
	<!-- UI Object -->
	<div align="right">
		<a class="btn_big" href="javascript:sendData()"><strong>저장</strong></a> 
		<a class="btn_big"
			href="/cov/covList.action"><span>취소</span></a>

	</div>
	<!-- //UI Object -->



</body>
</html>