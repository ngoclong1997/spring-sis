<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/_include.jsp" %>
<ul class="main-navigation">
  <li><a href="${pageContext.request.contextPath }/home">Trang chủ</a></li>
  <li><a href="#">Nghiệp vụ</a>
    <ul>
      <li><a href="${pageContext.request.contextPath }/nghiep-vu/quan-ly-ho-so-du-tuyen">Quản lý hồ sơ dự tuyển</a></li>
    </ul>
  </li>
  <li><a href="${pageContext.request.contextPath }/user-info">Thông tin cá nhân</a></li>
  <li><a href="${pageContext.request.contextPath }/about-us">About Us</a></li>
  <li><a href="${pageContext.request.contextPath }/log-out">Log out</a></li>
</ul>