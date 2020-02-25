<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<div class="sidebar" data-color="purple"
	data-image="assets/img/sidebar-5.jpg">
	<div class="sidebar-wrapper">
		<div class="logo">
		</div>

		<ul class="nav">
			<li><a href="home"> <i class="pe-7s-graph"></i>
					<p>
						Trang chủ
					</p>
			</a></li>
			<li><a href="account"> <i class="pe-7s-user"></i>
					<p>
						Tài khoản
					</p>
			</a></li>
			<li><a href="/admin/product"> <i class="pe-7s-note2"></i>
					<p>
						Sản phẩm
					</p>
			</a></li>
			<li><a href="/admin/category/listCategory"> <i class="pe-7s-news-paper"></i>
					<p>
						Loại sản phẩm
					</p>
			</a></li>
			<li class="active-pro"><a href="#"> <i class="pe-7s-rocket"></i>
			</a></li>
		</ul>
	</div>
</div>
