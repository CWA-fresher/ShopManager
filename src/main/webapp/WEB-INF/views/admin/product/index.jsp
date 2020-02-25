<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<base href="${pageContext.servletContext.contextPath }/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product</title>
</head>
<body>
	<%
		System.out.println("product/index.jsp");
	%>
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="header">
							<h4 class="title" style="font-weight: bold;">
								Danh sách sản phẩm
							</h4>
							<p class="category">
							</p>
						</div>

						<div style="clear: both; width: 98%; margin: 10px auto;">
							<div>
								<a href="/admin/add-product" type="submit"
									class="btn btn-success btn-fill pull-right">Thêm sản phẩm</a>
							</div>
						</div>


						<div class="content table-responsive table-full-width">
							<table class="table table-hover table-striped">
								<thead>
									<tr>
										<th>STT</th>
										<th>Mã</th>
										<th>Tên sản phẩm</th>
										<th>Giá</th>
										<th>Ảnh</th>
										<th>Loại sản phẩm</th>
										<th>Trạng thái</th>
										<th>Chức Năng</th>
									</tr>

								</thead>
								<tbody>
									<c:forEach items="${listProduct}" var="p"
										varStatus="itr">
										<tr>
											<c:set var="count" value="${count+1 }" />
											<td>${count}</td>
											<td>${p.code }</td>
											<td>${p.name }</td>
											<td>${p.price }</td>
											<td style="width: 20px; height: 30px">${pageContext.servletContext.contextPath }/${p.image }</td>
											<td>${p.category.name}</td>
											<td><c:choose>
												<c:when test="${p.active == 1 }">
													<button type="button" class="btn btn-warning btn-xs">Hoạt động</button>
												</c:when>
												<c:when test="${p.active == 0}">
													<button type="button" class="btn btn-info btn-xs">Tạm dừng</button>
												</c:when>
											</c:choose></td>
											<td><a
												href="#"
												type="button" rel="tooltip" title="Sửa"
												class="btn btn-info btn-simple btn-xs"> <i
													class="fa fa-edit"></i>
											</a> <a href="#"
												onclick="return confirm('Bạn chắc chắn chứ ?')"
												type="button" rel="tooltip" title="Xóa"
												class="btn btn-danger btn-simple btn-xs"> <i
													class="fa fa-times"></i>
											</a> <a href="#"
												type="button" rel="tooltip" title="Xem Chi Tiết"
												class="btn btn-success btn-simple btn-xs"> <i
													class="fa fa-times"></i>
											</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>

							<div style="margin: 10px; text-align: right;">
<%--								<c:forEach begin="1" end="${rowCount}" varStatus="row">--%>
<%--									<a type="button" href="admin/employee/?page=${row.index}"--%>
<%--										class="btn btn-danger btn-xs btn-fill">${row.index}</a>--%>
<%--								</c:forEach>--%>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<!--   Core JS Files   -->
<script src="../../../../assets/js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="../../../../assets/js/bootstrap.min.js" type="text/javascript"></script>


<!--  Notifications Plugin    -->
<script src="../../../../assets/js/bootstrap-notify.js"></script>

<script type="text/javascript">
	$(document).ready(function() {

		demo.initChartist();

		$.notify({
			icon : 'pe-7s-gift',
			message : "Cảm ơn bạn đã trỏ tới <b> => Quản Lý Sản phẩm </b> "

		}, {
			type : 'danger',
			timer : 1
		});

	});
</script>

</html>