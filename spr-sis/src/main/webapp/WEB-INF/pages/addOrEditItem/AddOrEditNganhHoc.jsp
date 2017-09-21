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
<title>Thêm Ngành Học</title>
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
		<tr align="left">
			<td width="10%"></td>
			<td width="80%"><c:if test="${nganhHoc.id != null}">
					<h2>
						Chỉnh Sửa
						<h2>
				</c:if> <c:if test="${nganhHoc.id == null}">
					<h2>
						Thêm Mới
						<h2>
				</c:if></td>
			<td width="10%"></td>
		</tr>
		<tr>
			<td width="10%"></td>
			<td><f:form method="POST" commandName="nganhHoc"
					action="${pageContext.request.contextPath}/nghiep-vu/quan-ly-nganh-hoc/save">
					<f:input type="hidden" value="${nganhHoc.id}" path ="id" name="id"/>
					<f:input type="hidden" value="${nganhHoc.isDeleted}" path = "isDeleted" naem="isDeleted"/>
					<div class="form-group" style="padding-top: 20px;">
						<label class="col-xs-3">Tên ngành</label>
						<div class="col-xs-9 col-sm-9">
							<f:input path="tenNganh" name="tenNganh"
								value="${nganhHoc.tenNganh}" />
							<f:errors path="tenNganh" class="has-error" style="color: red;"/>
						</div>

					</div>
					<div class="form-group" style="padding-top: 20px;">
						<label class="col-xs-3">Ký hiệu</label>
						<div class="col-xs-9 col-sm-9">
							<f:input path="kyHieu" name="kyHieu" value="${nganhHoc.kyHieu}" />
							<f:errors path="kyHieu" class="has-error" style="color: red;"/>
						</div>
					</div>
					</div>
					<div class="form-group" style="padding-top: 20px;">
						<div align="right">
							<button  type="submit" class="btn btn-success">Submit</button>
							<button  type="reset" class="btn btn-danger">Reset</button>
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