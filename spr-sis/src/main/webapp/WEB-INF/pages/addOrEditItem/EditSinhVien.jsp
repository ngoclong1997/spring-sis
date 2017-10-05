<?xml version="1.0" encoding="UTF-8" ?>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/_include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><jsp:include
	page="/WEB-INF/resources/resource.jsp" /><title>Trang chủ</title>
</head>
<body>
	<!-- 	<table width="90%" align="center"> -->
	<%-- 		<jsp:include page="/WEB-INF/basefragments/header.jsp" /> --%>
	<!-- 		<tr style="background: aliceblue; height: 20px; margin: 5px;"> -->
	<!-- 			<td colspan="3" style="background: #1bc2a2; border-radius: 5px;"> -->
	<!-- 				<div class="menu"> -->
	<%-- 					<jsp:include page="/WEB-INF/basefragments/menu.jsp" /> --%>
	<!-- 				</div> -->
	<!-- 			</td> -->
	<!-- 		</tr> -->
	<!-- 		<tr id="space"></tr> -->
	<!-- 		<tr align="left"> -->
	<!-- 			<td width="10%"></td> -->
	<!-- 			<td width="80%"> -->
	<!-- 				<h2>Chỉnh Sửa</h2> -->
	<!-- 			</td> -->
	<!-- 			<td width="10%"></td> -->
	<!-- 		</tr> -->
	<!-- 		<tr> -->
	<%-- 			<f:form method="POST" modelAttribute="sinhVien" --%>
	<%-- 				action="${pageContext.request.contextPath}/nghiep-vu/quan-ly-sinh-vien/save"> --%>
	<%-- 				<f:input type="hidden" path="id" name="id" value="${sinhVien.id}" /> --%>
	<%-- 				<f:input type="hidden" path="isDeleted" name="isDeleted" --%>
	<%-- 					value="${sinhVien.isDeleted}" /> --%>
	<%-- 				<f:input type="hidden" path="cbtsUsername" name="cbtsUsername" --%>
	<%-- 					value="${sinhVien.cbtsUsername}" /> --%>
	<%-- 				<f:input type="hidden" path="lopId" name="lopId" --%>
	<%-- 					value="${sinhVien.lopId}" /> --%>
	<%-- 				<f:input type="hidden" path="nganhHocId" name="nganhHocId" --%>
	<%-- 					value="${sinhVien.nganhHocId}" /> --%>
	<%-- 				<f:input type="hidden" path="username" name="username" --%>
	<%-- 					value="${sinhVien.username}" /> --%>

	<!-- 				<div class="form-group" style="padding-top: 20px;"> -->
	<!-- 					<label class="col-xs-3">Mã Quản Lý</label> -->
	<!-- 					<div class="col-xs-9 col-sm-9"> -->
	<%-- 						<f:input path="maQuanLy" name="maQuanLy" class="col-sm-5" --%>
	<%-- 							value="${sinhVien.maQuanLy}" /> --%>
	<%-- 						<f:errors path="maQuanLy" class="has-error col-sm-4" --%>
	<%-- 							style="color: red;" /> --%>
	<!-- 					</div> -->
	<!-- 				</div> -->


	<!-- 				<div class="form-group" style="padding-top: 20px;"> -->
	<!-- 					<label class="col-xs-3">Trạng Thái</label> -->
	<!-- 					<div class="col-xs-9 col-sm-9"> -->
	<%-- 						<f:select class="form-control select2" path="trangThaiId" --%>
	<%-- 							name="trangThaiId"> --%>
	<%-- 							<c:forEach items="${listTrangThai}" var="temp"> --%>
	<%-- 								<f:option value="${temp.id}">${temp.trangThai}</f:option> --%>
	<%-- 							</c:forEach> --%>
	<%-- 						</f:select> --%>
	<%-- 						<f:errors path="trangThaiId" class="has-error" style="color: red;" /> --%>
	<!-- 					</div> -->
	<!-- 				</div> -->

	<!-- 				<div class="form-group" style="padding-top: 20px;"> -->
	<!-- 					<div align="right"> -->
	<!-- 						<button type="submit" class="btn btn-success">Submit</button> -->
	<!-- 						<button type="reset" class="btn btn-danger">Reset</button> -->
	<!-- 					</div> -->
	<!-- 				</div> -->

	<%-- 			</f:form> --%>
	<!-- 		</tr> -->
	<!-- 		<tr id="space"></tr> -->

	<%-- 		<jsp:include page="/WEB-INF/basefragments/footer.jsp" /> --%>
	<!-- 	</table> -->

	<!-- --------------------------------------------------------------------------------------------- -->
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
			<td width="80%">
				<h2>
					Chỉnh Sửa
					<h2>
			</td>
			<td width="10%"></td>
		</tr>
		<tr>
		</tr>
		<tr>
			<td width="10%"></td>
			<td><f:form method="POST" commandName="sinhVien"
					action="${pageContext.request.contextPath}/nghiep-vu/quan-ly-sinh-vien/save">
					<f:input type="hidden" path="id" name="id" value="${sinhVien.id}" />
					<f:input type="hidden" path="isDeleted" name="isDeleted"
						value="${sinhVien.isDeleted}" />
					<f:input type="hidden" path="cbtsUsername" name="cbtsUsername"
						value="${sinhVien.cbtsUsername}" />
					<f:input type="hidden" path="lopId" name="lopId"
						value="${sinhVien.lopId}" />
					<f:input type="hidden" path="nganhHocId" name="nganhHocId"
						value="${sinhVien.nganhHocId}" />
					<f:input type="hidden" path="username" name="username"
						value="${sinhVien.username}" />

					<div class="form-group" style="padding-top: 20px;">
						<label class="col-xs-3">Mã Quản Lý</label>
						<div class="col-xs-9 col-sm-9">
							<f:input path="maQuanLy" name="maQuanLy" class="col-sm-5"
								value="${sinhVien.maQuanLy}" />
							<f:errors path="maQuanLy" class="has-error col-sm-4"
								style="color: red;" />
						</div>
					</div>


					<div class="form-group" style="padding-top: 20px;">
						<label class="col-xs-3">Trạng Thái</label>
						<div class="col-xs-9 col-sm-9">
							<div class="col-xs-5 col-sm-5" style="padding: 0px;">
								<f:select class="form-control select2" path="trangThaiId"
									name="trangThaiId">
									<c:forEach items="${listTrangThai}" var="temp">
										<f:option value="${temp.id}">${temp.trangThai}</f:option>
									</c:forEach>
								</f:select>
							</div>
							<f:errors path="trangThaiId" class="has-error"
								style="color: red;" />
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