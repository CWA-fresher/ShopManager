<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<jsp:include page="common/head.jsp"></jsp:include>
<body>
<jsp:include page="common/nav.jsp"></jsp:include>
<!--/. NAV TOP  -->
<jsp:include page="common/nav-top.jsp"/>
	<!-- CONTENT -->
<div id="wrapper">
    <div id="page-wrapper">
        <div class="header">
            <h1 class="page-header"></h1>
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">Quản lý tài khoản</li>
                <li class="active">Thêm mới</li>
            </ol>

        </div>

        <div id="page-inner">
            <div class="row">
                <div class="col-xs-12">
                    <div class="panel panel-default">
                        <div class="panel-heading"></div>
                        <form action="<c:url value='/admin/newAccount' />" method="POST">
                            <div class="panel-body">
                                <div class="sub-title">Họ và tên</div>
                                <div>
                                    <input name="fullname" value="${account.fullName}" type="text"
                                           class="form-control" placeholder="Nhập họ và tên">
                                </div>

                                <div class="sub-title">Tên tài khoản</div>
                                <div>
                                    <input name="username" value="${account.username}" type="text"
                                           class="form-control" placeholder="Nhập tên mã loại sản phẩm">
                                </div>

                                <div class="sub-title">Mật khẩu</div>
                                <div>
                                    <input name="password" value="${account.password}" type="text"
                                           class="form-control" placeholder="Nhập mật khẩu">
                                </div>

                                <div class="sub-title">Địa chỉ</div>
                                <div>
                                    <input name="address" value="${account.address}" type="text"
                                           class="form-control"
                                           placeholder="Nhập địa chỉ (ghi rõ số nhà)">
                                </div>

                                <div class="sub-title">Số điện thoại</div>
                                <div>
                                    <input name="phonenumber" value="${account.phonenumber}"
                                           type="text" class="form-control"
                                           placeholder="Nhập số điện thoại">
                                </div>

                                <div>
                                    <div class="sub-title">Quyền</div>
                                    <div>
                                        <div class="radio3 radio-check radio-success radio-inline">
                                            <input type="radio" id="radio4" name="radio2"
                                                   value="option3" checked="checked"> <label
                                                for="radio4">Admin</label>
                                        </div>
                                        <div class="radio3 radio-check radio-inline">
                                            <input type="radio" id="radio5" name="radio2"
                                                   value="option4"> <label for="radio5">Khách
                                            hàng</label>
                                        </div>
                                    </div>
                                </div>

                                <div>
                                    <div class="sub-title">Trạng thái</div>
                                    <div>
                                        <div class="radio3 radio-check radio-success radio-inline">

                                            <input type="radio" id="radio4" name="radio2"
                                                   value="option1" checked="checked"> <label
                                                for="radio4">Hoạt động</label>
                                        </div>
                                        <div class="radio3 radio-check radio-inline">
                                            <input type="radio" id="radio5" name="radio2"
                                                   value="option2"> <label for="radio5">Tạm
                                            dừng</label>
                                        </div>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-success">Lưu</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="../assets/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="../assets/js/bootstrap.min.js"></script>
<!-- Metis Menu Js -->
<script src="../assets/js/jquery.metisMenu.js"></script>
<script src="../assets/js/select2.full.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $(".selectbox").select2();
    });
</script>
<!-- Custom Js -->
<script src="../assets/js/custom-scripts.js"></script>
</body>
</html>
