<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<jsp:include page="common/head.jsp"></jsp:include>
<body>
	<jsp:include page="common/header.jsp"></jsp:include>
	<div class="single-product-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-10">
					<table class="table">
						<c:if test="${empty sessionScope.myCartItems}">
							<h1>Giỏ hàng của bạn đang trống !!!!!</h1>
							<tr>
								<td><a href="<c:url value="/product"/>">Thêm hàng vào giỏ</a></td>
							</tr>
						</c:if>
						<c:if test="${not empty sessionScope.myCartItems}">
						<h2>Giỏ hàng của bạn</h2><br>
							<tr>
								<td>Mã</td>
								<td>Tên</td>
								<td>Ảnh</td>
								<td>Giá</td>
								<td>Số lượng</td>
								<td>Action</td>
							</tr>
							<c:forEach var="c" items="${sessionScope.myCartItems}">
								<tr>
									<td>${c.value.product.code}</td>
									<td>${c.value.product.name}</td>
									<td><img src="img/${c.value.product.image}" style="width: 50px;"></td>
									<td>${c.value.product.price}</td>
									<td><input type="number" value="${c.value.quantity}" style="width: 40px; text-align: center;" ></td>
									<td>
										<form action="<c:url value="/cart"/>" method="post">
											<input type="hidden" name="code"
												value="${c.value.product.code}">
											<button name="action" value="remove" class="btn btn-danger">Xóa</button>
										</form>
									</td>
								</tr>
							</c:forEach>
							<tr>
								<td><a href="<c:url value="/product"/>">Xem tiếp hàng</a></td>
							</tr>
							<tr>
								<td><a href="<c:url value="/checkout"/>">Đặt hàng</a></td>
							</tr>
						</c:if>
					</table>
				</div>
				<div class="col-md-1"></div>
			</div>
		</div>
	</div>

</body>
</html>