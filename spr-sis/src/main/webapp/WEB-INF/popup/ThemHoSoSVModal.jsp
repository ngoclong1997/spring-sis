<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/_include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="modal-dialog">

	<!-- Modal content-->
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h4 class="modal-title">Thêm hồ sơ</h4>
		</div>
		<div class="modal-body">
			<div class="form-group">
				<label for="nganh" path="nganhHocId">Ngành</label> <select name="listString" path="nganhHocId"
					class="form-control">
					<option value="NONE"> ---Select--- </option>
					<c:forEach items="${dsNganhHoc}" var="item" varStatus="count">
						<option value="${item.id }" name="${item.kyHieu }">${item.tenNganh}</option>
					</c:forEach>
				</select>
			</div>
			<div class="form-group">
				<label for="hoTen" path="hoTen">Họ tên</label>
				<div>
					<input type="text" class="form-control" id="hoTen" name="hoTen" path="hoTen">
				</div>
			</div>
			<div class="form-group">
				<label for="gioiTinh" path="gioiTinh">Giới tính</label>
				<div>
					<label class="radio-inline"> <input type="radio"
						name="male" value="1" path="gioiTinh">Male </label> <label class="radio-inline"> <input
						type="radio" name="female" value="0" path="gioiTinh">Female </label>
				</div>
			</div>
			<div>
				<label for="ngaySinh" path="ngaySinh">Ngày sinh</label>
				<div>
					<input type="text" class="form-control" id="ngaySinh"
						name="ngaySinh" path="ngaySinh">
				</div>
			</div>
			<div>
				<label for="noiSinh" path="noiSinh">Nơi sinh</label>
				<div>
					<input type="text" class="form-control" id="noiSinh" name="noiSinh" path="noiSinh">
				</div>
			</div>
			<div>
				<label for="cmnd" path="cmnd">Số CMND</label>
				<div>
					<input type="text" class="form-control" id="cmnd" name="cmnd" path="cmnd">
				</div>
			</div>
			<div>
				<label for="danToc" path="danToc">Dân tộc</label>
				<div>
					<input type="text" class="form-control" id="danToc" name="danToc" path="danToc">
				</div>
			</div>
			<div>
				<label for="tonGiao" path="tonGiao">Tôn giáo</label>
				<div>
					<input type="text" class="form-control" id="tonGiao" name="tonGiao" path="tonGiao">
				</div>
			</div>
			<div>
				<label for="hoKhauThuongTru" path="hoKhauThuongTru">Hộ khẩu thường trú</label>
				<div>
					<input type="text" class="form-control" id="hoKhauThuongTru" path= "hoKhauThuongTru"
						name="hoKhauThuongTru">
				</div>
			</div>
			<div>
				<label for="trinhDo" path="trinhDo">Đã tốt nghiệp</label>
				<div>
					<label class="radio-inline"> <input type="radio"
						name="thpt" path="trinhDo">THPT </label> <label class="radio-inline"> <input path="trinhDo"
						type="radio" name="thbt">THBT </label> <label class="radio-inline">
						<input path="trinhDo" type="radio" name="tcnghe">TC nghề 
					</label> <label class="radio-inline"> <input  path="trinhDo" type="radio" name="tc">TC
					</label> <label class="radio-inline"> <input path="trinhDo" type="radio" name="cd">CĐ
					</label> <label class="radio-inline"> <input path="trinhDo" type="radio" name="dh">ĐH
					</label>
				</div>
			</div>
			<div>
				<label path="namTotNghiep" for="namTotNghiep">Năm tốt nghiệp</label>
				<div>
					<input type="text" class="form-control" id="namTotNghiep"
						name="namTotNghiep" path="namTotNghiep">
				</div>
			</div>
			<div>
				<label for="noiCap" path="noiCap">Nơi cấp</label>
				<div>
					<input type="text" path="noiCap" class="form-control" id="noiCap" name="noiCap">
				</div>
			</div>
			<div>
				<label for="chuyenNganh" path="chuyenNganh">Chuyên ngành (TC trở lên)</label>
				<div>
					<input type="text" class="form-control" id="chuyenNganh"
						name="chuyenNganh" path="chuyenNganh">
				</div>
			</div>
			<div>
				<label for="ngoaiNgu" path="ngoaiNgu">Ngoại ngữ</label>
				<div>
					<label class="radio-inline"> <input path="ngoaiNgu" type="radio" name="ta">Tiếng
							Anh </label> <label class="radio-inline"> <input path="ngoaiNgu" type="radio"
						name="tn">Tiếng Nga </label> <label  class="radio-inline">
						<input path="ngoaiNgu" type="radio" name="tt">Tiếng Trung 
					</label> <label class="radio-inline"> <input path="ngoaiNgu" type="radio" name="tp">Tiếng
							Pháp </label>
				</div>
			</div>
			<div>
				<label for="email" path="email">Email</label>
				<div>
					<input type="email" path= "email" class="form-control" id="email" name="email">
				</div>
			</div>
			<div>
				<label for="sdt" path="sdt">Số điện thoại</label>
				<div>
					<input path="sdt" type="text" class="form-control" id="sdt" name="sdt">
				</div>
			</div>

			<div class="modal-footer">
				<input type="submit" id='insert' class="btn btn-primary" value="Insert"></input>
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

			</div>

		</div>
	</div>
</div>