<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/_include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><jsp:include
	page="/WEB-INF/resources/resource.jsp" />
<script type="text/javascript" charset="utf-8">
	$(document).ready(function() {
		$('#table_hssv').DataTable();
	});
</script>
<TITLE>Quản lý hồ sơ dự tuyển</TITLE>
</head>

<body>


	<!-- ----------------------------------------------------------------------------------- -->
	<table width="90%" align="center">
		<jsp:include page="/WEB-INF/basefragments/header.jsp" />

		<tr style="background: aliceblue; height: 20px; margin: 5px;">
			<td colspan="3" style="background: #1bc2a2; border-radius: 5px;">
				<div class="menu">
					<jsp:include page="/WEB-INF/basefragments/menu.jsp" />
				</div>
			</td>
		</tr>
		<tr id="space"></tr>

		<tr align="left">
			<td width="0%"></td>
			<td width="100%" align="left">
				<div align="right">
					<a
						href="${pageContext.request.contextPath}/nghiep-vu/quan-ly-ho-so-du-tuyen/them-ho-so"
						class="btn btn-default">Thêm hồ sơ dự tuyển</a>
					<div id="space"></div>
				</div>
				<table id="table_hssv" class="table table-striped table-bordered">
					<thead>
						<tr>
							<th>No.</th>
							<th>Trạng thái</th>
							<th>Họ tên SV</th>
							<th>Giới tính</th>
							<th>Ngày sinh</th>
							<th>Số cmnd</th>
							<th>Địa chỉ</th>
							<th>Trình độ</th>
							<th>Ngoại ngữ</th>
							<th>Email</th>
							<th>Số điện thoại</th>
							<th>Ngành học</th>
							<th>Chức năng</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach items="${dsHoSoSV }" var="hssv" varStatus="status">
							<tr>
								<td>${status.count }</td>
								<td><c:set var="trang_thai" value="${hssv.trangThaiHoSo }" />
									<c:choose>
										<c:when test="${trang_thai == '1' }">
											<span style="color: green">Đã tạo SV</span>
										</c:when>
										<c:otherwise>
											<span style="color: red">Chưa tạo SV</span>
										</c:otherwise>
									</c:choose></td>
								<td>${hssv.hoTen }</td>
								<td><c:set var="gioi_tinh" value="${hssv.gioiTinh }" /> <c:choose>
										<c:when test="${gioi_tinh == '1' }">
											<spring:message code="label.gender_male"></spring:message>
										</c:when>
										<c:otherwise>
											<spring:message code="label.gender_female"></spring:message>
										</c:otherwise>
									</c:choose></td>
								<td><fmt:formatDate value="${hssv.ngaySinh }"
										pattern="MM/dd/yyyy"></fmt:formatDate></td>
								<td>${hssv.cmnd }</td>
								<td>${hssv.diaChi }</td>
								<td><c:set var="trinh_do" value="${hssv.trinhDo }" /> <c:choose>
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
								<td>${hssv.ngoaiNgu }</td>
								<td>${hssv.email }</td>
								<td>${hssv.sdt }</td>

								<td id="nganhHoc"><c:forEach items="${dsNganhHoc}"
										var="temp">
										<span>${not empty hssv.nganhHocId && hssv.nganhHocId == temp.id ? temp.tenNganh : ''}</span>
									</c:forEach></td>

								<td><c:choose>
										<c:when test="${trang_thai== '1' }">
											<span title="Đã tạo sinh viên"> <a href="#"
												id="func_btn" class="btn btn-primary disabled"> <span
													class="glyphicon glyphicon-pencil" title="Đã tạo sinh viên"></span></a></span>
										</c:when>
										<c:otherwise>
											<span title="Sửa hồ sơ"><a
												href="${pageContext.request.contextPath}/nghiep-vu/quan-ly-ho-so-du-tuyen/sua-ho-so/${hssv.id}"
												id="func_btn" class="btn btn-primary"> <span
													class="glyphicon glyphicon-pencil"></span>
											</a></span>
										</c:otherwise>
									</c:choose> <c:choose>

										<c:when test="${trang_thai=='1' }">
											<span title="Đã tạo sinh viên"><a id="func_btn"
												class="btn btn-danger disabled" data-id="${hssv.id }"
												data-title="Delete" data-toggle="modal" href="#"> <span
													class="glyphicon glyphicon-trash"></span>
											</a></span>
										</c:when>
										<c:otherwise>
											<span data-placement="top" data-toggle="modal"
												title="Xóa hồ sơ"><button id="func_btn"
													class="btn btn-danger" data-id="${hssv.id }"
													data-title="Delete" data-toggle="modal"
													href="#xoaHSSV_${hssv.id }">
													<span class="glyphicon glyphicon-trash"></span>
												</button></span>
										</c:otherwise>


									</c:choose> <span data-placement="top" data-toggle="modal"
									title="Xem chi tiết"> <a id="func_btn"
										class="btn btn-info" data-title="Detail" data-toggle="modal"
										href="${pageContext.request.contextPath}/nghiep-vu/quan-ly-ho-so-du-tuyen/detail/${hssv.id }">
											<span class="glyphicon glyphicon-eye-open"></span>
									</a>
								</span> <c:choose>
										<c:when test="${trang_thai == '1' }">
											<span title="Đã tạo sinh viên"><button id="func_btn"
													class="btn btn-success disabled" data-title="createStudent"
													data-toggle="modal" data-target="#">
													<span class="glyphicon glyphicon-share-alt"></span>
												</button></span>
										</c:when>
										<c:otherwise>
											<span data-placement="top" data-toggle="tooltip"
												title="Tạo sinh viên"><button id="func_btn"
													class="btn btn-success" data-title="createStudent"
													data-toggle="modal" data-target="#taoSV_${hssv.id }">
													<span class="glyphicon glyphicon-share-alt"></span>
												</button></span>
										</c:otherwise>
									</c:choose></td>
							</tr>

							<!-- Modal tạo sinh viên -->
							<div id="taoSV_${hssv.id }" class="modal fade" role="dialog">
								<div class="modal-dialog modal-lg">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Tạo hồ sơ</h4>
										</div>
										<div class="modal-body">
											<h3>Tạo sinh viên ${hssv.hoTen }?</h3>
										</div>
										<div class="modal-footer">
											<a type="submit" id='delete' class="btn btn-success"
												href="${pageContext.request.contextPath }/nghiep-vu/quan-ly-ho-so-du-tuyen/create-student/${hssv.id} ">Xác
												nhận</a>
											<button type="button" class="btn btn-default"
												data-dismiss="modal">Hủy bỏ</button>
										</div>
									</div>
								</div>
							</div>

							<!-- Modal xóa hồ sơ sinh viên -->
							<div id="xoaHSSV_${hssv.id }" class="modal fade" role="dialog">
								<div class="modal-dialog modal-lg">
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Xóa hồ sơ</h4>
										</div>
										<div class="modal-body">
											<h3>Bạn có chắc muốn xóa hồ sơ sinh viên ${hssv.hoTen }
												không?</h3>
										</div>
										<div class="modal-footer">
											<a type="submit" id='delete' class="btn btn-danger"
												href="${pageContext.request.contextPath }/nghiep-vu/quan-ly-ho-so-du-tuyen/delete/${hssv.id} ">Delete</a>
											<button type="button" class="btn btn-default"
												data-dismiss="modal">Close</button>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</tbody>
				</table>

			</td>
			<td width="0%"></td>
		</tr>
		<tr id="space"></tr>
		<tr id="space"></tr>
		<jsp:include page="/WEB-INF/basefragments/footer.jsp" />
	</table>
	<!-- ------------------------------------------------------------------------------------ -->

</body>
</html>