<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>오목 게임</title>
  <script src="./resources/js/omok.js?v=>"></script>
  <style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);

body {
	position: relative;
	height: 100vh;
	background-image: linear-gradient(135deg, #fdfcfb 0%, #e2d1c3 100%);
}

/* .container {
	display: flex;
	max-width: 1200px;
	width: 100%;
	box-shadow: 0 0 8px rgba(0, 0, 0, 0.1);
	background-color: white;
	gap: 16px;
	padding: 16px;
} */

div {
	display: block;
}

.nav {
	margin-top: 70px;
	height: 10vh;
	text-align: center;
	font-family: 'Hanna';
	font-size: 50px;
}

.empty {
	height: 3vh;
}

.board {
	width: 500px;
	margin: auto;
	border: 1px solid black;
	box-shadow: 1px 1px 1px black;
}

.board__row {
	display: flex;
}

.board__col {
	width: 30px;
	height: 30px;
	background: #ffc078;
	position: relative;
	flex-grow: 1;
	cursor: pointer;
	font-size: 30px;
	text-align: center;
}

.board__col:hover {
	background: #fd7e14;
}

.black::after {
	width: 30px;
	height: 30px;
	position: absolute;
	background-color: black;
	border-radius: 50%;
}

.white::after {
	width: 30px;
	height: 30px;
	background-color: white;
	position: absolute;
	border-radius: 50%;
	z-index: 7;
}

.currentTurn {
	text-align: center;
	font-family: 'Hanna';
	font-size: 30px;
}

.footer {
	margin-top: 50px;
	height: 20vh;
	background-color: transparent;
	text-align: center;
	font-family: 'Hanna';
	font-size: 25px;
}

.swal-title {
	font-family: 'Hanna';
	margin: 0px;
	font-size: 30px;
	margin-bottom: 28px;
}

.swal-button {
	padding: 7px 19px;
	border-radius: 2px;
	background-image: linear-gradient(to top, #dad4ec 0%, #dad4ec 1%, #f3e7e9 100%);
	font-size: 15px;
	border: 1px solid transparent;
	color: #5f5f5f;
	text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.3);
}

.col__grid {
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
}

.col__grid::after {
	display: block;
	content: '';
	position: absolute;
	top: 0;
	right: calc(50% - 1px);
	bottom: calc(50% - 1px);
	left: 0;
	border-right: 1px solid black;
	border-bottom: 1px solid black;
	box-sizing: border-box;
}

.col__grid::before {
	display: block;
	content: '';
	position: absolute;
	top: calc(50%);
	right: -1px;
	bottom: -1px;
	left: calc(50%);
	border-top: 1px solid black;
	border-left: 1px solid black;
	box-sizing: border-box;
}

.board__row {
	position: relative;
}

.board__row:first-child .col__grid::after {
	border-top: none;
	border-left: none;
	border-right: none;
}

.board__row:last-child .col__grid::before {
	border-bottom: none;
	border-left: none;
	border-right: none;
}

.board__col:first-child .col__grid::after {
	border-top: none;
	border-left: none;
	border-bottom: none;
}

.board__col:last-child .col__grid::before {
	border-top: none;
	border-bottom: none;
	border-right: none;
}
</style>
</head>
<body>
  <div class="nav">오목 게임</div>
        <div class="empty"></div>
       	<div class="container">
        <div class="board" id="board"></div>       	
       	</div>
        <br/>
        <div class="currentTurn" id="currentTurn">Player 1's Turn</div>
        <div class="footer">테스트.</div>
   
</body>
</html>