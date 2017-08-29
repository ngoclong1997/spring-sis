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
			<h2> Bạn chắc chắn muốn xóa mục vừa chọn? </2>
		</div>

		<div class="modal-footer">
			<input type="button" id='insert' class="btn btn-danger"
				value="Delete" onclick="window.open('home')"></input>
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

		</div>
	</div>
</div>