<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<title>3실습실</title>
<link rel="stylesheet" type="text/css" href="./css/join.css">
<script src="./js/pwdchange.js"></script>
</head>
<body>
	<header id="head">
		<div class="container">
			<a href="main"><img src="./image/logo.jpg" alt="logo" class="logo"></a>
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
				<div class="join" align="center">
					<h1>회원가입</h1>
					<form action="pwdchange_ok" method="post" class="join" onsubmit="return check()">
						<div><label for="email">ID</label><br/><input type="email" id="email" name="id" value="${id }"  readonly="readonly" /></div><br/>
						<div><label for="password">현재 비밀번호</label><br/><input type="password" name="pwd" id="password" autofocus="autofocus" placeholder="현재 비밀번호를 입력해주세요"/></div><br/>
						<div><label for="password">변경할 비밀번호</label><br/><input type="password" name="newpwd" id="newpassword" placeholder="변경할 비밀번호를 입력해주세요"/></div><br/>
						<div><label for="passcheck">비밀번호 확인</label><br/><input type="password" id="passcheck"placeholder="비밀번호 확인을 입력해주세요"/></div><br/>
						<div id="submit">
							<br/><input type="submit" class="submit" value="변경완료"/>
							<input type="button" class="cansle" value="취소" onclick="history.back()">
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