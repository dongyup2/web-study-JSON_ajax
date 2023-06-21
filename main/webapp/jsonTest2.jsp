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
	  let user = {
				name: "Hong",
				age: 32,
				tel: "010-3333-4444"
		  } 
	  let juser = JSON.stringify(user);
	  
	  xhttp.onload = function() {
		    document.getElementById("demo").innerHTML = this.responseText;
		}

	  xhttp.open("POST", "feedbackJson", true);
	  xhttp.setRequestHeader("Content-type", "application/json");
	  xhttp.send(juser);	
	}

</script>
</body>
</html>