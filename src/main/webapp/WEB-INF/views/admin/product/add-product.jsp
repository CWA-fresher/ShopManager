<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <base href="${pageContext.servletContext.contextPath }/">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Product</title>
</head>
<body>
<%
    System.out.println("product/add-product.jsp");
%>
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="header">
                        <h4 class="title" style="font-weight: bold;">
                            Thêm sản phẩm
                        </h4>
                    </div>
                    <div class="content">
                        <form:form action="/admin/add-product/save" method="POST"
                                   modelAttribute="productDto" enctype="multipart/form-data">
                            <!-- 3 Dòng -->
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Mã Sản phẩm: (<span style="color: red;">*</span>)<form:errors
                                                path="code" class="error"/></label>
                                        <form:input path="code" placeholder="Mã sản phẩm..."
                                                    class="form-control" value=""/>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Tên sản phẩm: (<span style="color: red;">*</span>)<form:errors
                                                path="name" class="error"/></label>
                                        <form:input path="name"
                                                    placeholder="Tên sản phẩm..." size="30" maxlength="30"
                                                    class="form-control"/>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Ảnh: (<span
                                                style="color: red;">*</span>)<form:errors path="image"
                                                                                          class="error"/></label>
                                        <form:input path="image" type="file" class="form-control"/>
                                    </div>
                                </div>
                            </div>
                            <!-- 3 Dòng -->
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Giá: (<span style="color: red;">*</span>)<form:errors
                                                path="price" class="error"/></label>
                                        <form:input path="price" type="number"
                                                    class="form-control"/>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Mô tả: (<span style="color: red;">*</span>)<form:errors
                                                path="description" class="error"/></label>
                                        <form:input path="description" class="form-control" value=""/>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Loại sản phẩm:</label>
                                        <form:select path="category.id" class="form-control" items="${listCategory}"
                                                     itemValue="id" itemLabel="name">
                                        </form:select>
                                    </div>
                                </div>
                            </div>

                            <!-- 2 Dòng -->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Trạng thái:</label>
                                        <form:select path="active" class="form-control">
                                            <form:option selected="selected" value="1">Hoạt động</form:option>
                                            <form:option value="0">Tạm dừng</form:option>
                                        </form:select>
                                    </div>
                                </div>
                            </div>

                            <!-- 3 Dòng -->
                            <div class="clearfix"></div>
                            <div class="text-center">
                                <button type="submit"
                                        class="btn btn-success btn-fill pull-right">
                                    Thêm sản phẩm
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