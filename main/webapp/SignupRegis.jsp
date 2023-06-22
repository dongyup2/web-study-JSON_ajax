<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<div id="container">
		<h1>회원가입</h1>
		<!-- action: 요청 메세지를 입력하는 곳 -->
			<table>
				<tr>
					<th>이름</th>			
					<td><input type="text" id="name"></td>
				</tr>
				<tr>
					<th>이메일</th>			
					<td><input type="email"id="email"></td>			
				</tr>
				<tr>
					<th>아이디</th>			
					<td><input type="text" class="id-input" id="id"></td>			
				</tr>
				<tr>
					
				</tr>
				<tr>
					<th>비밀번호</th>			
					<td><input type="password" id="password"></td>			
				</tr>
			</table>
			<button onclick="loadDoc()">가입하기</button>
			<button type="reset">재작성</button>
	</div>	
	<script>
		function loadDoc(){
		
		const name = document.getElementById("name").value;
		const email = document.getElementById("email").value;
		const id = document.getElementById("id").value;
		const password = document.getElementById("password").value;
		
		const xhttp = new XMLHttpRequest();
		
		let user = {
				name:name,
				email:email,
				id:id,
				password:password	
			}
		let jsonData = JSON.stringify(user);
		
		xhttp.open("POST", "SignupServletEx01", true);
		xhttp.setRequestHeader("Content-type", "application/json");
		xhttp.send(jsonData);
	}
	</script>
</body>
</html>




