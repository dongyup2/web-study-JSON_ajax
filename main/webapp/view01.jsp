<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<button onclick ="loadDoc()">실행</button>
<hr>
<div id="demo"></div>
<script>
function loadDoc() {
	  alert("페이지오픈!!");
	  const xhttp = new XMLHttpRequest();
	  let user = {
			  name : "Jane";
			  age : 13;
	  		  tel : "010-1111-1111";
	  }; 
	  
	  let jsonData = JSON.stringify(user);
	  
	  xhttp.onload = function() {
	    document.getElementById("demo").innerHTML = this.responseText;
	    }
	  xhttp.open("POST", "test01", true);
	  Xhttp.setRequestHeader("Content-type", "application/json");
	  xhttp.send(jsonData);
	}
</script>
</body>
</html>