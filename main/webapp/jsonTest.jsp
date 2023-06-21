<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<button onclick="loadDoc()">실행</button>
<hr>
<div id="demo"></div>
<script>
/**
 * JSON 형변환
 * 1.Object -> JSON => JSON.stringify(객체); 오브젝트를 JSON 문자열로 변환해줌.
 * 3.JSON -> Object => JSON.parse(JSON); JSON문자열을 오브젝트 (객체)로 변환해줌.
 */

function loadDoc() {
	  const xhttp = new XMLHttpRequest();
	  xhttp.onload = function() {
			let json = this.responseText;
			let obj = JSON.parse(json);
	    	document.getElementById("demo").innerHTML =  obj.name;
	    }	
	  //xhttp.open("GET", "feedback?name=kane&age=20&tel=010-1111-2222", true);
	  xhttp.open("POST", "feedback",true);
	  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	  xhttp.send("name=Hue&age=12&tel=010-2222-3333");
	}
	
	
</script>
</body>
</html>