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
<title>Quản Lý Khóa Học</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="/WEB-INF/resources/resource.jsp" /><title>Tạo hồ sơ sinh viên lỗi</title>
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
		<tr id="space"></tr>
		<tr id = "space"></tr>
		<tr align="left">
			<td width="10%"></td>
			<td width="80%"><a href="quan-ly-khoa-hoc/add">Thêm mới
					khóa học</a></td>

			<td width="10%"></td>
		</tr>
		<tr id="space"></tr>
		<table class="context" style="width: 80%">
			<thead>
				<tr>
					<th>ID</th>
					<th>Tên Khóa Học</th>
					<th>Năm Bắt Đầu</th>
					<th>Năm Kết Thúc</th>
					<th>Ngành Học</th>
					<th>Thao Tác</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listKhoaHoc}" var="temp">
					<tr>
						<td>${temp.id}</td>
						<td>${temp.tenKhoaHoc}</td>
						<td>${temp.namBatDau}</td>
						<td>${temp.namKetThuc}</td>
						<td><c:forEach items="${listNganhHoc}" var="nganh">
							<c:if test="${nganh.id == temp.nganhHocId }">${nganh.tenNganh}</c:if>
						</c:forEach></td>
						<%-- 							<td>${temp.isDeleted}</td> --%>
						<td>
<!-- 						<span id="func_btn" data-placement="top" data-toggle="tooltip" title="Sửa hồ sơ"> -->
							<a href="quan-ly-khoa-hoc/edit?id=${temp.id}"><span class="glyphicon glyphicon-pencil"></span></a>
<!-- 							</span> -->
						 
<!-- 						<span id="func_btn" data-placement="top" data-toggle="tooltip" title="Sửa hồ sơ"> -->
							<a	href="quan-ly-khoa-hoc/delete?id=${temp.id}"><span class="glyphicon glyphicon-trash"></span></a>
<!-- 							</span> -->
						 </td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<tr id = "space"></tr>
		<tr>
			<td width="20%"></td>
			<td width="60%" align="center">
				<h2 style="color:red;">Tạo hồ sơ bị lỗi</h2>
				<p><b>Thông tin:</b> ${info }</p>
				<a class="btn btn-primary"
				href="${pageContext.request.contextPath}/nghiep-vu/quan-ly-ho-so-du-tuyen">
					Quay lại</a>
			</td>
			<td width="20%"></td>
		</tr>
		<jsp:include page="/WEB-INF/basefragments/footer.jsp" />
	</table>

</body>
</html>