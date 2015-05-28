<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
function si_ok(){
	a=document.getElementById("a").value;
	b=document.getElementById("b").value;
	c=document.getElementById("c").value;
	d=document.getElementById("d").value;
	e=document.getElementById("e").value;
	f=document.getElementById("f").value;
	document.frm.exp_date.value=a+"��"+b+"��"+c+"��"+"~"+d+"��"+e+"��"+f+"��";
}
function sendData(){
	obj = document.frm;
	d=obj.file.value;
	alert(d);
	obj.submit();
}
</script>


</head>
<body topmargin="40">
	<!-- UI Object -->
	<form action="/expo/dataInsert.action" method="post" name="frm" id="frm" enctype="multipart/form-data">
		<fieldset>
			<legend>Legend</legend>
			<div class="form_table">
				<table border="1" cellspacing="0" summary="ǥ�� ����� �ݵ�� �־� �ּ���">
					<tbody>

						<tr>
							<th scope="row">ID</th>
							<td>
								<div class="item">ADMIN</div>
							</td>
						</tr>
						<tr>
							<th scope="row">����</th>
							<td>
								<div class="item">
									<input title="���̺� �ؽ�Ʈ" class="i_text" type="text" size="50" id="exp_title" name="exp_title">
								</div>
							</td>
						</tr>

						<tr>
							<th scope="row">�Ⱓ</th>
							<td>
								<div class="item">
									<select name="a" SIZE="1" id="a">
									<c:forEach var="i"  begin="2015" end="2020">
										<option value="${i}">${i}</option>
									</c:forEach>	
									</select>
									<select name="b" SIZE="1" id="b">
									<c:forEach var="i"  begin="1" end="12">
										<option value="${i}">${i}</option>
									</c:forEach>	
									</select>
									<select name="c" SIZE="1" id="c">
									<c:forEach var="i"  begin="1" end="30">
										<option value="${i}">${i}</option>
									</c:forEach>	
									</select>
									~
									<select name="d" SIZE="1" id="d">
									<c:forEach var="i"  begin="2015" end="2020">
										<option value="${i}">${i}</option>
									</c:forEach>	
									</select>
									<select name="e" SIZE="1" id="e">
									<c:forEach var="i"  begin="1" end="12">
										<option value="${i}">${i}</option>
									</c:forEach>	
									</select>
									<select name="f" SIZE="1" id="f" onblur="si_ok()">
									<c:forEach var="i"  begin="1" end="30">
										<option value="${i}">${i}</option>
									</c:forEach>	
									</select>
									<input type="text" value="" name="exp_date" id="exp_date">
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row">����</th>
							<td>
								<div class="item">
									<input title="���̺� �ؽ�Ʈ" type="file" name="file" id="file">
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
		<a class="btn_big" href="javascript:sendData()"><strong>����</strong></a> <a class="btn_big"
			href="#"><span>���</span></a>

	</div>
	<!-- //UI Object -->



</body>
</html>