<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/_include.jsp" %>
<ul class="main-navigation">
  <li><a href="${pageContext.request.contextPath }/home">Trang chủ</a></li>
  <li><a href="#">Nghiệp vụ</a>
    <ul>
      <li><a href="${pageContext.request.contextPath }/nghiep-vu/quan-ly-nganh-hoc">Quản lý ngành học</a></li>
      <li><a href="${pageContext.request.contextPath }/nghiep-vu/quan-ly-khoa-hoc">Quản lý khóa học</a>
      <li><a href="${pageContext.request.contextPath }/nghiep-vu/quan-ly-lop-hoc">Quản lý lớp học</a>
    </ul>
  </li>
  <li><a href="${pageContext.request.contextPath }/user-info">Thông tin cá nhân</a></li>
  <li><a href="${pageContext.request.contextPath }/about-us">About Us</a></li>
  <li><a href="${pageContext.request.contextPath }/log-out">Log out</a></li>
</ul>
