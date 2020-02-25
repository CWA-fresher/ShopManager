<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ page import="java.util.Date"%>
<html>
<head>
<base href="${pageContext.servletContext.contextPath }/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Category</title>
</head>
<body>
	<%
		System.out.println("category/index.jsp");
	%>
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="header">
							<h4 class="title" style="font-weight: bold;">
								Danh sách loại sản phẩm
							</h4>
							<p class="category">
							</p>
						</div>

						<div style="clear: both; width: 98%; margin: 10px auto;">
							<div>
								<a href="/admin/category/addCategory" type="submit"
									class="btn btn-success btn-fill pull-right">Thêm mới loại sản phẩm</a>
							</div>
						</div>

						<div class="content table-responsive table-full-width">
							<table class="table table-hover table-striped">
								<thead>
									<tr>
										<th>ID</th>
										<th>Mã loại sản phẩm</th>
										<th>Tên</th>
										<th>Trạng thái</th>
										<th>Chức Năng</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${listCategory}" var="c">
										<tr>
											<td>${c.id}</td>
											<td>${c.code}</td>
											<td>${c.name}</td>
											<td><c:choose>
												<c:when test="${c.active == 1 }">
													<button type="button" class="btn btn-warning btn-xs">Hoạt động</button>
												</c:when>
												<c:when test="${c.active == 0}">
													<button type="button" class="btn btn-info btn-xs">Tạm dừng</button>
												</c:when>
											</c:choose></td>
											<td><a
												href="#"
												type="button" rel="tooltip" title="Sửa"
												class="btn btn-danger btn-xs">Sửa</a> <a
												href="#"
												type="button" rel="tooltip" title="Xóa"
												onclick="return confirm('Bạn chắc chắn chứ ?')"
												class="btn btn-success btn-xs">Xóa</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>

							<div style="margin: 10px; text-align: right;">
								<c:forEach begin="1" end="${rowCount}" varStatus="row">
									<a type="button" href="admin/contract/?page=${row.index}"
										class="btn btn-danger btn-xs btn-fill">${row.index}</a>
								</c:forEach>
							</div>

						</div>
					</div>

				</div>

			</div>
		</div>
	</div>
</body>

<!--   Core JS Files   -->
<script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>


<!--  Notifications Plugin    -->
<script src="assets/js/bootstrap-notify.js"></script>

<script type="text/javascript">
	$(document).ready(function() {

		demo.initChartist();

		$.notify({
			icon : 'pe-7s-gift',
			message : "Cảm ơn bạn đã trỏ tới <b> => Quản Lý Hợp Đồng </b> "

		}, {
			type : 'warning',
			timer : 1
		});

	});
</script>
</html>