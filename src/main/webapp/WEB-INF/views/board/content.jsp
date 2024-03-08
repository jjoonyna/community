<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3실습실</title>
<link rel="stylesheet" type="text/css" href="./css/content.css">
<script src="../js/content.js" type="text.javascript"></script>
</head>
<body>
	<header id="head">
		<div class="container">
			<a href="./Main.jsp"><img src="./image/logo.jpg" alt="logo" class="logo"></a>
			<nav id="navi">
				<button onclick="location='list?state=qna'">Q&A</button>
				<button onclick="location='list?state=community'">커뮤니티</button>
				<button onclick="location='list?state=study'">스터디</button>
				<button onclick="location='list?state=coding'">취업정보</button>
				<button onclick="location='list?state=noticeboard'">공지사항</button>
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
					<button onclick="location.href='../jsp/login.jsp'">로그인</button><br/>
				</div>
				<div class="join">
					<button onclick="location.href='../jsp/join.jsp'">회원가입</button><br/>
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
			<h1>게시글 작성</h1><hr/>
			<div class="content">
				<form action="../jsp/Main.jsp" method="get" onsubmit="return check()">
					<div class="make">
						<select>
							<option>취업정보</option>
							<option>java</option>
							<option>java</option>
							<option>java</option>
						</select>
						<select>
							<option>spring boot</option>
							<option>java</option>
							<option>java</option>
							<option>java</option>
							<option>java</option>
					</select>
						<input type="text" id="title" name=title value="" placeholder="제목을 입력하세요" autofocus="autofocus"/>
						<br/><input type="file"/>
						<br/><textarea></textarea>
					</div>
					<div class="button">
						<input type="submit" id="submit" value="완료" />
						<a href="../jsp/Main.jsp"><input type="button" id="cansle" value="취소" /></a>
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