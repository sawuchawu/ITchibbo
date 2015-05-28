<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR;">
<title>Insert title here</title>
<script type="text/javascript" src="/js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="/js/xdomainajax.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	 $("input[type=submit]").click(function(){
        $.ajax({
           type: "GET"
           ,dataType: "xml"
           ,url: $(resultURL).val()
           ,success: function(xml){
           	var xmlDoc=$.parseXML(xml.responseText);
           	
                var xmlData = $(xmlDoc).find("job");
                var listLength = xmlData.length;
                
                    var contentStr = "";
                    $(xmlData).each(function(){
                        contentStr += "ä������ȣ: "+$(this).find("id").text()+
                        			   "ä�����ǥ�� url: "+$(this).find("url").text()+
                        			   "���� ���� ����(1: ������, 0: ����): "+$(this).find("active").text()+"<br>";
                    });
                    $("results").append(contentStr);
	                 console.log(xmlData); 
	             /* var textXML = xml.responseText; 	// xml�� text �������� �����´�.
	             var data = $.xml2json(textXML);	// xml �Ľ��Ͽ� ������ text�� json���·� �ٲ��ش�.
	             
	             console.log(data.jobs.length); */
	             
	             
             
                
            }
         }); 
         //alert($(resultURL).val());
    });
}); 
</script>
<script type="text/javascript" src="/script/httpRequest.js"></script>
<script type="text/javascript">
	function search_query() {
		var keywords = document.getElementById("keywords").value;
		var published = document.getElementById("published").value;
		var deadline = document.getElementById("deadline").value;
		var ind_cd = document.getElementById("ind_cd").value;
		var job_category = document.getElementById("job_category").value;
		var job_type_obj = document.getElementsByName("job_type");
		var edu_lv_obj = document.getElementsByName("edu_lv");
		var sort = document.getElementById("sort").value;
		var count = document.getElementById("count").value;
		
		var job_type, edu_lv;
		var job_type_chk=0;
		var edu_lv_chk=0;
		
		for(var i=0; i<job_type_obj.length; i++){
			if(job_type_obj[i].checked){
				job_type=job_type_obj[i].value;
				job_type_chk=1;
			} 
		}
		
		for(var i=0; i<edu_lv_obj.length; i++){
			if(edu_lv_obj[i].checked){
				edu_lv=edu_lv_obj[i].value;
				edu_lv_chk=1;
			} 
		}
		
		//var url = "http://api.saramin.co.kr/job-search?loc_cd=3";
		var url = "http://api.saramin.co.kr/job-search?";

		if(keywords!=''){
			url += "keywords="+keywords;
		}
		if(published!=''){
			url += "&published="+published;
		}
		if(deadline!=''){
			url += "&deadline="+deadline;
		}
		if(ind_cd!=''){
			url += "&ind_cd="+ind_cd;
		}
		if(job_category!=''){
			url += "&job_category="+job_category;
		}
		if(job_type_chk==1){
			url += "&job_type="+job_type;
		}
		if(edu_lv_chk==1){
			url += "&edu_lv="+edu_lv;
		}
		if(sort!=''){
			url += "&sort="+sort;
		}
		if(count!=''){
			url += "&count="+count;
		}
		
		console.log(url);
		//saraminParse(url);
		document.getElementById("resultURL").value=url;
	}
	
	function saraminParse(url){
		sendRequest(url, null, view, 'GET');		
	}
	
	function view(){
		if(httpRequest.readyState==4 && httpRequest.status==200){
			console.log(httpRequest.responseXML);
			//printInfo();
		}
	}
	
