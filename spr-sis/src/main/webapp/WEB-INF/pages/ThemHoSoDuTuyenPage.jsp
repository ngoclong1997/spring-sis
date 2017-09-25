<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/_include.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><jsp:include
	page="/WEB-INF/resources/resource.jsp" />
<title>Thêm hồ sơ</title>
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
		<tr>
			<td width="10%"></td>
			<td width="80%">
				<h1>THÊM HỒ SƠ SINH VIÊN</h1> <form:form method="POST"
					action="${pageContext.request.contextPath}/nghiep-vu/quan-ly-ho-so-du-tuyen/xu-ly-them-ho-so"
					commandName="hoSoSV">
					<div class="form-group" style="padding-top: 20px;">
						<label class="col-xs-3"><span style="color:red">*</span>Ngành: </label>
						<div class="col-xs-9 col-sm-9">
							<form:select path="nganhHocId" name="nganhHocId">
								<form:option value="-1" label="--- Select ---" />
								<c:forEach items="${dsNganhHoc}" var = "temp">
									<option ${not empty hoSoSV.nganhHocId && hoSoSV.nganhHocId == temp.id ? 'selected' : ''} value="${temp.id}" >${temp.tenNganh}</option>
								</c:forEach>
							</form:select>
							<form:errors path="nganhHocId" class="error" />
						</div>
					</div>
					<div class="form-group" style="padding-top: 20px;">
						<label class="col-xs-3"><span style="color:red">*</span>Họ tên:</label>
						<div class="col-xs-9 col-sm-9">
							<form:input value="${not empty hoSoSV.hoTen ? hoSoSV.hoTen : '' }" path="hoTen" name="hoTen"></form:input>
							<form:errors path="hoTen" class="error" />
						</div>
					</div>
					<div class="form-group" style="padding-top: 20px;">
						<label class="col-xs-3"><span style="color:red">*</span>Giới tính:</label>
						<div class="col-xs-9 col-sm-9">
							<form:select path="gioiTinh" name="gioiTinh">
								<option value = "-1" label = "--- Select ---"></option>
								<option ${not empty hoSoSV.gioiTinh && hoSoSV.gioiTinh == '1' ? 'selected' : ''} value="1" label="Nam"></option>
								<option ${not empty hoSoSV.gioiTinh && hoSoSV.gioiTinh == '0' ? 'selected' : ''} value="0" label="Nữ"></option>
								<option ${not empty hoSoSV.gioiTinh && hoSoSV.gioiTinh == '2' ? 'selected' : ''} value ="2" label = "Khác"></option>
							</form:select>
							<form:errors path="gioiTinh" class="error"></form:errors>
						</div>
					</div>
					<div class="form-group" style="padding-top: 20px;">
						<label class="col-xs-3"><span style="color:red">*</span>Ngày sinh: </label>
						<div class="col-xs-9 col-sm-9">
							<form:input value="${not empty hoSoSV.ngaySinh ? hoSoSV.ngaySinh : '' }" path="ngaySinh" type = "date" pattern = "dd/MM/yyyy"
								name="ngaySinh" />
							<form:errors path="ngaySinh" class="error"></form:errors>
						</div>
					</div>
					<div class="form-group" style="padding-top: 20px;">
						<label class="col-xs-3">Nơi sinh: </label>
						<div class="col-xs-9 col-sm-9">
							<form:input value="${not empty hoSoSV.noiSinh ? hoSoSV.noiSinh : '' }" path="noiSinh" name="noiSinh"></form:input>
							<form:errors path="noiSinh" class="error" />
						</div>
					</div>
					<div class="form-group" style="padding-top: 20px;">
						<label class="col-xs-3"><span style="color:red">*</span>Số CMND: </label>
						<div class="col-xs-9 col-sm-9">
							<form:input value="${not empty hoSoSV.cmnd ? hoSoSV.cmnd : '' }" path="cmnd" name="cmnd"></form:input>
							<form:errors path="cmnd" class="error" />
						</div>
					</div>
					<div class="form-group" style="padding-top: 20px;">
						<label class="col-xs-3">Dân tộc: </label>
						<div class="col-xs-9 col-sm-9">
							<form:input value="${not empty hoSoSV.danToc ? hoSoSV.danToc : '' }" path="danToc" name="danToc"></form:input>
							<form:errors path="danToc" class="error" />
						</div>
					</div>

					<div class="form-group" style="padding-top: 20px;">
						<label class="col-xs-3"><span style="color:red">*</span>Địa chỉ: </label>
						<div class="col-xs-9 col-sm-9">
							<form:input value="${not empty hoSoSV.diaChi ? hoSoSV.diaChi : '' }" path="diaChi" name="diaChi"></form:input>
							<form:errors path="diaChi" class="error" />
						</div>
					</div>

					<div class="form-group" style="padding-top: 20px;">
						<label class="col-xs-3"><span style="color:red">*</span>Trình độ: </label>
						<div class="col-xs-9 col-sm-9">
							<form:select path="trinhDo" name="trinhDo">
								<option value = "-1" label = "--- Select ---"></option>
								<option ${not empty hoSoSV.trinhDo && hoSoSV.trinhDo == '1' ? 'selected' : ''} value="1" label="THPT"></option>
								<option ${not empty hoSoSV.trinhDo && hoSoSV.trinhDo == '2' ? 'selected' : ''} value="2" label="THBT"></option>
								<option ${not empty hoSoSV.trinhDo && hoSoSV.trinhDo == '3' ? 'selected' : ''} value="3" label="TC Nghề"></option>
								<option ${not empty hoSoSV.trinhDo && hoSoSV.trinhDo == '4' ? 'selected' : ''} value="4" label="TC"></option>
								<option ${not empty hoSoSV.trinhDo && hoSoSV.trinhDo == '5' ? 'selected' : ''} value="5" label="CĐ"></option>
								<option ${not empty hoSoSV.trinhDo && hoSoSV.trinhDo == '6' ? 'selected' : ''} value="6" label="ĐH"></option>
							</form:select>
							<form:errors path="trinhDo" class="error" />
						</div>
					</div>

					<div class="form-group" style="padding-top: 20px;">
						<label class="col-xs-3">Năm tốt nghiệp </label>
						<div class="col-xs-9 col-sm-9">
							<form:input value="${not empty hoSoSV.namTotNghiep ? hoSoSV.namTotNghiep : '' }" path="namTotNghiep" name="namTotNghiep"></form:input>
							<form:errors path="namTotNghiep" class="error" />
						</div>
					</div>

					<div class="form-group" style="padding-top: 20px;">
						<label class="col-xs-3">Nơi cấp: </label>
						<div class="col-xs-9 col-sm-9">
							<form:input value="${not empty hoSoSV.noiCap ? hoSoSV.noiCap : '' }" path="noiCap" name="noiCap"></form:input>
							<form:errors path="noiCap" class="error" />
						</div>
					</div>

					<div class="form-group" style="padding-top: 20px;">
						<label class="col-xs-3">Chuyên ngành: </label>
						<div class="col-xs-9 col-sm-9">
							<form:input value="${not empty hoSoSV.chuyenNganh ? hoSoSV.chuyenNganh : '' }" path="chuyenNganh" name="chuyenNganh"></form:input>
							<form:errors path="chuyenNganh" class="error" />
						</div>
					</div>

					<div class="form-group" style="padding-top: 20px;">
						<label class="col-xs-3"><span style="color:red">*</span>Ngoại ngữ: </label>
						<div class="col-xs-9 col-sm-9">
							<form:select path="ngoaiNgu" name="ngoaiNgu">
								<option value = "NONE" label = "--- Select ---"></option>
								<option ${not empty hoSoSV.ngoaiNgu && hoSoSV.ngoaiNgu == 'Tiếng Anh' ? 'selected' : ''} value="Tiếng Anh" label="Tiếng Anh"></option>
								<option ${not empty hoSoSV.ngoaiNgu && hoSoSV.ngoaiNgu == 'Tiếng Nga' ? 'selected' : ''} value="Tiếng Nga" label="Tiếng Nga"></option>
								<option ${not empty hoSoSV.ngoaiNgu && hoSoSV.ngoaiNgu == 'Tiếng Trung' ? 'selected' : ''} value="Tiếng Trung" label="Tiếng Trung"></option>
								<option ${not empty hoSoSV.ngoaiNgu && hoSoSV.ngoaiNgu == 'Tiếng Pháp' ? 'selected' : ''} value="Tiếng Pháp" label="Tiếng Pháp"></option>
								<option ${not empty hoSoSV.ngoaiNgu && hoSoSV.ngoaiNgu == 'Khác' ? 'selected' : '' } value = "Khác" label  ="Khác"></option>
							</form:select>
							<form:errors path="ngoaiNgu" class="error" />
						</div>
					</div>

					<div class="form-group" style="padding-top: 20px;">
						<label class="col-xs-3">Email:</label>
						<div class="col-xs-9 col-sm-9">
							<form:input value="${not empty hoSoSV.email ? hoSoSV.email : '' }" path="email" name="email"></form:input>
							<form:errors path="email" class="error" />
						</div>
					</div>

					<div class="form-group" style="padding-top: 20px;">
						<label class="col-xs-3"><span style="color:red">*</span>Số điện thoại</label>
						<div class="col-xs-9 col-sm-9">
							<form:input value="${not empty hoSoSV.sdt ? hoSoSV.sdt : '' }" path="sdt" name="sdt"></form:input>
							<form:errors path="sdt" class="error" />
						</div>
					</div>

					<div class="form-group" style="padding-top: 20px;">
						<div align="right">
							<button type="submit" class="btn btn-success">Thêm hồ sơ</button>
							<a
								href="${pageContext.request.contextPath}/nghiep-vu/quan-ly-ho-so-du-tuyen"
								class="btn btn-default">Quay lại</a>
						</div>
					</div>

				</form:form>
			</td>
			<td width="10%"></td>
		</tr>
		<jsp:include page="/WEB-INF/basefragments/footer.jsp" />
	</table>

</body>
</html>
