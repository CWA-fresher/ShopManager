<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<base href="${pageContext.servletContext.contextPath}/">
<script src="../../../assets/js/jquery-3.1.1.min.js"></script>

<nav class="navbar navbar-default navbar-fixed">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand">BabyShop</a>
		</div>
		<div class="collapse navbar-collapse">

			<ul class="nav navbar-nav navbar-right">
				<li><c:if test="${sessionScope.account.fullName == null}">
						<a href="login"> <span>Đăng nhập</span>
						</a>
					</c:if></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown"> <span> Xin chào: <span style="color: red;">${sessionScope.account.fullName}</span>
					</span>
				</a></li>
				<c:if test="${sessionScope.account.fullName != null}">
					<li><a
						href="${pageContext.request.contextPath }/admin/login/logout.htm"
						onclick="return confirm('Bạn chắc chắn chứ ?')"> <span>Đăng xuất</span></a></li>
				</c:if>
				<li class="separator hidden-lg hidden-md"></li>
			</ul>
		</div>
	</div>
</nav>
<script>
	$(function() {
		$("a[data-lang]").click(function() {
			var lang = $(this).attr("data-lang");
			$.get("home?lang=" + lang, function() {
				location.reload();
			});
			return false;
		});
	});

	
</script>