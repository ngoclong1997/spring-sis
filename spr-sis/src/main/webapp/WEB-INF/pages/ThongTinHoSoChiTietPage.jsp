<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/_include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><jsp:include
	page="/WEB-INF/resources/resource.jsp" />
<TITLE>Thông tin hồ sơ</TITLE>
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

		<tr height="10px"></tr>
		<tr align="center">
			<td width="10%"></td>
			<td width="80%">
				<table border=1>
					<tr>
						<td width="250px">Ngành học</td>
						<td>${nganhHoc }</td>
					</tr>
					<tr>
						<td width="40%">Họ và tên</td>
						<td width="60%">${hoSoSV.hoTen }</td>
					</tr>
					<tr>
						<td width="40%">Giới tính</td>
						<td width="60%"><c:set var="gioi_tinh"
								value="${hoSoSV.gioiTinh }" /> <c:choose>
								<c:when test="${gioi_tinh == '1' }">
									<spring:message code="label.gender_male"></spring:message>
								</c:when>
								<c:otherwise>
									<spring:message code="label.gender_female"></spring:message>
								</c:otherwise>
							</c:choose></td>
					</tr>
					<tr>
						<td width="40%">Ngày sinh</td>
						<td width="60%"><fmt:formatDate value="${hoSoSV.ngaySinh }"
								pattern="dd/MM/yyyy"></fmt:formatDate></td>
					</tr>
					<tr>
						<td width="40%">Nơi sinh</td>
						<td width="60%">${hoSoSV.noiSinh }</td>
					</tr>
					<tr>
						<td width="40%">Số cmnd</td>
						<td width="60%">${hoSoSV.cmnd }</td>
					</tr>
					<tr>
						<td width="40%">Dân tộc</td>
						<td width="60%">${hoSoSV.danToc }</td>
					</tr>
					<tr>
						<td width="40%">Hộ khẩu thường trú</td>
						<td width="60%">${hoSoSV.hoKhauThuongTru }</td>
					</tr>
					<tr>
						<td width="40%">Đã tốt nghiệp</td>
						<td width="60%"><c:set var="trinh_do"
								value="${hoSoSV.trinhDo }" /> <c:choose>
								<c:when test="${trinh_do == '1' }">
											THPT
										</c:when>
								<c:when test="${trinh_do == '2' }">
											THBT
										</c:when>
								<c:when test="${trinh_do == '3' }">
											TC Nghề
										</c:when>
								<c:when test="${trinh_do == '4' }">
											TC
										</c:when>
								<c:when test="${trinh_do == '5' }">
											CĐ
										</c:when>
								<c:when test="${trinh_do == '6' }">
											ĐH
										</c:when>
								<c:otherwise>
									<span style="color: red">Unknown</span>
								</c:otherwise>
							</c:choose></td>

					</tr>
					<tr>
						<td width="40%">Năm tốt nghiệp</td>
						<td width="60%">${hoSoSV.namTotNghiep }</td>
					</tr>
					<tr>
						<td width="40%">Nơi cấp bằng tốt nghiệp</td>
						<td width="60%">${hoSoSV.noiCap }</td>
					</tr>
					<tr>
						<td width="40%">Chuyên ngành Đào tạo</td>
						<td width="60%">${hoSoSV.chuyenNganh }</td>
					</tr>
					<tr>
						<td width="40%">Ngoại ngữ</td>
						<td width="60%">${hoSoSV.ngoaiNgu }</td>
					</tr>
					<tr>
						<td width="40%">Địa chỉ liên lạc</td>
						<td width="60%">${hoSoSV.diaChi }</td>
					</tr>
					<tr>
						<td width="40%">Email</td>
						<td width="60%">${hoSoSV.email }</td>
					</tr>
					<tr>
						<td width="40%">Số điện thoại liên hệ</td>
						<td width="60%">${hoSoSV.sdt }</td>
					</tr>

					<tr>
						<td width="40%">Ngày lập hồ sơ</td>
						<td width="60%"><fmt:formatDate value="${hoSoSV.ngayLap }"
								pattern="dd/MM/yyyy"></fmt:formatDate></td>
					</tr>
					<tr>
						<td width="40%">Trạng thái</td>
						<td><c:set var="trang_thai" value="${hoSoSV.trangThaiHoSo }" />
							<c:choose>
								<c:when test="${trang_thai == '1' }">
									<span style="color: green;">Đã tạo sinh viên</span>
								</c:when>
								<c:otherwise>
									<span style="color: red;">Chưa tạo sinh viên</span>
								</c:otherwise>
							</c:choose></td>
					</tr>
				</table>

			</td>
			<td width="10%"></td>
		</tr>
		<tr height="10px"></tr>
		<tr align="center">
			<td colspan="3"><a class="btn btn-primary"
				href="${pageContext.request.contextPath}/nghiep-vu/quan-ly-ho-so-du-tuyen">
					Quay lại</a></td>
			<td width="60%"></td>
		</tr>
		<tr height="10px"></tr>
		<jsp:include page="/WEB-INF/basefragments/footer.jsp" />
	</table>

</body>
</html>