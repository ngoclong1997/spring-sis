<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/_include.jsp"%>
<sec:authentication var="user" property="principal" />
<sec:authorize access="hasRole('ROLE_SINH_VIEN') and isAuthenticated()">
	<jsp:include page="/WEB-INF/menu/sinh-vien_menu.jsp" />
</sec:authorize>
<sec:authorize access="hasRole('ROLE_GIAO_VU') and isAuthenticated()">
	<jsp:include page="/WEB-INF/menu/giao-vu_menu.jsp" />
</sec:authorize>
<sec:authorize
	access="hasRole('ROLE_CAN_BO_TUYEN_SINH') and isAuthenticated()">
	<jsp:include page="/WEB-INF/menu/can-bo-tuyen-sinh_menu.jsp" />
</sec:authorize>