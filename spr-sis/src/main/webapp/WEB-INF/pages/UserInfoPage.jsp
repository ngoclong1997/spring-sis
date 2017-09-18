<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/_include.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head xmlns:th="http://www.thymeleaf.org">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thông tin người dùng</title>
<jsp:include page="/WEB-INF/resources/resource.jsp" />
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
			<td width="10%"></td>
			<td width="80%">
				<h2>Thông tin cá nhân của ${user.username }</h2>

				<table class="table table-striped">
					<thead>
						<tr>
							<th><spring:message code="label.full_name"></spring:message></th>
							<th><spring:message code="label.dob"></spring:message></th>
							<th><spring:message code="label.gender"></spring:message></th>
							<th><spring:message code="label.address"></spring:message></th>
							<th><spring:message code="label.email"></spring:message></th>
							<th><spring:message code="label.phone"></spring:message></th>
							<th><spring:message code="label.identity_num"></spring:message></th>
							<th><spring:message code="label.company"></spring:message></th>
						</tr>
					</thead>
					<tbody>
							<tr>
								<td>${user.hoTen }</td>
								<td>${user.ngaySinh }</td>
								<td><c:set var="gioi_tinh" value="${user.gioiTinh }" /> <c:choose>
										<c:when test="${gioi_tinh == '1' }">
											<spring:message code="label.gender_male"></spring:message>
										</c:when>
										<c:otherwise>
											<spring:message code="label.gender_female"></spring:message>
										</c:otherwise>
									</c:choose></td>
								<td>${user.diaChi }</td>
								<td>${user.email }</td>
								<td>${user.sdt1 }</td>
								<td>${user.cmnd }</td>
								<td>${user.noiLamViec }</td>
							</tr>
					</tbody>
				</table>

			</td>
			<td width="10%"></td>
		</tr>
		<tr id="space"></tr>
		<jsp:include page="/WEB-INF/basefragments/footer.jsp" />
	</table>
</body>
</html>