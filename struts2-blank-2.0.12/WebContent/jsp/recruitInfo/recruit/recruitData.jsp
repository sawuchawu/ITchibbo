<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="/js/jquery-2.0.0.js"></script>
<script type="text/javascript" src="/js/xdomainajax.js"></script>
<script type="text/javascript" src="/js/xml2json.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$.ajax({
			type : "GET",
			dataType : "xml",
			url : "http://api.saramin.co.kr/job-search?ind_cd=301,302,304,305,306,307,308&count=1&sort=pd",
			success : function(xml) {
				var xmlDoc = $.parseXML(xml.responseText);
				var xmlData = $(xmlDoc).find("job");
				var listLength = xmlData.length;
				var textXML = xml.responseText; 				// xml�� text �������� �����´�.
				var dataJson = $.xml2json(textXML); 			// xml �Ľ��Ͽ� ������ text�� json���·� �ٲ��ش�.
				var jobJson = dataJson.body.job_search.jobs.job; 	// job ������ ��ġ 
				
				var title = jobJson.position.job_category.text; 	// ���� : ���� + "ä��" (�ӽù���->���� �Ľ� �����ϸ� �ٲܰ�)
				var job_type = jobJson.position.job_type.text; 		// �ٹ�����
				var salary = jobJson.salary.text; 					// ����
				var expiration = jobJson.expiration_timestamp; 		// ������
				var expDate = new Date(expiration*1000);			// ���н� timeStamp�� ��¥������ ��ȯ
				var epMonth = expDate.getMonth()+1;
				var epDate = expDate.getDate();
				var epDay = getWeekday(expDate.getDay());
				var dDay = getDday(expDate);
				var rId = jobJson.id;	// ä����� id �� �ѱ��
				
				var data = {"rec_id" : title , "rec_title" : job_type, "rec_job" : salary, "rec_sdate":expiration, 
						"rec_fdate":expDate};
				// �̷��������� �ʿ��� �����͸� �̾Ƽ� ���̽�ȭ���Ѽ� ������ �� �޴°� ����..? 
				// �׷�, �Ľ��� ������ŭ �迭���� ���̽�ȭ ���Ѽ� �����ߵǳ�?>???			
				
				///////////������, ������  �͸����� �������� �ֱ�!!!!!!!!!!!!!!!!
				
				//alert(jobJson);
				console.log(jobJson);
				console.log(JSON.stringify(jobJson));
				sendJobJson(JSON.stringify(data));
			}
		});
	});
	
	function sendJobJson(jobJson){
		$.ajax({
			type : "post",
			datatype : "json",
			data : "json="+jobJson,
			url : "/recruit/recruitInsert.action",
			success : function(){
				alert(1);
			}
		});
	}

	// D-day ���ϱ�
	function getDday(expDate) {
		var gap = new Date().getTime() - expDate.getTime();
		var dDay = Math.floor(gap / (1000 * 60 * 60 * 24));

		return dDay;
	}

	// ���� ���ϱ� 
	function getWeekday(epDay) {
		var weekday = new Array(7);

		weekday[0] = "��";
		weekday[1] = "��";
		weekday[2] = "ȭ";
		weekday[3] = "��";
		weekday[4] = "��";
		weekday[5] = "��";
		weekday[6] = "��";

		return weekday[epDay];
	}
</script>
</head>
<body>

</body>
</html>