<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/_include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><jsp:include
	page="/WEB-INF/resources/resource.jsp" />
<script type="text/javascript" charset="utf-8">
	$(document).ready(function() {
		$('#table_nganhHoc').DataTable();
	});
</script>
<title>Quản Lý Sinh Viên</title>
</head>
<body>
	<!-- ----------------------------------------------------------------------------------- -->
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
		<tr id="space"></tr>
		<tr align="left">
			<td width="100%" align="left">
				<table id="table_nganhHoc"
					class="table table-striped table-bordered">
					<thead>
						<tr>
							<th>STT</th>
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
						<c:forEach items="${listSinhVien}" var="temp" varStatus="status">
							<tr>
								<td>${status.count }</td>
								<td>${temp.hoTen}</td>
								<td>${temp.ngaySinh}</td>
								<c:choose>
									<c:when test="${temp.gioiTinh == '0'}">
										<td>Nam</td>
									</c:when>
									<c:when test="${temp.gioiTinh == '1'}">
										<td>Nữ</td>
									</c:when>
								</c:choose>
								<td>${temp.diaChi}</td>
								<td>${temp.email}</td>
								<td>${temp.code}</td>
								<td>${temp.tenNganh}</td>
								<td>${temp.trangThai}</td>
								<td><a href="quan-ly-sinh-vien/edit?id=${temp.svid}"
									class="btn btn-primary"> <span
										class="glyphicon glyphicon-pencil"></span></a> </span></td>
							</tr>


						</c:forEach>
					</tbody>
				</table>
			</td>
		</tr>
		<tr id="space"></tr>
		<tr id="space"></tr>
		<jsp:include page="/WEB-INF/basefragments/footer.jsp" />
	</table>
	<!-------------------------------------------------------------------------------------- -->
</body>
</html>