<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<html>
<head>
<base href="${pageContext.servletContext.contextPath }/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Account</title>
</head>
<body>
	<%
		System.out.println("account/index.jsp");
	%>
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="header">
							<h4 class="title" style="font-weight: bold;">
								Danh sách tài khoản
							</h4>
							<p class="category">
							</p>
						</div>

						<div style="clear: both; width: 98%; margin: 10px auto;">
							<div>
								<a href="<c:url value="/admin/account/addAccount"/>" type="submit"
									class="btn btn-success btn-fill pull-right">Thêm tài khoản</a>
							</div>
						</div>
						<div class="content table-responsive table-full-width">
							<table class="table table-hover table-striped">
								<thead>
									<tr>
										<th>STT</th>
										<th>Email</th>
										<th>Họ Và Tên</th>
										<th>Địa Chỉ</th>
										<th>Trạng thái</th>
										<th>Quyền Truy Cập</th>
										<th>Chức năng</th>
									</tr>

								</thead>
								<c:set var="count" value="0" />
								<tbody>
									<c:forEach items="${listAccount}" var="account">
										<tr>
											<c:set var="count" value="${count+1 }" />
											<td>${count}</td>
											<td>${account.email }</td>
											<td>${account.fullname }</td>
											<td>${account.address }</td>
											<td><c:choose>
												<c:when test="${account.active == 1 }">
													<button type="button" class="btn btn-warning btn-xs">Hoạt động</button>
												</c:when>
												<c:when test="${account.active == 0}">
													<button type="button" class="btn btn-info btn-xs">Khóa</button>
												</c:when>
											</c:choose></td>
											<td><c:choose>
													<c:when test="${account.role == 'ADMIN' }">
														<button type="button" class="btn btn-warning btn-xs">Quản
															Trị Viên</button>
													</c:when>
													<c:when test="${account.role == 'USER'}">
														<button type="button" class="btn btn-info btn-xs">Người dùng</button>
													</c:when>
												</c:choose></td>
											<td><a
												href="admin/account/updateAccount/${account.id}"
												type="button" rel="tooltip" title="Sửa"
												class="btn btn-info btn-simple btn-xs"> <i
													class="fa fa-edit"></i>
											</a> <a href="admin/account/delete/${account.id}"
												onclick="return confirm('Bạn chắc chắn chứ ?')"
												type="button" rel="tooltip" title="Xóa"
												class="btn btn-danger btn-simple btn-xs"> <i
													class="fa fa-times"></i>
											</a>
											</td>

										</tr>
									</c:forEach>
								</tbody>
							</table>
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
			message : "Cảm ơn bạn đã trỏ tới <b> => Quản Lý Tài Khoản </b> "

		}, {
			type : 'success',
			timer : 1
		});

	});
</script>
</html>