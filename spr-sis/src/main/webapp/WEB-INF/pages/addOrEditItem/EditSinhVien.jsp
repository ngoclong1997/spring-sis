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
		<tr align="left">
			<td width="10%"></td>
			<td width="80%">
				<h2>Chỉnh Sửa</h2>
			</td>
			<td width="10%"></td>
		</tr>
		<tr>
			<form method="POST" modelAttribute="sinhVien"
				action="${pageContext.request.contextPath}/nghiep-vu/quan-ly-sinh-vien/save">
				<input type="hidden" name="id" value="${sinhVien.id}">
				<input type="hidden" name="isDeleted" value="${sinhVien.isDeleted}">
				<input type="hidden" name="cbtsUsername" value="${sinhVien.cbtsUsername}">
				<input type="hidden" name="lopId" value="${sinhVien.lopId}">
				<input type="hidden" name="nganhHocId" value="${sinhVien.nganhHocId}">
				<input type="hidden" name="username" value="${sinhVien.username}">
				<table style="width: 50%; border: 1px solid; margin: 0 auto;">
					<tr>
						<td>Mã Quản Lý</td>
						<td><input path="maQuanLy" name="maQuanLy"
							value="${sinhVien.maQuanLy}" /></td>
						<td><errors path="maQuanLy" class="error-message" /></td>
					</tr>

					<tr>
						<td>Trạng Thái</td>
						<td><select name="trangThaiId">
								<c:forEach items="${listTrangThai}" var="temp">
									<option value="${temp.id}">${temp.trangThai}</option>
								</c:forEach>
						</select></td>
						<td><errors path="trangThaiId" class="error-message" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td><input type="submit" value="Submit" /> <input
							type="reset" value="Reset" /></td>
					</tr>
				</table>

			</form>
		</tr>
		<tr id="space"></tr>

		<jsp:include page="/WEB-INF/basefragments/footer.jsp" />
	</table>

</body>
</html>