<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar-default navbar-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav" id="main-menu">
            <li><a  href="<c:url value='/admin/home' />"><i
                    class="fa fa-dashboard"></i>Tổng hợp</a></li>
            <li><a class="active-menu" href="<c:url value='/admin/account/list' />"><i class="fa fa-qrcode"></i> Tài
                khoản</a></li>
            <li><a href="<c:url value='/admin/product' />"><i class="fa fa-table"></i> Sản
                phẩm</a></li>
            <li><a href="#"><i class="fa fa-sitemap"></i>Danh mục tham
                chiếu<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li><a href="<c:url value='/admin/category/list-category' />">Loại sản phẩm</a></li>
                </ul></li>
            <li><a href="#"><i class="fa fa-table"></i>Đơn hàng</a></li>
            <li><a href="#"><i class="fa fa-table"></i>Trang
                chủ</a></li>
            <li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Đăng
                xuất</a></li>
        </ul>
    </div>
</nav>
