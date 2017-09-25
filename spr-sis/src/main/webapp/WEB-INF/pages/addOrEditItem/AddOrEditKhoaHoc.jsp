<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/_include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><jsp:include
	page="/WEB-INF/resources/resource.jsp" />

<!-- 	select2 -->

<title>Thêm Ngành Học</title>
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
			<td width="80%"><c:if test="${khoaHoc.id != null}">
					<h2>
						Chỉnh Sửa
						<h2>
				</c:if> <c:if test="${khoaHoc.id == null}">
					<h2>
						Thêm Mới
						<h2>
				</c:if></td>
			<td width="10%"></td>
		</tr>
		<tr>
		</tr>
		<tr>
			<td width="10%"></td>
			<td><f:form method="POST" commandName="khoaHoc"
					action="${pageContext.request.contextPath}/nghiep-vu/quan-ly-khoa-hoc/save">
					<f:input type="hidden" value="${khoaHoc.id}" path="id" name="id" />
					<f:input type="hidden" value="${khoaHoc.isDeleted}"
						path="isDeleted" naem="isDeleted" />
					<div class="form-group" style="padding-top: 20px;">
						<label class="col-xs-3">Tên Khoá</label>
						<div class="col-xs-9 col-sm-9">
							<f:input path="tenKhoaHoc" name="tenKhoaHoc" class="col-sm-5"
								value="${khoaHoc.tenKhoaHoc}" />
							<f:errors path="tenKhoaHoc" class="has-error col-sm-4"
								style="color: red;" />
						</div>

					</div>
					<div class="form-group" style="padding-top: 20px;">
						<label class="col-xs-3">Năm Bắt Đầu</label>
						<div class="col-xs-9 col-sm-9">
							<f:input path="namBatDau" name="namBatDau" class="col-sm-5"
								type="number" min="2017"
								value="${khoaHoc.namBatDau != null ? khoaHoc.namBatDau : 2017}" />
							<f:errors path="namBatDau" class="has-error col-sm-4"
								style="color: red;" />
						</div>
					</div>
					<div class="form-group" style="padding-top: 20px;">
						<label class="col-xs-3">Năm Kết Thúc</label>
						<div class="col-xs-9 col-sm-9">
							<f:input path="namKetThuc" name="namKetThuc" class="col-sm-5"
								type="number" min="2018"
								value="${khoaHoc.namKetThuc != null ? khoaHoc.namKetThuc : 2018}" />
							<f:errors path="namKetThuc" class="has-error col-sm-4"
								style="color: red;" />
						</div>
					</div>
					<div class="form-group" style="padding-top: 20px;">
						<label class="col-xs-3">Ngành Học</label>
						<div class="col-xs-9 col-sm-9">
							<div class="col-xs-5 col-sm-5" style="padding: 0px;">
								<f:select class="form-control select2" name="nganhHocId"
									path="nganhHocId">
									<c:forEach items="${listNganh}" var="temp">
										<f:option value="${temp.id}">${temp.tenNganh}</f:option>
									</c:forEach>
								</f:select>
								<script>
									$(function() {
										$('.select2').select2()
									})
								</script>
							</div>

							<f:errors path="nganhHocId" class="has-error col-sm-4"
								style="color: red;" />
						</div>
					</div>

					</div>
					<div class="form-group" style="padding-top: 20px;">
						<div align="right">
							<button type="submit" class="btn btn-success">Submit</button>
							<button type="reset" class="btn btn-danger">Reset</button>
						</div>
					</div>
				</f:form></td>
			<td width="10%"></td>
		</tr>
		<tr id="space"></tr>

		<jsp:include page="/WEB-INF/basefragments/footer.jsp" />
	</table>


</body>
</html>