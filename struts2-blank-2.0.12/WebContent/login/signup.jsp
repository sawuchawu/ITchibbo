<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form id="fregisterform" name=fregisterform method=post onsubmit="return fregisterform_submit(this);" enctype="multipart/form-data" autocomplete="off">
<input type=hidden name=w                value="<?=$w?>">
<input type=hidden name=url              value="<?=$urlencode?>">
<input type=hidden name=mb_jumin         value="<?=$jumin?>">
<input type=hidden name=mb_id_enabled    value="" id="mb_id_enabled">
<input type=hidden name=mb_nick_enabled  value="" id="mb_nick_enabled">
<input type=hidden name=mb_email_enabled value="" id="mb_email_enabled">
<!-- <input type=hidden name=token value="<?=$token?>"> -->


	
<table width=680 cellpadding=0 cellspacing=0 border=0 align=center>
  <tr>
    <td>

	<table width=100% cellpadding=0 cellspacing=0 border=0>
	  <tr>
	    <td><img src="/img/join_form_title.gif" border=0></td>
	  </tr>
	  <tr><td bgcolor="#ff5d00" height=2></td></tr>
	  <tr><td height=6></td></tr>
	</table>
	
	<table width=100% cellpadding=0 cellspacing=3 border=0>
	<col width=140>
	<col width="*">
	  <tr>
	    <td class=m_title>아이디</td>
		<td class=m_padding>
		<input type="text" class="inputed" id="reg_mb_id" value="" maxlength="20" size="20" >
	 	<span id='msg_mb_id'></span>
		<table height=25 cellspacing=0 cellpadding=0 border=0>
		  <tr>
		    <td><span class="cmt">* 영문자, 숫자, _ 만 입력 가능. 최소 3자이상 입력하세요.</span></td>
		  </tr>
		</table>
		</td>
	  </tr>
	  <tr>
	    <td class=m_title>패스워드</td>
		<td class=m_padding><input type="password" class="inputed" name="mb_password" maxlength="20" size="20"></td>
	  </tr>
	  <tr>
	    <td class=m_title>패스워드 확인</td>
		<td class=m_padding><input type="password" class="inputed" name="mb_password_re" maxlength="20" size="20"></td>
	  </tr>
	  <tr>
	    <td class=m_title>이름</td>
		<td class=m_padding><input type="text" name="mb_name" value=""></td>
		</td>
	  </tr>
	  
	  <tr>
	    <td class=m_title>E-mail</td>
		<td class='m_padding lh'>
		<input type="text" class="inputed" name="mb_email" id="reg_mb_email" size="38" maxlength="100" onblur="reg_mb_email_check()">
		<span id='msg_mb_email'></span>
		</td>
	  </tr>
	  
	  <tr>
	    <td class=m_title>생년월일</td>
		<td class=m_padding><input type="text" class="inputed" name="mb_birth" id="mb_birth" size="21" maxlength="20"></td>
	  </tr>
	  
	  <tr>
	    <td class=m_title>핸드폰번호</td>
		<td class=m_padding><input type="text" class="inputed" name="mb_hp" size="21" maxlength="20"></td>
	  </tr>
	  
	</table>
	
	<p align=center><input type="image" src="/img/join_ok_btn.gif" border=0 accesskey='s'>
	
	</td>
  </tr>
</table>

</form>
</body>
</html>