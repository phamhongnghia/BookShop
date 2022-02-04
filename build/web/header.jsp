<%-- 
    Document   : header
    Created on : Jan 29, 2021, 9:09:35 PM
    Author     : Pham Hong Nghia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String tendangnhap = (String) session.getAttribute("tendangnhap");
    String hoten = (String) session.getAttribute("hoten");
    String sodienthoai = (String) session.getAttribute("sodienthoai");
    String img = (String) session.getAttribute("hinhanh");
    String diachi = (String) session.getAttribute("diachi");
%>
<!-- Header -->
<header class="container-fluid header">
    <div class="row header__sticky">
        <div class="col-sm-3 header__logo">
            <h5>BookShop</h5>
        </div>
        <div class="col-sm-6 header__menu">
            <ul>
                <li><a href="/">Trang chủ</a></li>
                <li>
                    <a href="#">Tủ Sách</a>
                    <div class="menu__dropdown menu_1 row">
                        <div class="col-sm-4">
                            <h5 class="py-3 border-bottom">Sách trong nước</h5>
                            <ul>
                                <li><a href="shop-grid.jsp?t=VH_TN">Văn học trong nước</a></li>
                                <li><a href="shop-grid.jsp?t=TSHK">Tiểu sử - Hồi ký</a></li>
                                <li><a href="shop-grid.jsp?t=KTE_TLH">Kinh tế - Tâm lý học</a></li>
                                <li><a href="shop-grid.jsp?t=GKTK">Giáo khoa - Tham khảo</a></li>
                                <li><a href="shop-grid.jsp?t=NNGU">Ngoại ngũ</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-4">
                            <h5 class="py-3 border-bottom">Sách nước ngoài</h5>
                            <ul>
                                <li><a href="shop-grid.jsp?t=VH_NN">Văn học nước ngoài</a></li>
                                <li><a href="shop-grid.jsp?t=QLKD">Quản lý kinh doanh</a></li>
                                <li><a href="shop-grid.jsp?t=KHVT">Khoa học - Viễn tưởng</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-4">
                            <h5 class="py-3 border-bottom">Văn phòng phẩm</h5>
                            <ul>
                                <li><a href="shop-grid.jsp?t=VPP">Dụng cụ học sinh</a></li>
                                <li><a href="shop-grid.jsp?t=VPP">Dụng cụ văn phòng</a></li>
                                <li><a href="shop-grid.jsp?t=VPP">Dụng cụ vẽ</a></li>
                                <li><a href="shop-grid.jsp?t=VPP">Sản phẩm khác</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li>
                    <a href="#">Thiếu nhi</a>
                    <div class="menu__dropdown menu_2 row">
                        <div class="col-sm-6">
                            <h5 class="py-3 border-bottom">Top truyện tranh</h5>
                            <ul>
                                <li><a href="shop-grid.jsp?t=TNHI">Doraemon - Conan</a></li>
                                <li><a href="shop-grid.jsp?t=TNHI">Diary Wimpy Kid</a></li>
                                <li><a href="shop-grid.jsp?t=TNHI">Harry Potter</a></li>
                                <li><a href="shop-grid.jsp?t=TNHI">American Girl</a></li>
                                <li><a href="shop-grid.jsp?t=TNHI">Finding Dory</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-6">
                            <h5 class="py-3 border-bottom">Giáo dục trẻ em</h5>
                            <ul>
                                <li><a href="shop-grid.jsp?t=TEM">Phát triển trí tuệ cho trẻ</a></li>
                                <li><a href="shop-grid.jsp?t=TEM">Phát triển kỹ năng cho trẻ</a></li>
                            </ul>
                        </div>
                    </div>	
                </li>
                <li>
                    <a href="#">Page</a>
                    <div class="menu__dropdown menu_2 row">
                        <div class="col-sm-6">
                            <h5 class="py-3 border-bottom">Về chúng tôi</h5>
                            <ul>
                                <li><a href="">Thông tin về trang</a></li>
                                <li><a href="">Thông tin về team</a></li>
                                <li><a href="">Phản hồi của bạn</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-6">
                            <h5 class="py-3 border-bottom">Mạng xã hội</h5>
                            <ul>
                                <li><a href="">Fanpage</a></li>
                                <li><a href="">Instagram</a></li>
                                <li><a href="">Twitter</a></li>
                                <li><a href="">Youtube</a></li>
                            </ul>
                        </div>
                    </div>	
                </li>
                <li><a href="contacts.jsp">Liên hệ</a></li>
            </ul>
        </div>
        <div class="col-sm-3 header__bar">
            <ul>
                <li>
                    <i class="fa fa-search btn__search" aria-hidden="true"></i>
                </li>
                <li class="position-relative">
                    <i class="fa fa-shopping-cart" aria-hidden="true">
                        <div class="cart__average"></div>
                    </i>
                    <div class="menu__dropdown menu_cart">
                        <h5 class="py-3 border-bottom">Giỏ hàng</h5>
                        <div class="list__cart py-2">
                        </div>
                        <div class="pt-2 pb-2 mx-3 cart__sum">
                        </div>
                    </div>	
                </li>
                <li>
                    <i class="fa fa-user" aria-hidden="true"></i>
                    <div class="menu__dropdown menu_i">
                        <div class="menu__account">
                            <h5 class="py-3 border-bottom">Tài khoản của bạn</h5>
                            <ul>
                                <%
                                    if (tendangnhap != null && session != null) {
                                %>
                                <li><a class="bs__username my__account" data-user="<%=tendangnhap%>" data-address="<%=diachi%>" data-fullname="<%=hoten%>" data-img="<%=img%>" href="account.jsp?user=<%=tendangnhap%>"><%=tendangnhap%></a></li>
                                <li><a id="account__bill" href="account.jsp?user=<%=tendangnhap%>/#account__bill">Lịch sử đơn hàng</a></li>
                                <li><a href="cart.jsp">Giỏ hàng của bạn</a></li>
                                <li><a id="account__edit" href="account.jsp?user=<%=tendangnhap%>/#account__edit">Thay đổi thông tin</a></li>
                                <li><a href="LogoutServ" style="color: red">Đăng xuất</a></li>
                                    <%  } else {%>
                                <li><a href="register.jsp">Đăng nhập / Đăng ký</a></li>
                                    <%  }%>
                            </ul>
                        </div>
                    </div>	
                </li>
            </ul>
        </div>
    </div>
</header>
