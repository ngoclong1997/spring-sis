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
			<td width="100%" align="right">
				<button type="button" class="btn btn-default" data-toggle="modal"
					data-target="#myModal">Thêm hồ sơ dự tuyển</button>
				<div id="myModal" class="modal fade" role="dialog">
					<div class="modal-dialog">

						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title" align="left">Thêm hồ sơ</h4>
							</div>
							<div class="modal-body">
								<form>
									<div class="form-group">
										<label for="email">Email address:</label> <input type="email"
											class="form-control" id="email">
									</div>
									<div class="form-group">
										<label for="pwd">Password:</label> <input type="password"
											class="form-control" id="pwd">
									</div>
									<div class="checkbox">
										<label><input type="checkbox"> Remember me</label>
									</div>
									<button type="submit" class="btn btn-default">Submit</button>
								</form>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
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
							<th>Năm tốt nghiệp</th>
							<th>Chuyên ngành</th>
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
								<td>${hssv.gioiTinh }</td>
								<td>${hssv.ngaySinh }</td>
								<td>${hssv.cmnd }</td>
								<td>${hssv.diaChi }</td>
								<td>${hssv.trinhDo }</td>
								<td>${hssv.namTotNghiep }</td>
								<td>${hssv.chuyenNganh }</td>
								<td>${hssv.ngoaiNgu }</td>
								<td>${hssv.email }</td>
								<td>${hssv.sdt }</td>
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