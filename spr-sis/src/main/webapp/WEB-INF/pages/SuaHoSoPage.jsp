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
		<tr>
			<td>
				<form method="POST"
				action="${pageContext.request.contextPath}/nghiep-vu/quan-ly-ho-so-du-tuyen/update"
				modelAttribute="hoSoSV">
				<div class="form-group">
					<label for="nganhHocId">Ngành</label> <select name="nganhHocId"
						class="form-control">
						<option value="NONE">---Select---</option>
						<c:forEach items="${dsNganhHoc}" var="item" varStatus="count">
							<option value="${item.id}" label="${item.tenNganh }"></option>
						</c:forEach>
					</select>
				</div>
				<div class="form-group">
					<label for="hoTen">Họ tên</label>
					<div>
						<input type="text" class="form-control" id="hoTen" name="hoTen" value="${hoSoSV.hoTen }">
					</div>
				</div>
				<div class="form-group">
					<label for="gioiTinh">Giới tính</label>
					<div>
						<label class="radio-inline"> <input type="radio"
							name="gioiTinh" value="1">Male </label> <label
							class="radio-inline"> <input type="radio" name="gioiTinh"
							value="0">Female </label>
					</div>
				</div>
				<div>
					<label for="ngaySinh">Ngày sinh</label>
					<div>
						<input type="date" class="form-control" id="ngaySinh"
							name="ngaySinh" value="${hoSoSV.ngaySinh }">
					</div>
				</div>
				<div>
					<label for="noiSinh">Nơi sinh</label>
					<div>
						<input type="text" class="form-control" id="noiSinh"
							name="noiSinh"  value="${hoSoSV.noiSinh }">
					</div>
				</div>
				<div>
					<label for="cmnd">Số CMND</label>
					<div>
						<input type="text" class="form-control" id="cmnd" name="cmnd" value="${hoSoSV.cmnd }">
					</div>
				</div>
				<div>
					<label for="danToc">Dân tộc</label>
					<div>
						<input type="text" class="form-control" id="danToc" name="danToc" value="${hoSoSV.danToc }">
					</div>
				</div>
				
				<div>
					<label for="diaChi">Địa chỉ</label>
					<div>
						<input type="text" class="form-control" id="hoKhauThuongTru"
							name="diaChi" value="${hoSoSV.diaChi }">
					</div>
				</div>
				<div>
					<label for="trinhDo">Đã tốt nghiệp</label>
					<div>
						<label class="radio-inline"> <input type="radio"
							name="trinhDo" value="THPT">THPT </label> <label
							class="radio-inline"> <input type="radio" name="trinhDo"
							value="THBT">THBT </label> <label class="radio-inline"> <input
							type="radio" name="trinhDo" value="TC Nghề">TC nghề </label> <label
							class="radio-inline"> <input type="radio" name="trinhDo"
							value="TC">TC </label> <label class="radio-inline"> <input
							type="radio" name="trinhDo" value="CĐ">CĐ </label> <label
							class="radio-inline"> <input type="radio" name="trinhDo"
							value="ĐH">ĐH </label>
					</div>
				</div>
				<div>
					<label for="namTotNghiep">Năm tốt nghiệp</label>
					<div>
						<input type="text" class="form-control" id="namTotNghiep"
							name="namTotNghiep" value="${hoSoSV.namTotNghiep }">
					</div>
				</div>
				<div>
					<label for="noiCap">Nơi cấp</label>
					<div>
						<input type="text" class="form-control" id="noiCap" name="noiCap" value="${hoSoSV.noiCap }">
					</div>
				</div>
				<div>
					<label for="chuyenNganh">Chuyên ngành (TC trở lên)</label>
					<div>
						<input type="text" class="form-control" id="chuyenNganh"
							name="chuyenNganh" value="${hoSoSV.chuyenNganh }">
					</div>
				</div>
				<div>
					<label for="ngoaiNgu">Ngoại ngữ</label>
					<div>
						<label class="radio-inline"> <input type="radio"
							name="ngoaiNgu" value="Tiếng Anh">Tiếng Anh </label> <label class="radio-inline">
							<input type="radio" name="ngoaiNgu" value="Tiếng Nga">Tiếng Nga 
						</label> <label class="radio-inline"> <input type="radio"
							name="ngoaiNgu" value="Tiếng Trung">Tiếng Trung </label> <label class="radio-inline">
							<input path="ngoaiNgu" type="radio" name="ngoaiNgu" value="Tiếng Pháp">Tiếng Pháp
						
						</label>
					</div>
				</div>
				<div>
					<label for="email">Email</label>
					<div>
						<input type="email" class="form-control" id="email"
							name="email" value="${hoSoSV.email }">
					</div>
				</div>
				<div>
					<label for="sdt" >Số điện thoại</label>
					<div>
						<input type="text" class="form-control" id="sdt"
							name="sdt" value="${hoSoSV.sdt }">
					</div>
				</div>

				<div class="modal-footer">
					<input type="submit" id='insert' class="btn btn-primary"
						value="Update"></input>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

				</div>
			</form>
			</td>
		</tr>
	</table>
</body>
</html>