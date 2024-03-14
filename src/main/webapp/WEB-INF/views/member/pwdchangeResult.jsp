<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:if test="${result == -1 }">
	<script>
		alert("비밀번호가 틀렸습니다");
		history.go(-1);
	</script>
</c:if>
<c:if test="${result == 1 }">
	<script>
		alert("비밀번호 변경 성공");
		location.href="login";
	</script>
</c:if>
<c:if test="${result == 0 }">
	<script>
		alert("비밀번호 변경 실패");
		history.go(-1);
	</script>
</c:if>

</body>
</html>