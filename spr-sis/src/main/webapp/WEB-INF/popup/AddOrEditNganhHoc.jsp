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
			<form method="POST" modelAttribute="nganhHoc"
				action="${pageContext.request.contextPath}/nghiep-vu/quan-ly-nganh-hoc/save">
				<input type="hidden" name="id" value="${nganhHoc.id}">
				<input type="hidden" name="isDeleted" value="${nganhHoc.isDeleted}">
				<div class="form-group">
					<label for="tenNganh">Tên ngành</label>
					<div>
						<input path="tenNganh" name="tenNganh"
							value="${nganhHoc.tenNganh}" />
						<errors path="tenNganh" class="error-message" />
					</div>
				</div>

				<div class="form-group">
					<label for="kyHieu">Ký hiệu</label>
					<div>
						<input path="kyHieu" name="kyHieu" value="${nganhHoc.kyHieu}" />
						<errors path="kyHieu" class="error-message" />
					</div>
				</div>
				
				<div class="modal-footer">
					<input type="submit" value="Submit" class="btn btn-primary" />
					<input type="reset"	value="Reset"  class="btn btn-danger"/>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>

			</form>
		</div>
	</div>
</div>