</script>
</head>
<body>
	<form id="search_form" action="javascript:search_query();"
		method="post">
		Ű����:&nbsp;<input type="text" size="10" id="keywords" name="keywords" /><br><br>
		�����:&nbsp;<input type="text" size="10" id="published" name="published" /><br><br>
		������:&nbsp;<input type="text" size="10" id="deadline" name="deadline" /> <br><br>
		����:&nbsp;
		<select name="ind_cd" id="ind_cd">
			<option value=""></option>
			<option value="301" >�ַ�ǡ�SI��ERP��CRM</option>
			<option value="302">����������</option>
			<option value="304">���θ������¸���</option>
			<option value="305">���С����ͳݡ�������</option>
			<option value="306">��Ʈ��ũ����š������</option>
			<option value="307">�ϵ������</option>
			<option value="308">�������ȡ����</option>
			<option value="313">IT������</option>
			<option value="314">����</option>
		</select> <br><br>
		����:&nbsp;
		<select	name="job_category" id="job_category">
			<option value=""></option>
			<option value="401">�������͡�QA���׽���</option>
			<option value="402">��������Ʈ��ũ������</option>
			<option value="403">����ȹ���������á�PM</option>
			<option value="404">�����α׷���</option>
			<option value="405">���ӡ�Game</option>
			<option value="406">������������Ʈ�</option>
			<option value="407">�������α׷���</option>
			<option value="408">�ý������α׷���</option>
			<option value="409">ERP���ý��ۺм�������</option>
			<option value="410">��š������</option>
			<option value="411">�ϵ�������Ʈ����</option>
			<option value="412"> ��������</option>
			<option value="413">HTML����ǥ�ء�UI����</option>
			<option value="414">�������������ڵ�</option>
			<option value="415">IT�������Ρ���ǻ�ͱ���</option>
			<option value="416">�����ͺ��̽���DBA</option>
		</select> <br><br>
		�ٹ�����:<br>
		<input type="radio" name="job_type"  value="0">��� ǥ��
		<input type="radio" name="job_type"  value="1">������
		<input type="radio" name="job_type"  value="2">�����
		<input type="radio" name="job_type"  value="3">����Ư��
		<input type="radio" name="job_type"  value="4">������
		<input type="radio" name="job_type"  value="5">�ð���/�Ͽ���
		<input type="radio" name="job_type"  value="6">�İ���
		<input type="radio" name="job_type"  value="7">�ؿ����
		<input type="radio" name="job_type"  value="8">������<br>
		<input type="radio" name="job_type"  value="9">��������
		<input type="radio" name="job_type"  value="10">����� (������ ��ȯ����)
		<input type="radio" name="job_type"  value="11">������ (������ ��ȯ����)
		<input type="radio" name="job_type"  value="12">������ (������)
		<input type="radio" name="job_type"  value="13">������
		<input type="radio" name="job_type"  value="14">��Ʈ
		<input type="radio" name="job_type"  value="15">����<br><br>
		�з�:&nbsp;
		<input type="radio" name="edu_lv" value="">��� ǥ��
		<input type="radio" name="edu_lv" value="1">����б� ����
		<input type="radio" name="edu_lv" value="2">����(2,3��) ����
		<input type="radio" name="edu_lv" value="3">���б�(4��) ����
		<input type="radio" name="edu_lv" value="4">��������
		<input type="radio" name="edu_lv" value="5">�ڻ�����
		<input type="radio" name="edu_lv" value="99">�з¹���<br><br>
		���Ĺ��:&nbsp;
		<select	name="sort" id="sort">
			<option value=""></option>
			<option value="pd" >�Խ��� ����(�⺻��)</option>
			<option value="pa" >�Խ��ϼ�</option>
			<option value="ud" >�ֱټ�����</option>
			<option value="ua" >������ ����</option>
			<option value="da" >������ ����</option>
			<option value="dd" >������ ����</option>
			<option value="rc" >��ȸ�� ����</option>
			<option value="ac" >�����ڼ� ����</option>
			<option value="re" >�亯�� ����</option>
		</select> <br><br>
		
		ī��Ʈ(1~110): &nbsp;<input type="text" size="10" id="count" name="count" /> <br><br>
		<input type="submit">
	</form>
	<input type="text" id="resultURL" value="">
	<div id="results"></div>
</body>
</html>