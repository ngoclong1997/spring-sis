<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/_include.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thông tin</title>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/common.js"></script>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/styles/menu-dropdown.css">
	
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/styles/common.css">
	
</head>
<body style="heigh: 100%; margin: 10 auto;">
	<table width="80%" align="center">
		<jsp:include page="/WEB-INF/basefragments/header.jsp" />
		<tr style="background: aliceblue; height: 20px; padding: 5px;">
			<td colspan="3">
				<div class="menu" style="padding: 5px;">
					<jsp:include page="/WEB-INF/basefragments/menu.jsp" />
				</div>
			</td>
		</tr>
		<tr>
			<td width="20%"></td>
			<td width="60%">
				<h2>Thông tin cá nhân của ${user.username }</h2>
				<table border="1">

					<tbody>

						<tr>
							<td width="150"><spring:message code="label.full_name"></spring:message></td>
							<td>${user.hoTen }</td>
						</tr>
						<tr>
							<td width="150"><spring:message code="label.dob"></spring:message></td>
							<td>${user.ngaySinh }</td>
						</tr>

						<tr>
							<td width="150"><spring:message code="label.gender"></spring:message></td>
							<td><c:set var="gioi_tinh" value="${user.gioiTinh }" /> <c:choose>
									<c:when test="${gioi_tinh == '1' }">
										<spring:message code="label.gender_male"></spring:message>
									</c:when>
									<c:otherwise>
										<spring:message code="label.gender_female"></spring:message>
									</c:otherwise>
								</c:choose></td>

						</tr>
						<tr>
							<td width="150"><spring:message code="label.address"></spring:message></td>
							<td>${user.diaChi }</td>
						</tr>
						<tr>
							<td width="150"><spring:message code="label.email"></spring:message></td>
							<td>${user.email }</td>
						</tr>
						<tr>
							<td width="150"><spring:message code="label.phone"></spring:message></td>
							<td>${user.sdt1 }</td>
						</tr>
						<tr>
							<td width="150"><spring:message code="label.identity_num"></spring:message></td>
							<td>${user.cmnd }</td>
						</tr>

						<tr>
							<td width="150"><spring:message code="label.company"></spring:message></td>
							<td>${user.noiLamViec }</td>
						</tr>
					</tbody>
				</table>
			</td>
			<td width="20%"></td>
		</tr>
		<tr id = "space"></tr>
		<jsp:include page="/WEB-INF/basefragments/footer.jsp" />
	</table>
</body>
</html>