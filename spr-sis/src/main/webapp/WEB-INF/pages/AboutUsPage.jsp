<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/_include.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="/WEB-INF/resources/resource.jsp" />
<title>About us</title>
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
		<tr id = "space"></tr>
		<tr>
			<td width="20%"></td>
			<td width="60%" style="text-align: center;">
				hungpt - Phạm Tiến Hùng ## longnn - Nguyễn Ngọc Long
			</td>
			<td width="20%"></td>
		</tr>
		<tr id = "space"></tr>
		<jsp:include page="/WEB-INF/basefragments/footer.jsp" />
	</table>
	
</body>
</html>