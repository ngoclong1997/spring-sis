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
			<td width="80%"><c:if test="${nganhHoc.id != null}">
					<h2>
						Chinh Sua
						<h2>
				</c:if> <c:if test="${nganhHoc.id == null}">
					<h2>
						Them Moi
						<h2>
				</c:if></td>
			<td width="10%"></td>
		</tr>
		<tr>
			<form method="POST" modelAttribute="nganhHoc"
				action="${pageContext.request.contextPath}/nghiep-vu/quan-ly-nganh-hoc/save">
				<input type="hidden" name="id" value="${nganhHoc.id}"><input
					type="hidden" name="isDeleted" value="${nganhHoc.isDeleted}">
				<table style="width: 50%; border: 1px solid; margin: 0 auto;">
					<tr>
						<td>Ten Nganh</td>
						<td><input path="tenNganh" name="tenNganh"
							value="${nganhHoc.tenNganh}" /></td>
						<td><errors path="tenNganh" class="error-message" /></td>
					</tr>

					<tr>
						<td>Ky Hieu</td>
						<td><input path="kyHieu" name="kyHieu"
							value="${nganhHoc.kyHieu}" /></td>
						<td><errors path="kyHieu" class="error-message" /></td>
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