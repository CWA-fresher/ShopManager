<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<jsp:include page="common/head.jsp"></jsp:include>
<body>
<jsp:include page="common/nav.jsp"></jsp:include>
<!--/. NAV TOP  -->
<jsp:include page="common/nav-top.jsp"></jsp:include>
	<!-- /. NAV SIDE  -->
	<div id="wrapper">
		<div id="page-wrapper">
			<div class="header">
				<h2 class="page-header">
					<small>Xin chào Admin BabyShop </small>
				</h2>
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li class="active">Tổng hợp</li>
				</ol>

			</div>
			<div id="page-inner">

				<!-- /. ROW  -->

				<div class="row">
					<div class="col-md-3 col-sm-12 col-xs-12">
						<div class="board">
							<div class="panel panel-primary">
								<div class="number">
									<h3>
										<h3>10000</h3>
										<small>Lượt xem</small>
									</h3>
								</div>
								<div class="icon">
									<i class="fa fa-eye fa-5x red"></i>
								</div>

							</div>
						</div>
					</div>

					<div class="col-md-3 col-sm-12 col-xs-12">
						<div class="board">
							<div class="panel panel-primary">
								<div class="number">
									<h3>
										<h3>100</h3>
										<small>Đơn hàng</small>
									</h3>
								</div>
								<div class="icon">
									<i class="fa fa-shopping-cart fa-5x blue"></i>
								</div>

							</div>
						</div>
					</div>

					<div class="col-md-3 col-sm-12 col-xs-12">
						<div class="board">
							<div class="panel panel-primary">
								<div class="number">
									<h3>
										<h3>2000</h3>
										<small>Tổng sản phẩm</small>
									</h3>
								</div>
								<div class="icon">
									<i class="fa fa-product fa-5x green"></i>
								</div>

							</div>
						</div>
					</div>

					<div class="col-md-3 col-sm-12 col-xs-12">
						<div class="board">
							<div class="panel panel-primary">
								<div class="number">
									<h3>
										<h3>300</h3>
										<small>Người đăng ký</small>
									</h3>
								</div>
								<div class="icon">
									<i class="fa fa-user fa-5x yellow"></i>
								</div>

							</div>
						</div>
					</div>

				</div>
			</div>
			<!-- /. PAGE INNER  -->
		</div>
		<!-- /. PAGE WRAPPER  -->
	</div>
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="<c:url value='/assets/js/jquery-1.10.2.js' />"></script>
<!-- Bootstrap Js -->
<script src="<c:url value='/assets/js/bootstrap.min.js' />"></script>

<!-- Metis Menu Js -->
<script src="<c:url value='/assets/js/jquery.metisMenu.js' />"></script>
<!-- Morris Chart Js -->
<script src="<c:url value='/assets/js/morris/raphael-2.1.0.min.js' />"></script>
<script src="<c:url value='/assets/js/morris/morris.js' />"></script>

<script src="<c:url value='/assets/js/easypiechart.js' />"></script>
<script src="<c:url value='/assets/js/easypiechart-data.js' />"></script>

<script src="<c:url value='/assets/js/Lightweight-Chart/jquery.chart.js' />"></script>

<!-- Custom Js -->
<script src="<c:url value='/assets/js/custom-scripts.js' />"></script>

<!-- Chart Js -->
<script type="text/javascript" src="<c:url value='/assets/js/Chart.min.js' /> "></script>
<script type="text/javascript" src="<c:url value='/assets/js/chartjs.js' />"></script>
</body>

</html>