<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<jsp:include page="common/head.jsp"></jsp:include>
<body>
<jsp:include page="common/nav.jsp"></jsp:include>
<!--/. NAV TOP  -->
<jsp:include page="common/nav-top.jsp"></jsp:include>
<!-- CONTENT -->
<div id="wrapper">
    <div id="page-wrapper">
        <div class="header">
            <h1 class="page-header"></h1>
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">Quản lý sản phẩm</li>
                <li class="active">Thêm mới</li>
            </ol>

        </div>

        <div id="page-inner">
            <div class="row">
                <div class="col-xs-12">
                    <div class="panel panel-default">
                        <div class="panel-heading"></div>
                        <div class="panel-body">
                            <form:form action="/admin/add-product/save" method="POST" modelAttribute="productDto"
                                       enctype="multipart/form-data">

                                <label class="sub-title">Loại sản phẩm</label>
                                <div>
                                    <form:select path="category.id" items="${listCategory}" itemValue="id"
                                                 itemLabel="name" class="selectbox" style="width: 300px;">
                                    </form:select>
                                </div>

                                <label class="sub-title">Mã sản phẩm(<span style="color: red;">*</span>)<form:errors
                                        path="code" class="error"/></label>
                                <div>
                                    <form:input class="form-control" path="code"
                                                placeholder="Nhập mã sản phẩm" size="10" maxlength="10"/>
                                </div>
                                <label class="sub-title">Tên sản phẩm(<span style="color: red;">*</span>)<form:errors
                                        path="name" class="error"/></label>
                                <div>
                                    <form:input path="name" class="form-control"
                                                placeholder="Nhập tên sản phẩm" size="40" maxlength="40"/>
                                </div>
                                <label class="sub-title">Hình ảnh(<span style="color: red;">*</span>)<form:errors
                                        path="image" class="error"/></label>
                                <div>
                                    <form:input path="image" class="btn btn-success" type="file"
                                                style="background-color: black;"/>
                                </div>

                                <label class="sub-title">Giá(<span style="color: red;">*</span>)<form:errors
                                        path="price" class="error"/></label>
                                <div>
                                    <form:input path="price" type="number" class="form-control"
                                                placeholder="Nhập giá sản phẩm"/>
                                </div>

                                <label class="sub-title">Mô tả sản phẩm</label>
                                <div>
                                    <form:input path="description" type="text" class="form-control"
                                                placeholder="Nhập mô tả sản phẩm"/>
                                </div>
                                <div>
                                    <label class="sub-title">Trạng thái</label>
                                    <div>
                                        <form:select path="active" class="selectbox" style="width: 300px;">
                                            <form:option value="1" selected="selected">Hoạt động</form:option>
                                            <form:option value="0">Tạm dừng</form:option>
                                        </form:select>
                                    </div>
                                </div>
                                <button class="btn btn-success" type="submit">Lưu</button>
                                <button class="btn btn-danger" href="/admin/product">Quay lại</button>
                            </form:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="./../../../assets/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="./../../../assets/js/bootstrap.min.js"></script>
<!-- Metis Menu Js -->
<script src="./../../../assets/js/jquery.metisMenu.js"></script>
<script src="./../../../assets/js/select2.full.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $(".selectbox").select2();
    });
</script>
<!-- Custom Js -->
<script src="./../../../assets/js/custom-scripts.js"></script>
</body>
</html>
