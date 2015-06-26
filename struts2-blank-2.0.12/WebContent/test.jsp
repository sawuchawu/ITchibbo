<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<head>
    <meta charset="utf-8"/>
    <title>FileSaver.js demo</title>
    <link rel="stylesheet" type="text/css" href="demo.css"/>
    <script type="text/javascript" src="/js/jquery-2.0.0.js"></script>
    <script type="text/javascript" src="/js/fileSaver.js"></script>
    <script type="text/javascript" src="/js/blob.js"></script>
    <script>
    	function test(){
    		//var content = '"'+$('#content').val()+'"';
    		/* var blob = new Blob([$('#content').val()], {type: "doc/plain;charset=utf-8"});
    		saveAs(blob, "test.doc"); */
    		
    		
    		alert();
    		
    	}
    
    </script>
</head>
<body>
		<iframe class="filename" id="html-filename">
		</iframe>
			 <textarea id="content" rows="10" cols="60"></textarea>
		<input type="button" value="Save" onclick="test();" />
</body>
</html>
