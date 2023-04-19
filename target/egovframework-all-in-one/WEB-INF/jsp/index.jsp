<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="include/include-taglib.jspf" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>2023 여행가는 달</title>
</head>
<body>

	<h1>AREA</h1>
	<c:set var="area" value="${area:getList()}"/>
	<c:if test="${not empty area}">
		<c:if test="${area.result}">
			<c:set var="list" value="${area.data.list}"/>
			<c:forEach var="row" items="${list}" varStatus="loop">
				<c:if test="${row.code ne '00'}">
					${row.code_name}<br>
				</c:if>
			</c:forEach>
		</c:if>
	</c:if>

	<h1>EVENT</h1>
	<c:if test="${not empty event}">
		<c:if test="${event.result}">
			<c:set var="list" value="${event.data.list}"/>
			<c:forEach var="row" items="${list}" varStatus="loop">
				${row.title}
			</c:forEach>
		</c:if>
	</c:if>

	<h1>SHOWCASE</h1>
	<c:if test="${not empty showcase}">
		<c:if test="${showcase.result}">
			<c:set var="list" value="${showcase.data.list}"/>
			<c:forEach var="row" items="${list}" varStatus="loop">
				${row.title}
			</c:forEach>
		</c:if>
	</c:if>

</body>
</html>
