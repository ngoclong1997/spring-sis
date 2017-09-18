<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/_include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="modal-dialog modal-lg">

	<!-- Modal content-->
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h4 class="modal-title">Thêm hồ sơ</h4>
		</div>
		<div class="modal-body">
			<form method="POST"
				action="${pageContext.request.contextPath}/nghiep-vu/quan-ly-ho-so-du-tuyen/them-ho-so"
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
						<input type="text" class="form-control" id="hoTen" name="hoTen">
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
							name="ngaySinh">
					</div>
				</div>
				<div>
					<label for="noiSinh">Nơi sinh</label>
					<div>
						<input type="text" class="form-control" id="noiSinh"
							name="noiSinh">
					</div>
				</div>
				<div>
					<label for="cmnd">Số CMND</label>
					<div>
						<input type="text" class="form-control" id="cmnd" name="cmnd">
					</div>
				</div>
				<div>
					<label for="danToc">Dân tộc</label>
					<div>
						<input type="text" class="form-control" id="danToc" name="danToc">
					</div>
				</div>
				<div>
					<label for="tonGiao">Tôn giáo</label>
					<div>
						<input type="text" class="form-control" id="tonGiao"
							name="tonGiao">
					</div>
				</div>
				<div>
					<label for="diaChi">Địa chỉ</label>
					<div>
						<input type="text" class="form-control" id="hoKhauThuongTru"
							name="diaChi">
					</div>
				</div>
				<div>
					<label for="trinhDo">Đã tốt nghiệp</label>
					<div>
						<label class="radio-inline"> <input type="radio"
							name="trinhDo" value="1">THPT </label> <label
							class="radio-inline"> <input type="radio" name="trinhDo"
							value="2">THBT </label> <label class="radio-inline"> <input
							type="radio" name="trinhDo" value="3">TC nghề </label> <label
							class="radio-inline"> <input type="radio" name="trinhDo"
							value="4">TC </label> <label class="radio-inline"> <input
							type="radio" name="trinhDo" value="5">CĐ </label> <label
							class="radio-inline"> <input type="radio" name="trinhDo"
							value="6">ĐH </label>
					</div>
				</div>
				<div>
					<label for="namTotNghiep">Năm tốt nghiệp</label>
					<div>
						<input type="text" class="form-control" id="namTotNghiep"
							name="namTotNghiep">
					</div>
				</div>
				<div>
					<label for="noiCap">Nơi cấp</label>
					<div>
						<input type="text" class="form-control" id="noiCap" name="noiCap">
					</div>
				</div>
				<div>
					<label for="chuyenNganh">Chuyên ngành (TC trở lên)</label>
					<div>
						<input type="text" class="form-control" id="chuyenNganh"
							name="chuyenNganh">
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
							name="email">
					</div>
				</div>
				<div>
					<label for="sdt" >Số điện thoại</label>
					<div>
						<input type="text" class="form-control" id="sdt"
							name="sdt">
					</div>
				</div>

				<div class="modal-footer">
					<input type="submit" id='insert' class="btn btn-primary"
						value="Insert"></input>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</form>
		</div>
	</div>
</div>