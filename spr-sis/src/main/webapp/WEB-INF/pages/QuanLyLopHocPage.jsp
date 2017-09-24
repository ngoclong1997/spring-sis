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
		$('#table_lopHoc').DataTable();
	});
</script>
<title>Quản Lý Lớp Học</title>
</head>
<body>
	<!-- ----------------------------------------------------------------------------------- -->
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
		<tr id="space"></tr>

		<tr align="left">
			<td width="0%"></td>
			<td width="100%" align="left">
				<div align="right">
					<a href="quan-ly-lop-hoc/add" class="btn btn-default">Thêm lớp
						học</a>
				</div>
				<div id="space"></div>
				<table id="table_lopHoc" class="table table-striped table-bordered">
					<thead>
						<tr>
							<th>STT</th>
							<th>ID</th>
							<th>CODE</th>
							<th>Tên Khóa Học</th>
							<th>Ngành Học</th>
							<th>Thao Tác</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${listLop}" var="temp" varStatus="status">
							<tr>
								<td>${status.count }</td>
								<td>${temp.id}</td>
								<td>${temp.code}</td>
								<td><c:forEach items="${listKhoaHoc}" var="khoa">
										<c:if test="${khoa.id == temp.khoaHocId }">${khoa.tenKhoaHoc}</c:if>
									</c:forEach></td>
								<td><c:forEach items="${listNganh}" var="nganh">
										<c:if test="${nganh.id == temp.nganhHocId }">${nganh.tenNganh}</c:if>
									</c:forEach></td>
								<td><a href="quan-ly-lop-hoc/edit?id=${temp.id}"
									class="btn btn-primary"> <span
										class="glyphicon glyphicon-pencil" title="Sửa lớp học"></span></a> <span
									data-placement="top" data-toggle="modal" title="Xóa lớp học">
										<button id="func_btn" class="btn btn-danger"
											data-id="${temp.id }" data-title="Delete" data-toggle="modal"
											href="#xoaLopHoc_${temp.id}">
											<span class="glyphicon glyphicon-trash"></span>
										</button>
								</span></td>


							</tr>

							<!-- Modal xóa lớp học -->
							<div id="xoaLopHoc_${temp.id}" class="modal fade" role="dialog">
								<div class="modal-dialog modal-lg">
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Xóa lớp học</h4>
										</div>
										<div class="modal-body">
											<h3>Bạn có chắc muốn xóa lớp học ${temp.code} không?</h3>
										</div>
										<div class="modal-footer">
											<a type="submit" id='delete' class="btn btn-danger"
												href="quan-ly-lop-hoc/delete?id=${temp.id}">Delete</a>
											<button type="button" class="btn btn-default"
												data-dismiss="modal">Close</button>
										</div>
									</div>
								</div>
							</div>

						</c:forEach>
					</tbody>
				</table>
			</td>
			<td width="0%"></td>
		</tr>
		<tr id="space"></tr>
		<tr id="space"></tr>
		<jsp:include page="/WEB-INF/basefragments/footer.jsp" />
	</table>
	<!-- ------------------------------------------------------------------------------------ -->
</body>
</html>