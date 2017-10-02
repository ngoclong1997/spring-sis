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
		$('#table_khoaHoc').DataTable();
	});
</script>
<title>Quản Lý Khóa Học</title>
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
		<tr>
			<c:if test="${success eq true }">
				<div class="alert alert-success alert-dismissible">
					<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					<strong><spring:message code="laben.delete.success.msg"></spring:message></strong>
				</div>
			</c:if>
			<c:if test="${success eq false }">
				<div class="alert alert-warning alert-dismissible">
					<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					<strong><spring:message code="laben.delete.warning.msg"></spring:message></strong>
				</div>
			</c:if>
		</tr>

		<tr align="left">
			<td width="0%"></td>
			<td width="100%" align="left">
				<div align="right">
					<a href="quan-ly-khoa-hoc/add" class="btn btn-default">Thêm
						khóa học</a>
				</div>
				<div id="space"></div>
				<table id="table_khoaHoc" class="table table-striped table-bordered">
					<thead>
						<tr>
							<th>STT</th>
							<th>ID</th>
							<th>Tên Khóa Học</th>
							<th>Năm Bắt Đầu</th>
							<th>Năm Kết Thúc</th>
							<th>Ngành Học</th>
							<th>Thao Tác</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${listKhoaHoc}" var="temp" varStatus="status">
							<tr>
								<td>${status.count }</td>
								<td>${temp.id}</td>
								<td>${temp.tenKhoaHoc}</td>
								<td>${temp.namBatDau}</td>
								<td>${temp.namKetThuc}</td>
								<td><c:forEach items="${listNganhHoc}" var="nganh">
										<c:if test="${nganh.id == temp.nganhHocId }">${nganh.tenNganh}</c:if>
									</c:forEach></td>
								<td><a href="quan-ly-khoa-hoc/edit?id=${temp.id}"
									class="btn btn-primary"> <span
										class="glyphicon glyphicon-pencil"></span></a> <span
									data-placement="top" data-toggle="modal" title="Xóa khóa học"><button
											id="func_btn" class="btn btn-danger" data-id="${temp.id }"
											data-title="Delete" data-toggle="modal"
											href="#xoaKhoaHoc_${temp.id}">
											<span class="glyphicon glyphicon-trash"></span>
										</button> </span></td>
							</tr>

							<!-- Modal xóa khóa học -->
							<div id="xoaKhoaHoc_${temp.id}" class="modal fade" role="dialog">
								<div class="modal-dialog modal-lg">
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Xóa ngành học</h4>
										</div>
										<div class="modal-body">
											<h3>Bạn có chắc muốn xóa khóa học ${temp.tenKhoaHoc}
												không?</h3>
										</div>
										<div class="modal-footer">
											<a type="submit" id='delete' class="btn btn-danger"
												href="quan-ly-khoa-hoc/delete?id=${temp.id}">Delete</a>
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