<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/_include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><jsp:include
	page="/WEB-INF/resources/resource.jsp" />
<title>Thêm Ngành Học</title>
</head>
<body>
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
			<td width="10%"></td>
			<td width="80%"><c:if test="${khoaHoc.id != null}">
					<h2>
						Chỉnh Sửa
						<h2>
				</c:if> <c:if test="${khoaHoc.id == null}">
					<h2>
						Thêm Mới
						<h2>
				</c:if></td>
			<td width="10%"></td>
		</tr>
		<tr>
			<td width="10%"></td>
			<td><f:form method="POST" commandName="lopHoc"
					action="${pageContext.request.contextPath}/nghiep-vu/quan-ly-lop-hoc/save">
					<f:input type="hidden" value="${lopHoc.id}" path="id" name="id" />
					<f:input type="hidden" value="${lopHoc.isDeleted}" path="isDeleted"
						naem="isDeleted" />

					<div class="form-group" style="padding-top: 20px;">
						<label class="col-xs-3">Ngành Học</label>
						<div class="col-xs-9 col-sm-9">
							<div class="col-xs-5 col-sm-5" style="padding: 0px;">
								<f:select class="form-control select2" name="nganhHocId"
									path="nganhHocId" onchange="getKhoaHoc()">
									<option value="-1">---	Select	---</option>
									<c:forEach items="${listNganh}" var="temp">
										<f:option value="${temp.id}">${temp.tenNganh}</f:option>
									</c:forEach>
								</f:select>
							</div>
							<f:errors path="nganhHocId" class="has-error" style="color: red;" />
							<script type="text/javascript">
								$(function() {
									$('.select2').select2()
								})
								function getKhoaHoc() {
									var idNganh = $("#nganhHocId").val();
									$
											.ajax({
												type : 'GET',
												data : {
													nganhHocId : idNganh
												},
												url : '${pageContext.request.contextPath}/nghiep-vu/quan-ly-lop-hoc/khoa-hoc',
												success : function(res) {
													var htm = "";
													for (var i = 0; i < res.length; ++i) {
														htm += "<option value = \""
																+ res[i].id
																+ "\"";
														if ($(
																"lopHoc.khoaHocId")
																.val() == res[i].id)
															htm += "selected";
														htm += " >"
																+ res[i].tenKhoaHoc
																+ "</option>";
													}

													$('#khoaHocId').html(htm);
												},
												error : function() {
													alert("???");
												}
											})
								}
							</script>
						</div>
					</div>

					<div class="form-group" style="padding-top: 20px;">
						<label class="col-xs-3">Khóa Học</label>
						<div class="col-xs-9 col-sm-9">
							<div class="col-xs-5 col-sm-5" style="padding: 0px;">
								<f:select class="form-control select2" id="khoaHocId"
									path="khoaHocId" name="khoaHocId">
									<option value="-1">---	Select	---</option>
									<c:forEach items="${listKhoaHoc}" var="temp">
										<f:option value="${temp.id}">${temp.tenKhoaHoc}</f:option>
									</c:forEach>
								</f:select>
							</div>
							<f:errors path="khoaHocId" class="has-error" style="color: red;" />
						</div>
					</div>

					<div class="form-group" style="padding-top: 20px;">
						<label class="col-xs-3">Đối Tượng Sinh Viên</label>
						<div class="col-xs-9 col-sm-9">
							<f:select name="code" id="code" path="code">
								<option value="1">THPT</option>
								<option value="2">THBT</option>
								<option value="3">TC Nghề</option>
								<option value="4">TC</option>
								<option value="5">CĐ</option>
								<option value="6">ĐH</option>
							</f:select>
							<f:errors path="code" class="has-error" style="color: red;" />
						</div>
					</div>


					</div>
					<div class="form-group" style="padding-top: 20px;">
						<div align="right">
							<button type="submit" class="btn btn-success">Submit</button>
							<button type="reset" class="btn btn-danger">Reset</button>
						</div>
					</div>
				</f:form></td>
			<td width="10%"></td>
		</tr>
		<tr id="space"></tr>

		<jsp:include page="/WEB-INF/basefragments/footer.jsp" />
	</table>

</body>
</html>