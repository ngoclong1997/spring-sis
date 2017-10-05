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
<TITLE>Error!</TITLE>
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
		<tr>
			<td width="20%"></td>
			<td width="60%"><c:set var="username" value="${username }" />
				<h3>
					Xin chào, ${username }
					<c:if test="${ username == 'Annonymous'}">
						- Bạn phải <a href="${pageContext.request.contextPath}/login">đăng
							nhập</a> trước
					</c:if>
				</h3></td>
			<td width="20%"></td>
		</tr>
		<tr id="space"></tr>
		<jsp:include page="/WEB-INF/basefragments/footer.jsp" />
	</table>

</body>
</html>