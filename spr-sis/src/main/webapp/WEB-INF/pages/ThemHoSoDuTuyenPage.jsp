<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/_include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="/WEB-INF/resources/resource.jsp" />
<title>Thêm hồ sơ</title>
<style>
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</style>
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
			<td width="80%" align="center">
				<h1>THÊM HỒ SƠ SINH VIÊN</h1>
				<form:form method="post" action = "${pageContext.request.contextPath}/nghiep-vu/quan-ly-ho-so-du-tuyen/them-ho-so"
				commandName = "hoSoSV">
					<TABLE>
						<TR>
							<TD>Ngành: </TD>
							<td>
								<form:select path="nganhHocId">
								   <form:option value="NONE" label="--- Select ---"/>
								   <form:options items="${dsNganhHoc}" />
								</form:select>
							</td>
							<td><form:errors path="nganhHocId" cssClass="error" /></td>
						</TR>
						<tr>
							<td>Họ tên: </td>
							<td><form:input path="hoTen"></form:input></td>
							<td><form:errors path="hoTen" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Giới tính: </td>
							<td><form:select path="gioiTinh">
								<form:option value = "1" label = "Nam"></form:option>
								<form:option value = "0" label = "Nữ"></form:option>
							</form:select></td>
							<td><form:errors path="gioiTinh" cssClass="error"></form:errors></td>
						</tr>
						<tr>
							<td>Ngày sinh: </td>
							<td><form:input path="ngaySinh" type="date" pattern="dd/MM/yyyy"/></td>
							<td><form:errors path="ngaySinh" cssClass="error"></form:errors></td>
						</tr>
						<tr>
							<td>Nơi sinh: </td>
							<td><form:input path="noiSinh"></form:input></td>
							<td><form:errors path="noiSinh" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Số CMND: </td>
							<td><form:input path="cmnd"></form:input></td>
							<td><form:errors path="cmnd" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Dân tộc: </td>
							<td><form:input path="danToc"></form:input></td>
							<td><form:errors path="danToc" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Địa chỉ: </td>
							<td><form:input path="diaChi"></form:input></td>
							<td><form:errors path="diaChi" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Trình độ: </td>
							<td><form:select path="trinhDo">
								<form:option value="1" label="THPT"></form:option>
								<form:option value="2" label="THBT"></form:option>
								<form:option value="3" label="TC Nghề"></form:option>
								<form:option value="4" label="TC"></form:option>
								<form:option value="5" label="CĐ"></form:option>
								<form:option value="6" label="ĐH"></form:option>
							</form:select></td>
							<td><form:errors path="trinhDo" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Năm tốt nghiệp: </td>
							<td><form:input path="namTotNghiep"></form:input></td>
							<td><form:errors path="namTotNghiep" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Nơi cấp: </td>
							<td><form:input path="noiCap"></form:input></td>
							<td><form:errors path="noiCap" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Chuyên ngành: </td>
							<td><form:input path="chuyenNganh"></form:input></td>
							<td><form:errors path="chuyenNganh" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Ngoại ngữ: </td>
							<td><form:select path="ngoaiNgu">
								<form:option value="Tiếng Anh" label="Tiếng Anh"></form:option>
								<form:option value="Tiếng Nga" label="Tiếng Nga"></form:option>
								<form:option value="Tiếng Trung" label="Tiếng Trung"></form:option>
								<form:option value="Tiếng Pháp" label="Tiếng Pháp"></form:option>
							</form:select></td>
							<td><form:errors path="ngoaiNgu" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Email: </td>
							<td><form:input path="email"></form:input></td>
							<td><form:errors path="email" cssClass="error" /></td>
						</tr>
						<tr>
							<td>Số điện thoại: </td>
							<td><form:input path="sdt"></form:input></td>
							<td><form:errors path="sdt" cssClass="error" /></td>
						</tr>
						
						<tr>
							<td></td>
							<td><input type="submit" value="Thêm hồ sơ" class="btn btn-success"></input>
							<a href = "${pageContext.request.contextPath}/nghiep-vu/quan-ly-ho-so-du-tuyen" class="btn btn-default">Quay lại</a></td>
							<td></td>
						</tr>
						
					</TABLE>
				</form:form>	
			</td>
			<td width="10%"></td>
		</tr>
		<jsp:include page="/WEB-INF/basefragments/footer.jsp" />
	</table>

</body>
</html>