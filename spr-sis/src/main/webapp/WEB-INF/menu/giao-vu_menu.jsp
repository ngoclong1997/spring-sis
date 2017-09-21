<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/_include.jsp"%>
<ul class="main-navigation">
	<li><a href="${pageContext.request.contextPath }/home"><spring:message
				code="label.menu.HomePage"></spring:message></a></li>
	<li><a href="#"><spring:message code="label.menu.major"></spring:message></a>
		<ul>
			<li><a
				href="${pageContext.request.contextPath }/nghiep-vu/quan-ly-nganh-hoc"><spring:message
						code="label.menu.major.QLyNganhHoc"></spring:message></a></li>
			<li><a
				href="${pageContext.request.contextPath }/nghiep-vu/quan-ly-khoa-hoc"><spring:message
						code="label.menu.major.QLyKhoaHoc"></spring:message></a>
			<li><a
				href="${pageContext.request.contextPath }/nghiep-vu/quan-ly-lop-hoc"><spring:message
						code="label.menu.major.QLyLopHoc"></spring:message></a>
			<li><a
				href="${pageContext.request.contextPath }/nghiep-vu/quan-ly-sinh-vien"><spring:message
						code="label.menu.PersonalInformation"></spring:message></a>
		</ul></li>
	<li><a href="${pageContext.request.contextPath }/user-info"><spring:message
				code="label.menu.PersonalInformation"></spring:message></a></li>
	<li><a href="${pageContext.request.contextPath }/about-us"><spring:message
				code="label.menu.AboutUs"></spring:message></a></li>
	<li><a href="${pageContext.request.contextPath }/log-out"><spring:message
				code="label.menu.LogOut"></spring:message></a></li>
</ul>
