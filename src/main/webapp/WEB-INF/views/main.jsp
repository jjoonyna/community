<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3실습실</title>
<link rel="stylesheet" type="text/css" href="./css/Main.css">
<script src="../js/Main.js" type="text.javascript"></script>
</head>
<body>
	<header id="head">
		<div class="container">
			<a href="main"><img src="./image/logo.jpg" alt="logo" class="logo"></a>
			<nav id="navi">
				<button onclick="location='qna'">Q&A</button>
				<button onclick="location='community'">커뮤니티</button>
				<button onclick="location='study'">스터디</button>
				<button onclick="location='coding'">취업정보</button>
				<button onclick="location='noticeboard'">공지사항</button>
				<form action="../jsp/search.jsp" method="get">
					<div class="search">
						<input type="text" placeholder="검색어 입력"/><button type="submit">검색</button>
					</div>
				</form>
			</nav>
		</div>
		<hr/>
	</header>
	<main id="main">
	<aside id="leftaside">
		<div id="sticky">
		<c:if test="${sessionScope.id != null }">
			<div class="user">
				<div class="login_ok">
					<table>
					<tr>
					<td>${nickname }님 환영합니다</td>
					</tr>
					<tr>
					<td>${nickname }님의 게시글 수 :</td>
					</tr>
					<tr>
					<td>${nickname }님의 댓글 수 :</td>
					</tr>
					<tr>
					<td><button onclick="location.href='logout'">로그아웃</button></td>
					<td><button onclick="location.href='pwdchange'">비밀번호 변경</button></td>
					</tr>
					</table>
				</div>
			</div>
		</c:if>
		
		<c:if test="${sessionScope.id == null }">
			<div class="user">
				<div class="login">
					<button onclick="location.href='login'">로그인</button><br/>
				</div>
				<div class="join">
					<button onclick="location.href='join'">회원가입</button><br/>
				</div>
			</div>
		</c:if>
			
			
			<div class="ranking" align="center">
				<table class="rankTable">
				<caption>게시물 작성 랭킹</caption>
					<tr>
						<td>닉네임</td>
						<td>등수</td>
					</tr>
					<tr>
						<td>닉네임</td>
						<td>등수</td>
					</tr>
					<tr>
						<td>닉네임</td>
						<td>등수</td>
					</tr>
					<tr>
						<td>닉네임</td>
						<td>등수</td>
					</tr>
					<tr>
						<td>닉네임</td>
						<td>등수</td>
					</tr>
				</table>
			</div>
		</div>
	</aside>
	<section id="section">
		<div class="section">
			<div class="board">
			<button>인기글</button>
				<ul align="center">
					<li>게시물들</li>
					<li>게시물들</li>
					<li>게시물들</li>
					<li>게시물들</li>
					<li>게시물들</li>
				</ul>
			</div>
			<div class="board">
				<button>최신글</button>
					<ul align="center">
						<li>게시물들</li>
						<li>게시물들</li>
						<li>게시물들</li>
						<li>게시물들</li>
						<li>게시물들</li>
					</ul>
			</div>
		</div>
		<div class="section">
			<div class="board">
			<button>공지사항</button>
				<ul align="center">
					<li>게시물들</li>
					<li>게시물들</li>
					<li>게시물들</li>
					<li>게시물들</li>
					<li>게시물들</li>
				</ul>
			</div>
			<div class="board">
			<button>Q&A</button>
				<ul align="center">
					<li>게시물들</li>
					<li>게시물들</li>
					<li>게시물들</li>
					<li>게시물들</li>
					<li>게시물들</li>
				</ul>
			</div>
		</div>
		<div class="section">
			<div class="board">
			<button>스터디</button>
				<ul align="center">
					<li>게시물들</li>
					<li>게시물들</li>
					<li>게시물들</li>
					<li>게시물들</li>
					<li>게시물들</li>
				</ul>
			</div>
			<div class="board">
			<button>취업정보</button>
				<ul align="center">
					<li>게시물들</li>
					<li>게시물들</li>
					<li>게시물들</li>
					<li>게시물들</li>
					<li>게시물들</li>
				</ul>
			</div>
		</div>	
	</section>
	<aside id="rightaside">
		<div class="img">
			<a><img alt="광고" src=""></a>
		</div>
		<div class="img">
			<a><img alt="광고" src=""></a>
		</div>
		<div class="img">
			<a><img alt="광고" src=""></a>
		</div>
	</aside>
	</main><hr/>
	<footer id="footer">
	<div class="footer">
	내가만듬
	</div>
	</footer>
</body>
</html>