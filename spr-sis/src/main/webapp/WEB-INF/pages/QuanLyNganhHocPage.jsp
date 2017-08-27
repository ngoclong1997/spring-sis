<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/_include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/common.js"></script>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/styles/menu-dropdown.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/styles/common.css">
<title>Trang chủ</title>
</head>
<body>
	<table width="80%" align="center">
		<jsp:include page="/WEB-INF/basefragments/header.jsp" />
		<tr style="background: aliceblue; height: 20px; padding: 5px;">
			<td colspan="3">
				<div class="menu" style="padding: 5px;">
					<jsp:include page="/WEB-INF/basefragments/menu.jsp" />
				</div>
			</td>
		</tr>
		<tr id = "space"></tr>
		<tr align="left">
			<td width="10%"></td>
			<td width="80%">
				<button>Thêm mới ngành học</button>
			</td>
				
			<td width="10%"></td>
		</tr>
		<tr id = "space"></tr>
		<tr>
			<table>
			  <thead>
				  <tr>
				  	<th>STT</th>
				    <th>ID</th>
				    <th>Ten Nganh</th>
				  </tr>
			  </thead>
			  <tbody>
			  	<tr th:each="temp,iterStat : ${list}">
			  		<td th:text="${iterStat.count}"></td>
                    <td th:text="${temp.id}"></td>
                    <td th:text="${temp.tenNganh}"></td>
			  	</tr>
			  </tbody>
			</table>

		</tr>
		<jsp:include page="/WEB-INF/basefragments/footer.jsp" />
	</table>

</body>
</html>