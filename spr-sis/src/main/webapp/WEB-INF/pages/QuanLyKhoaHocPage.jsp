<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/_include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><jsp:include
	page="/WEB-INF/resources/resource.jsp" />
<title>Quản Lý Khóa Học</title>
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
			<td width="80%"><a href="quan-ly-khoa-hoc/add">Thêm mới
					khóa học</a></td>

			<td width="10%"></td>
		</tr>
		<tr id="space"></tr>
		<tr>
			<td width="0%"></td>
			<td width="100%" align="left">
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
									<a href="quan-ly-khoa-hoc/edit?id=${temp.id}"><span
										class="glyphicon glyphicon-pencil"></span></a> <!-- 							</span> -->

									<!-- 						<span id="func_btn" data-placement="top" data-toggle="tooltip" title="Sửa hồ sơ"> -->
									<a href="quan-ly-khoa-hoc/delete?id=${temp.id}"><span
										class="glyphicon glyphicon-trash"></span></a> <!-- 							</span> -->
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</td>
			<td width="0%"></td></tr>
		<tr id = "space"></tr>
		<jsp:include page="/WEB-INF/basefragments/footer.jsp" />
	</table>

</body>
</html>