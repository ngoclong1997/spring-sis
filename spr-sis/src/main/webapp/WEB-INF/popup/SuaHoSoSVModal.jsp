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
			<form>
				<div class="form-group">
					<label for="nganh">Ngành</label> <select name="listString"
						class="form-control">
						<option value="NONE"> ---Select--- </option>
						<c:forEach items="${dsNganhHoc}" var="item" varStatus="count">

							<option value="${count.index}" name="${item.kyHieu }">${item.tenNganh}</option>
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
							name="male">Male
						</label> <label class="radio-inline"> <input type="radio"
							name="female">Female
						</label>
					</div>
				</div>
				<div>
					<label for="ngaySinh">Ngày sinh</label>
					<div>
						<input type="text" class="form-control" id="ngaySinh"
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
					<label for="hoKhauThuongTru">Hộ khẩu thường trú</label>
					<div>
						<input type="text" class="form-control" id="hoKhauThuongTru"
							name="hoKhauThuongTru">
					</div>
				</div>
				<div>
					<label for="hoKhauThuongTru">Đã tốt nghiệp</label>
					<div>
						<label class="radio-inline"> <input type="radio"
							name="thpt">THPT
						</label> <label class="radio-inline"> <input type="radio"
							name="thbt">THBT
						</label> <label class="radio-inline"> <input type="radio"
							name="tcnghe">TC nghề
						</label> <label class="radio-inline"> <input type="radio"
							name="tc">TC
						</label> <label class="radio-inline"> <input type="radio"
							name="cd">CĐ
						</label> <label class="radio-inline"> <input type="radio"
							name="dh">ĐH
						</label>
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
						<label class="radio-inline"> <input type="radio" name="ta">Tiếng
							Anh
						</label> <label class="radio-inline"> <input type="radio"
							name="tn">Tiếng Nga
						</label> <label class="radio-inline"> <input type="radio"
							name="tt">Tiếng Trung
						</label> <label class="radio-inline"> <input type="radio"
							name="tp">Tiếng Pháp
						</label>
					</div>
				</div>
				<div>
					<label for="email">Email</label>
					<div>
						<input type="email" class="form-control" id="email" name="email">
					</div>
				</div>
				<div>
					<label for="sdt">Số điện thoại</label>
					<div>
						<input type="text" class="form-control" id="sdt" name="sdt">
					</div>
				</div>

				<div class="modal-footer">
					<button type="button" id='update' class="btn btn-primary">Update</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

				</div>
			</form>

		</div>
	</div>
</div>