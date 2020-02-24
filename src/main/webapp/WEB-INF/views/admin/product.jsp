<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<jsp:include page="common/head.jsp"></jsp:include>
<body>
<jsp:include page="common/nav.jsp"></jsp:include>
<!--/. NAV TOP  -->
<jsp:include page="common/nav-top.jsp"></jsp:include>
	<div id="wrapper">
		<div id="page-wrapper">
			<div class="header">
				<h1 class="page-header">Quản lý sản phẩm</h1>
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li class="active">Quản lý sản phẩm</li>
				</ol>
				<a href="<c:url value="/admin/add-product"/>" style="color: black;">Thêm mới</a>
			</div>
	
				
			<div id="page-inner">

				<div class="row">
					<div class="col-md-12">
						<!-- Advanced Tables -->
						<div class="panel panel-default">
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-example">
										<thead>
											<tr>
												<th>STT</th>
												<th>Mã sản phẩm</th>
												<th>Tên sản phẩm</th>
												<th>Hình ảnh</th>
												<th>Giá bán</th>
												<th>Mô tả sản phẩm</th>
												<th>Loại</th>
												<th>Trạng thái</th>
												<th>Hành động</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach items="${listProduct}" var="product">
											<tr class="odd gradeX">
												<td>${product.id}</td>
												<td>${product.code}</td>
												<td>${product.name}</td>
												<td><img src="${product.image}" height="50px;"></td>
												<td>${product.price}</td>
												<td width="200px">${product.description}</td>
												<td>Cũi</td>
												<td>${product.active}</td>
												<td><button class="btn btn-success" href="<c:url value="/admin/edit-product/${product.id}" />">Sửa</button>
													<button class="btn btn-danger" href="<c:url value="/admin/product/remove" />">Xóa</button></td>
											</tr>
										</c:forEach>

										</tbody>
									</table>
								</div>

							</div>
						</div>
						<!--End Advanced Tables -->
					</div>
				</div>
				<!-- /. ROW  -->
			</div>
			<!-- /. PAGE INNER  -->
		</div>
	</div>
	<!-- JS Scripts-->
	<!-- jQuery Js -->
	<script src="../../assets/js/jquery-1.10.2.js"></script>
	<!-- Bootstrap Js -->
	<script src="../../assets/js/bootstrap.min.js"></script>
	<!-- Metis Menu Js -->
	<script src="../../assets/js/jquery.metisMenu.js"></script>
	<!-- DATA TABLE SCRIPTS -->
	<script src="../../assets/js/dataTables/jquery.dataTables.js"></script>
	<script src="../../assets/js/dataTables/dataTables.bootstrap.js"></script>
	<script>
		$(document).ready(function() {
			$('#dataTables-example').dataTable();
		});
	</script>
	<!-- Custom Js -->
	<script src="../../assets/js/custom-scripts.js"></script>

</body>
</html>
