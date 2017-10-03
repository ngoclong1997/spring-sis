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
	<li><a href="${pageContext.request.contextPath }/user-info"
		id="labelMenu"><spring:message
				code="label.menu.PersonalInformation"></spring:message></a></li>
	<li><a href="${pageContext.request.contextPath }/about-us"
		id="labelMenu"><spring:message code="label.menu.AboutUs"></spring:message></a></li>
	<li><a href="${pageContext.request.contextPath }/log-out"
		id="labelMenu"><spring:message code="label.menu.LogOut"></spring:message></a></li>
</ul>