<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${pageContext.servletContext.contextPath }/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HieuDTPH04388</title>
</head>
<body>
	<%
		System.out.println("category/add-category.jsp");
	%>
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="header">
							<h4 class="title" style="font-weight: bold;">
								Thêm loại sản phẩm
							</h4>

						</div>
						<div class="content">
							<form:form action="/admin/category/saveCategory"
								method="POST" commandName="category">
								<!-- 2 Cột  -->
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Mã loại sản phẩm: (<span style="color: red;">*</span>)<form:errors
													path="code" class="error" />
											</label>
											<form:input path="code" class="form-control" />
										</div>
									</div>
								</div>

								<!-- 2 Dòng -->
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Tên loại sản phẩm: (<span style="color: red;">*</span>)<form:errors
													path="name" class="error" /></label>
											<form:input path="name" class="form-control" />
										</div>
									</div>
								</div>

								<!-- 2 Cột -->
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label>Trạng thái: (<span style="color: red;">*</span>)</label>
											<div class="form-group">
												<form:select path="active" class="form-control">
													<form:option value="1">Hoạt động</form:option>
													<form:option value="0">Tạm dừng</form:option>
												</form:select>
											</div>
										</div>
									</div>
								</div>
								<!-- 1 Cot -->
								<div class="clearfix"></div>
								<div class="text-center">
									<button type="submit"
										class="btn btn-success btn-fill pull-right">
										Thêm loại sản phẩm
									</button>
									<div class="clearfix"></div>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

</body>
</html>