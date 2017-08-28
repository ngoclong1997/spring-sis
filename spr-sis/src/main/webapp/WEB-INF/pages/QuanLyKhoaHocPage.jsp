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
		<tr id="space"></tr>
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
						<td><a href="quan-ly-khoa-hoc/edit?id=${temp.id}">Sua</a> <a
							href="quan-ly-khoa-hoc/delete?id=${temp.id}">Xoa</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<jsp:include page="/WEB-INF/basefragments/footer.jsp" />
	</table>

</body>
</html>