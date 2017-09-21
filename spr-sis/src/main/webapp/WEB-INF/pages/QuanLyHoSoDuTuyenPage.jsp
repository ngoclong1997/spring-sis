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
	<table width="90%" align="center">
		<jsp:include page="/WEB-INF/basefragments/header.jsp" />
		
		<tr style="background: aliceblue; height: 20px; padding: 5px;">
			<td colspan="3">
				<div class="menu" style="padding: 5px;">
					<jsp:include page="/WEB-INF/basefragments/menu.jsp" />
				</div>
			</td>
		</tr>
<<<<<<< HEAD
		<tr id = "space"></tr>
		<tr id="space"></tr>

=======
		
		<tr id="space"></tr>
>>>>>>> longnn
		<tr align="left">
			<td width="0%"></td>
			<td width="100%" align="left">
				<div align="right">
					<button type="button" class="btn btn-default" data-toggle="modal"
						data-target="#themHSSV">Thêm hồ sơ dự tuyển</button>
				</div>
<<<<<<< HEAD
				<div id="space"></div> <!-- Modal thêm hồ sơ sinh viên -->
				<div id="themHSSV" class="modal fade" role="dialog">
					<jsp:include page="/WEB-INF/popup/ThemHoSoSVModal.jsp" />
				</div> <!-- Bảng hiện danh sách hồ sơ -->
=======
				<div id="space"></div>
				
				<!-- Modal thêm hồ sơ sinh viên -->
				<div id="themHSSV" class="modal fade" role="dialog">
					<jsp:include page="/WEB-INF/popup/ThemHoSoSVModal.jsp" />
				</div>
				
				<!-- Bảng hiện danh sách hồ sơ -->
>>>>>>> longnn
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
							<th>Chức năng</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${dsHoSoSV }" var="hssv" varStatus="status">
							<tr>
								<td>${status.count }</td>
								<td><c:set var="trang_thai" value="${hssv.trangThaiHoSo }" /> <c:choose>
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
										pattern="dd/MM/yyyy"></fmt:formatDate></td>
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

								<td><span data-placement="top" data-toggle="modal"
									title="Sửa hồ sơ">
										<button id="func_btn" class="btn btn-primary"
											data-title="Edit" data-toggle="modal"
											data-target="#suaHSSV_${hssv.id }">
											<span class="glyphicon glyphicon-pencil"></span>
										</button>
								</span> <span data-placement="top" data-toggle="modal"
									title="Xóa hồ sơ">
										<button id="func_btn" class="btn btn-danger"
											data-id="${hssv.id }" data-title="Delete" data-toggle="modal"
											href="#xoaHSSV_${hssv.id }">
											<span class="glyphicon glyphicon-trash"></span>
										</button>
								</span> <span data-placement="top" data-toggle="modal"
									title="Xem chi tiết"> <a id="func_btn"
										class="btn btn-info" data-title="Detail" data-toggle="modal"
										href="${pageContext.request.contextPath}/nghiep-vu/quan-ly-ho-so-du-tuyen/detail/${hssv.id }">
											<span class="glyphicon glyphicon-eye-open"></span>
									</a>
								</span> <span data-placement="top" data-toggle="tooltip"
									title="Tạo sinh viên">
										<button id="func_btn" class="btn btn-success"
											data-title="createStudent" data-toggle="modal"
											data-target="#taoSV_${hssv.id }">
											<span class="glyphicon glyphicon-share-alt"></span>
										</button>
								</span></td>
							</tr>
<<<<<<< HEAD

=======
							
