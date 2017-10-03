<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/_include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><jsp:include
	page="/WEB-INF/resources/resource.jsp" />
<title>Lỗi tạo sinh viên!</title>
</head>
<body>
	<table width="90%" align="center">
		<jsp:include page="/WEB-INF/basefragments/header.jsp" />

		<tr style="background: aliceblue; height: 20px; margin: 5px;">
			<td colspan="3" style="background: #1bc2a2; border-radius: 5px;">
				<div class="menu">
					<jsp:include page="/WEB-INF/basefragments/menu.jsp" />
				</div>
			</td>
		</tr>
		<tr>
			<td width="20%"></td>
			<td width="60%" align="center">
				<h2 style="color: red;">Tạo sinh viên bị lỗi</h2>
				<p>
					<b>Thông tin:</b> ${info }
				</p> <c:forEach items="${nullProperties }" var="property"
					varStatus="status">
					${status.count } - ${property }
					<br />
				</c:forEach>
				<div id="space"></div> <a class="btn btn-primary"
				href="${pageContext.request.contextPath}/nghiep-vu/quan-ly-ho-so-du-tuyen">
					Quay lại</a>
			</td>
			<td width="20%"></td>
		</tr>
		<jsp:include page="/WEB-INF/basefragments/footer.jsp" />
	</table>

</body>
</html>

