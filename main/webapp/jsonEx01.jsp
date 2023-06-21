<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
<script>
function loadDoc(){
	const xhttp = new XMLHttpRequest();
	xhttp.onload = function(){
		let json = this.responseText;
		//JSON문자열을 오브젝트 (객체)로 변환
		let obj = JSON.parse(json);
		document.getElementId("demo").innerHTML = obj.
	}
	xhttp.open("POST", "ServletEx01" true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("name=HongGilDong&age=19&tel=010-4444-4444");
}
</script>
</html>