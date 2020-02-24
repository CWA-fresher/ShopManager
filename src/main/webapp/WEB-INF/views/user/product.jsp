<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<jsp:include page="common/head.jsp"></jsp:include>
<body>
	<jsp:include page="common/header.jsp"></jsp:include>
	<div class="brands-area">
		<h3 style="color: black; margin-left: 100px;">Loại sản phẩm</h3>
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="brand-wrapper">
						<div class="brand-list">
							<img src="img/cui1.jpg" alt="" width="10px"> <img
								src="img/quay5.jpg" alt=""> <img src="img/nem4.jpg">
							<img src="img/ss2.jpg" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End brands area -->

	<div class="single-product-area">
		<h3 style="color: black; margin-left: 100px;">Cũi cao cấp</h3>
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<c:forEach var="p" items="${listProduct}">
					<div class="col-md-3 col-sm-6">
						<div class="single-shop-product">
							<div class="product-upper">
								<a href="#"><img src="${p.image}"></a>
							</div>
							<h2>
								<a href="">${p.name}</a>
							</h2>
							<div class="product-carousel-price">
								<ins style="color: red;">$ ${p.price} đ</ins>
							</div>

							<div class="product-option-shop">
								<!-- 	Thêm vào giỏ -->
									<form action="#" method="post">
										<input type="hidden" name="code" value="${p.code}"> <input
											type="hidden" name="name" value="${p.name}"> <input
											type="hidden" name="image" value="${p.image}"> <input
											type="hidden" name="price" value="${p.price}"> <input
											type="hidden" name="description" value="${p.description}">
											<input
											type="hidden" name="description" value="${p.category}">
										<button class="btn btn-primary" name="action" value="add">Thêm
											vào giỏ</button>
									</form>
							</div>
						</div>
					</div>
				</c:forEach>

				<!-- Phân trang   -->
				<div class="row">
					<div class="col-md-12">
						<div class="product-pagination text-center">
							<nav>
								<ul class="pagination">
									<li><a href="#" aria-label="Previous"> <span
											aria-hidden="true">&laquo;</span>
									</a></li>
									<li><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#" aria-label="Next"> <span
											aria-hidden="true">&raquo;</span>
									</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="common/footer.jsp"></jsp:include>

</body>
</html>