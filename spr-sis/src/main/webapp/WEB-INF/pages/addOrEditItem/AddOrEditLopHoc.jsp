<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/_include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/common.js"></script>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/styles/menu-dropdown.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/styles/common.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/styles/table.css">
<script 
    src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" 
    th:src="@{/webjars/jquery/3.2.1/jquery.min.js}"></script>
<title>Trang chủ</title>

	
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
		<tr id="space"></tr>
		<tr align="left">
			<td width="10%"></td>
			<td width="80%"><c:if test="${lopHoc.id != null}">
					<h2>
						Chỉnh Sửa
						</h2>
				</c:if> <c:if test="${lopHoc.id == null}">
					<h2>
						Thêm Mới
						</h2>
				</c:if></td>
			<td width="10%"></td>
		</tr>
		<tr>
			<form method="POST" modelAttribute="lopHoc"
				action="${pageContext.request.contextPath}/nghiep-vu/quan-ly-lop-hoc/save">
				<input type="hidden" name="id" value="${lopHoc.id}">
				<input type="hidden" name="isDeleted" value="${lopHoc.isDeleted}">
				<table style="width: 50%; border: 1px solid; margin: 0 auto;">
					<tr>
						<td>Ngành Học</td>
						<td>
						<select name="nganhHocId" id = "nganhHocId" onchange = "getKhoaHoc()">
							<c:forEach items="${listNganh}" var = "temp">
								<option value="${temp.id}">${temp.tenNganh}</option>
							</c:forEach>
						</select>
						</td>
					</tr>
					<tr>
						<td>Khóa Học</td>
						<td>
						     <select id="khoaHocId" path="khoaHocId" name = khoaHocId>
							</select>
							<script type="text/javascript">
								function getKhoaHoc(){
									var idNganh = $("#nganhHocId").val(); 
						// 			alert(idNganh);
									$.ajax({
										type:'GET',
										data : {nganhHocId: idNganh},
										url: '${pageContext.request.contextPath}/nghiep-vu/quan-ly-lop-hoc/khoa-hoc',
										success: function(res){
											var htm = "";
											alert(idNganh);		
											for(var i = 0; i < res.length; ++i){
											htm += "<option value = \"" + res[i].id + "\">" + res[i].tenKhoaHoc + "</option>\"";
											}
																	
											$('#khoaHocId').html(htm);
										},
										error: function(){
											alert("???");
										}
									})
								}
							</script>
						</td>
					</tr>
					<tr>
						<td>Đối Tượng Sinh Viên</td>
						<td>
						<select name="code" id = "code">
								<option value="1">THPT</option>
								<option value="2">TC</option>
								<option value="3">CĐ</option>
								<option value="4">ĐH</option>
						</select>
						</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td><input type="submit" value="Submit" /> <input
							type="reset" value="Reset" /></td>
					
					</tr>
				</table>

			</form>
		</tr>
		<tr id="space"></tr>

		<jsp:include page="/WEB-INF/basefragments/footer.jsp" />
	</table>

</body>
</html>