>>>>>>> longnn
							<!-- Modal sửa hồ sơ sinh viên -->
							<div id="suaHSSV_${hssv.id }" class="modal fade" role="dialog">
								<div class="modal-dialog modal-lg">
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Sửa hồ sơ</h4>
										</div>
										<form method="POST"
											action="${pageContext.request.contextPath}/nghiep-vu/quan-ly-ho-so-du-tuyen/update/${hssv.id}"
											modelAttribute="hoSoSVUpdated">
											<div class="modal-body">
												<div class="form-group">
													<label for="nganhHocId">Ngành</label> <select
														name="nganhHocId" class="form-control">
														<option value="NONE">---Select---</option>
														<c:forEach items="${dsNganhHoc}" var="item"
															varStatus="count">
															<option value="${item.id}" label="${item.tenNganh }"></option>
														</c:forEach>
													</select>
												</div>
												<div class="form-group">
													<label for="hoTen">Họ tên</label>
													<div>
														<input type="text" class="form-control" id="hoTen"
															name="hoTen" value="${hssv.hoTen }">
													</div>
												</div>
												<div class="form-group">
													<label for="gioiTinh">Giới tính</label>
													<div>
														<label class="radio-inline"> <input type="radio"
															name="gioiTinh" value="1">Male </label> <label
															class="radio-inline"> <input type="radio"
															name="gioiTinh" value="0">Female </label>
													</div>
												</div>
												<div>
													<label for="ngaySinh">Ngày sinh</label>
													<div>
														<input type="date" class="form-control" id="ngaySinh"
															name="ngaySinh" value="${hssv.ngaySinh }">
													</div>
												</div>
												<div>
													<label for="noiSinh">Nơi sinh</label>
													<div>
														<input type="text" class="form-control" id="noiSinh"
															name="noiSinh" value="${hssv.noiSinh }">
													</div>
												</div>
												<div>
													<label for="cmnd">Số CMND</label>
													<div>
														<input type="text" class="form-control" id="cmnd"
															name="cmnd" value="${hssv.cmnd }">
													</div>
												</div>
												<div>
													<label for="danToc">Dân tộc</label>
													<div>
														<input type="text" class="form-control" id="danToc"
															name="danToc" value="${hssv.danToc }">
													</div>
												</div>

												<div>
													<label for="diaChi">Địa chỉ</label>
													<div>
														<input type="text" class="form-control"
															id="hoKhauThuongTru" name="diaChi"
															value="${hssv.diaChi }">
													</div>
												</div>
												<div>
													<label for="trinhDo">Đã tốt nghiệp</label>
													<div>
														<label class="radio-inline"> <input type="radio"
															name="trinhDo" value="1">THPT </label> <label
															class="radio-inline"> <input type="radio"
															name="trinhDo" value="2">THBT </label> <label
															class="radio-inline"> <input type="radio"
															name="trinhDo" value="3">TC nghề </label> <label
															class="radio-inline"> <input type="radio"
															name="trinhDo" value="4">TC </label> <label
															class="radio-inline"> <input type="radio"
															name="trinhDo" value="5">CĐ </label> <label
															class="radio-inline"> <input type="radio"
															name="trinhDo" value="6">ĐH </label>
													</div>
												</div>
												<div>
													<label for="namTotNghiep">Năm tốt nghiệp</label>
													<div>
														<input type="text" class="form-control" id="namTotNghiep"
															name="namTotNghiep" value="${hssv.namTotNghiep }">
													</div>
												</div>
												<div>
													<label for="noiCap">Nơi cấp</label>
													<div>
														<input type="text" class="form-control" id="noiCap"
															name="noiCap" value="${hssv.noiCap }">
													</div>
												</div>
												<div>
													<label for="chuyenNganh">Chuyên ngành (TC trở lên)</label>
													<div>
														<input type="text" class="form-control" id="chuyenNganh"
															name="chuyenNganh" value="${hssv.chuyenNganh }">
													</div>
												</div>
												<div>
													<label for="ngoaiNgu">Ngoại ngữ</label>
													<div>
														<label class="radio-inline"> <input type="radio"
															name="ngoaiNgu" value="Tiếng Anh">Tiếng Anh </label> <label
															class="radio-inline"> <input type="radio"
															name="ngoaiNgu" value="Tiếng Nga">Tiếng Nga </label> <label
															class="radio-inline"> <input type="radio"
															name="ngoaiNgu" value="Tiếng Trung">Tiếng Trung </label>
														<label class="radio-inline"> <input
															path="ngoaiNgu" type="radio" name="ngoaiNgu"
															value="Tiếng Pháp">Tiếng Pháp </label>
													</div>
												</div>
												<div>
													<label for="email">Email</label>
													<div>
														<input type="email" class="form-control" id="email"
															name="email" value="${hssv.email }">
													</div>
												</div>
												<div>
													<label for="sdt">Số điện thoại</label>
													<div>
														<input type="text" class="form-control" id="sdt"
															name="sdt" value="${hssv.sdt }">
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<input type="submit" id='update' class="btn btn-primary"
													value="Update"></input>
												<button type="button" class="btn btn-default"
													data-dismiss="modal">Close</button>
											</div>
										</form>
									</div>
								</div>
							</div>
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
												href="${pageContext.request.contextPath }/nghiep-vu/quan-ly-ho-so-du-tuyen/create-student/${hssv.id} ">Xác nhận</a>
											<button type="button" class="btn btn-default"
												data-dismiss="modal">Hủy bỏ</button>
										</div>
									</div>
								</div>
							</div>
<<<<<<< HEAD

=======
							
>>>>>>> longnn
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
		<jsp:include page="/WEB-INF/basefragments/footer.jsp" />
	</table>
</body>
</html>