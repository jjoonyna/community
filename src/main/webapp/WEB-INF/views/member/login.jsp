<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3실습실</title>
<link rel="stylesheet" href="./css/login.css">
<script src="./js/login.js"></script>
</head>
<body>
	<header id="head">
		<div class="container">
			<a href="main"><img src="../image/logo.jpg" alt="logo" class="logo"></a>
			<nav id="navi">
				<button onclick="location.href='qna'">Q&A</button>
				<button onclick="location.href='community'">커뮤니티</button>
				<button onclick="location.href='study'">스터디</button>
				<button onclick="location.href='coding'">취업정보</button>
				<button onclick="location.href='noticeboard'">공지사항</button>
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
			<div class="user">
				<div class="login">
					<button onclick="location.href='login'">로그인</button><br/>
				</div>
				<div class="join">
					<button onclick="location.href='join'">회원가입</button><br/>
				</div>
			</div>
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
				<div class="login" align="center">
					<h1>로그인</h1>
					<form action="login_ok" method="post" onsubmit="return check()" class="login">
						<div><label for="email">ID</label><br/><input type="email" id="email" name="id" value="" autofocus="autofocus" placeholder="이메일을 입력해주세요"/></div><br/>
						<div><label for="password">비밀번호</label><br/><input type="password" name="pwd" id="password" value="" placeholder="비밀번호를 입력해주세요"/></div><br/>
						<div id="login">
							<br/><input type="submit" class="submit" name="login" value="로그인"/>
							<a href="join"><input type="button" class="join" name="join" value="회원가입"></a>
							<input type="button" onclick="history.back()" class="cansle" name="cansle" value="취소">
						</div>
					</form>
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