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
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/styles/table.css">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	th:href="@{/webjars/bootstrap/3.3.7/css/bootstrap.min.css}"
	rel="stylesheet" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"
	th:src="@{/webjars/jquery/1.12.4/jquery.min.js}"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	th:src="@{/webjars/bootstrap/3.3.7/js/bootstrap.min.js}"></script>
<title>Quản Lý Sinh Viên</title>
</head>
<body>
	<table width="90%" align="center">
		<jsp:include page="/WEB-INF/basefragments/header.jsp" />
		<tr style="background: aliceblue; height: 20px; padding: 5px;">
			<td colspan="3">
				<div class="menu" style="padding: 5px;">
					<jsp:include page="/WEB-INF/basefragments/menu.jsp" />
				</div>
			</td>
		</tr>
		<tr id="space"></tr>
		<tr id = "space"></tr>
		<tr align="left">
			<td width="10%"></td>
			<td width="80%"></td>
			<td width="10%"></td>
		</tr>
		<tr id="space"></tr>
		<table class = "context" style="width: 80%">
				<thead>
					<tr>
						<th>Họ Tên</th>
						<th>Ngày sinh</th>
						<th>Giới tính</th>
						<th>Địa chỉ</th>
						<th>Email</th>
						<th>Mã lớp</th>
						<th>Tên ngành</th>
						<th>Trạng thái</th>
						<th>Thao tác</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${listSinhVien}" var="temp">
						<tr>
							<td>${temp.hoTen}</td>
							<td>${temp.ngaySinh}</td>
							<c:choose>
								<c:when test="${temp.gioiTinh == '0'}"><td>Nam</td></c:when>
								<c:when test="${temp.gioiTinh == '1'}"><td>Nữ</td></c:when>
							</c:choose>
							<td>${temp.diaChi}</td>
							<td>${temp.email}</td>
							<td>${temp.code}</td>
							<td>${temp.tenNganh}</td>
							<td>${temp.trangThai}</td>
							<td><a href="quan-ly-sinh-vien/edit?id=${temp.svid}">Sua</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		<tr id = "space"></tr>
		<jsp:include page="/WEB-INF/basefragments/footer.jsp" />
	</table>
	
	
</body>
</html>