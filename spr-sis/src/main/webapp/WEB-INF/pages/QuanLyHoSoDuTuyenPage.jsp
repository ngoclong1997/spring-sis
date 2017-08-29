<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/_include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/common.js"></script>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/styles/menu-dropdown.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/styles/common.css">
<title>Trang chủ</title>

<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	th:href="@{/webjars/bootstrap/3.3.7/css/bootstrap.min.css}"
	rel="stylesheet" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"
	th:src="@{/webjars/jquery/1.12.4/jquery.min.js}"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	th:src="@{/webjars/bootstrap/3.3.7/js/bootstrap.min.js}"></script>
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
			<td width="0%"></td>
			<td width="100%" align="left">
				<div align="right" style="padding-right: 30px;">
					<button type="button" class="btn btn-default" data-toggle="modal"
						data-target="#themHSSV">Thêm hồ sơ dự tuyển</button>
				</div>
				<form method="POST" action="${pageContext.request.contextPath}/nghiep-vu/quan-ly-ho-so-du-tuyen/them-ho-so" modelAttribute="hoSoSV">
					<div id="themHSSV" class="modal fade" role="dialog">
						<jsp:include page="/WEB-INF/popup/ThemHoSoSVModal.jsp" />
					</div>
				</form>
				<table class="table table-striped">
					<thead>
						<tr>
							<th>No.</th>
							<th>Họ tên SV</th>
							<th>Giới tính</th>
							<th>Ngày sinh</th>
							<th>Số cmnd</th>
							<th>Địa chỉ</th>
							<th>Trình độ</th>
							<th>Ngoại ngữ</th>
							<th>Email</th>
							<th>Số điện thoại</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${dsHoSoSV }" var="hssv" varStatus="status">
							<tr>
								<td>${hssv.id }</td>
								<td>${hssv.hoTen }</td>
								<td><c:set var="gioi_tinh" value="${hssv.gioiTinh }" /> <c:choose>
										<c:when test="${gioi_tinh == '1' }">
											<spring:message code="label.gender_male"></spring:message>
										</c:when>
										<c:otherwise>
											<spring:message code="label.gender_female"></spring:message>
										</c:otherwise>
									</c:choose></td>
								<td>${hssv.ngaySinh }</td>
								<td>${hssv.cmnd }</td>
								<td>${hssv.diaChi }</td>
								<td>${hssv.trinhDo }</td>
								<td>${hssv.ngoaiNgu }</td>
								<td>${hssv.email }</td>
								<td>${hssv.sdt }</td>
								<td><p data-placement="top" data-toggle="tooltip"
										title="Edit">
										<button class="btn btn-primary btn-xs" data-title="Edit"
											data-toggle="modal" data-target="#suaHSSV">
											<span class="glyphicon glyphicon-pencil"></span>
										</button>
									</p></td>
								<div id="suaHSSV" class="modal fade" role="dialog">
									<jsp:include page="/WEB-INF/popup/SuaHoSoSVModal.jsp" />
								</div>
								<td><p data-placement="top" data-toggle="tooltip"
										title="Delete">
										<button class="btn btn-danger btn-xs" data-title="Delete"
											data-toggle="modal" data-target="#xoaHSSV">
											<span class="glyphicon glyphicon-trash"></span>
										</button>
									</p></td>
								<div id="xoaHSSV" class="modal fade" role="dialog">
									<jsp:include page="/WEB-INF/popup/XoaHoSoSVModal.jsp" />
								</div>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</td>

			<td width="0%"></td>
		</tr>
		<tr id="space"></tr>
		<jsp:include page="/WEB-INF/basefragments/footer.jsp" />
	</table>

</body>
</html>