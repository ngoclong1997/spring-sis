<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/_include.jsp"%>
<style>
#labelMenu {
	color: white;
}
</style>
<ul class="main-navigation" id = "menu">
	<li><a href="${pageContext.request.contextPath }/home"
		id="labelMenu"><spring:message code="label.menu.HomePage"></spring:message></a></li>
	<li><a href="#"><spring:message code="label.menu.major"></spring:message></a>
		<ul class="dropdown-menu" aria-labelledby="dropdownMenu1"
			style="background: #1bc2a2; margin: 0px;">
			<li><a
				href="${pageContext.request.contextPath }/nghiep-vu/quan-ly-ho-so-du-tuyen"
				id="labelMenu"><spring:message
						code="label.menu.major.QLyHSSV"></spring:message></a></li>
		</ul></li>
	<li><a href="${pageContext.request.contextPath }/user-info"
		id="labelMenu"><spring:message
				code="label.menu.PersonalInformation"></spring:message></a></li>
	<li><a href="${pageContext.request.contextPath }/about-us"
		id="labelMenu"><spring:message code="label.menu.AboutUs"></spring:message></a></li>
	<li><a href="${pageContext.request.contextPath }/log-out"
		id="labelMenu"><spring:message code="label.menu.LogOut"></spring:message></a></li>
</ul>