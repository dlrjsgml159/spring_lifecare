<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/setting/setting.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${updateCnt != 1}"> <!-- updateCnt 실패 -->
	<script type="text/javascript">
	alert("수정이 실패했습니다.");
	opener.document.location.reload();
	window.close();
	</script>
</c:if>
<c:if test="${updateCnt == 1}"> <!-- updateCnt 실패 -->
	<script type="text/javascript">
	alert("수정이 성공했습니다.");
	opener.document.location.reload();
	window.close();
	</script>
</c:if>
</body>
</html>