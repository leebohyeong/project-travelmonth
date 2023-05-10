<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="WEB-INF/jsp/include/include-taglib.jspf" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<%@ include file="WEB-INF/jsp/include/include-head.jspf" %>
</head>
<body id="error" class="error">
	<%@ include file="WEB-INF/jsp/include/include-header.jspf" %>
	<div class="error__container">
		<div>
			<h2>요청하신 페이지를 찾을 수 없습니다.</h2>
			<p>서비스 이용에 불편을 드려 죄송합니다.</p>
			<a href="/travelmonth/index.do">여행가는 달 메인으로 이동</a>
		</div>
	</div>
	<%@ include file="WEB-INF/jsp/include/include-footer.jspf" %>
</body>
</html>
