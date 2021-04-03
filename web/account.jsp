<%-- 
    Document   : account
    Created on : Feb 3, 2021, 8:21:49 PM
    Author     : Pham Hong Nghia
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,bookshop.model.Account.*, bookshop.model.OrderProduct.OrderProduct, bookshop.model.OrderProduct.OrderProductConn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tài khoản</title>
        <!-- Favicons -->
        <link rel="shortcut icon" href="static/image/logo/sm_logo/logo.png">

        <!-- Google font (font-family: 'Roboto', sans-serif; Poppins ; Satisfy) -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,600i,700,700i,800" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">

        <!-- Font-awesome --> 
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        
        <!-- Bootstrap 4 -->
        <link rel="stylesheet" type="text/css" href="static/css/bootstrap.min.css">

        <!-- Slick -->
        <link rel="stylesheet" type="text/css" href="static/css/slick-theme.css">
        <link rel="stylesheet" type="text/css" href="static/css/slick.css">

        <!-- scss,css -->
        <link rel="stylesheet" type="text/css" href="static/css/plugins/modal.css">
        <link rel="stylesheet" type="text/css" href="static/css/plugins/default.css">
        <link rel="stylesheet" type="text/css" href="static/css/plugins/account.css">

        <!-- Modernizr -->
        <script src="static/js/vendor/modernizr-3.5.0.min.js"></script>
    </head>
    <body>

        <%@include file="header.jsp" %>
        <%
            String matkhau = (String) session.getAttribute("matkhau");
            Account acc = AccountConn.getAccount(tendangnhap, matkhau);
        %>
        <div class="header__banner bg__4">
        </div>

        <!-- Account -->

        <div class="container py-3">
            <div class="account py-2">
                <div class="account__img">
                    <img src="static/image/user/<%=acc.getHinhanh()%>">
                </div>
                <div class="account__text px-4 my-3">
                    <label><%=acc.getHoten()%></label>
                    <span class="font-italic mx-4 text-capitalize">(<%=acc.getQuyentruycap()%>)</span>
                </div>
            </div>
            <div class="row py-2">
                <div class="col-sm-3">
                    <div class="account__menu">
                        <ul>
                            <li><a class="active" href="#account__infor" onclick="tabAcc(this)"><i class="fa fa-info mr-3" aria-hidden="true"></i>Thông tin tài khoản</a></li>
                            <li><a href="#account__image" onclick="tabAcc(this)"><i class="fa fa-file-image-o mr-3" aria-hidden="true"></i>Cập nhật ảnh đại diện</a></li>
                            <li><a id="account__bill" href="#account__bill" onclick="tabAcc(this)"><i class="fa fa-usd mr-3" aria-hidden="true"></i>Lịch sử đơn hàng</a></li>
                            <li><a id="account__edit" href="#account__edit" onclick="tabAcc(this)"><i class="fa fa-sliders mr-3" aria-hidden="true"></i>Thay đổi thông tin</a></li>
                            <li><a href="#account__password" onclick="tabAcc(this)"><i class="fa fa-key mr-3" aria-hidden="true"></i>Thay đổi mật khẩu</a></li>
                            <li><a class="logout" href="LogoutServ"><i class="fa fa-sign-out mr-3" aria-hidden="true"></i>Đăng xuất</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-9 px-3 account__tab">
                    <div class="account__title border-bottom">
                        <label>Thông tin tài khoản</label>
                    </div>
                    <div class="account__infor tab account__active py-3" id="account__infor">
                        <div class="d-flex py-3">
                            <label>Tên đăng nhập </label>
                            <span><%=acc.getTendangnhap()%></span>
                        </div>
                        <div class="d-flex py-3">
                            <label>Họ và tên </label>
                            <span class="text-capitalize"><%=acc.getHoten()%></span>
                        </div>
                        <div class="d-flex py-3">
                            <label>Email </label>
                            <span><%=acc.getEmail()%></span>
                        </div>
                        <div class="d-flex py-3">
                            <label>Số điện thoại </label>
                            <span><%=acc.getSodienthoai()%></span>
                        </div>
                        <div class="d-flex py-3">
                            <label>Địa chỉ </label>
                            <span class="text-capitalize"><%=acc.getDiachi()%></span>
                        </div>
                        <div class="d-flex py-3">
                            <label>Truy cập với trạng thái </label>
                            <span class="text-capitalize"><%=acc.getQuyentruycap()%></span>
                        </div>
                    </div>
                    <div class="account__bill tab py-3" id="account__bill">
                        <%
                            int first = 0, last = 0, pages = 1;
                            if(request.getParameter("pages")!=null){
                                pages = (int) Integer.parseInt(request.getParameter("pages"));
                            }
                            
                            int total = AccountConn.getCount(tendangnhap);
                            
                            if(total <= 4){
                                first = 0;
                                last = total;
                            }else{
                                first = (pages - 1)*4;
                                last = 4;
                            }
                            
                            List<OrderProduct> list = AccountConn.getLimit(first, last, tendangnhap);
//                          List<OrderProduct> list = AccountConn.getOrder(tendangnhap);
                            request.setAttribute("list", list);
                        %>
                        <% if(list.size() > 0){%>
                        <label><%=total%> hóa đơn</label>
                        <table>
                            <thead>
                                <tr>
                                    <th>Ngày tạo</th>
                                    <th>Mã hóa đơn</th>
                                    <th>Mã sản phẩm</th>
                                    <th class="tensp">Tên sản phẩm</th>
                                    <th>Số lượng</th>
                                    <th>Thành tiền</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${list}" var="ls">
                                    <tr>
                                        <td>${ls.getNgaytao()}</td>
                                        <td>${ls.getMahd()}</td>
                                        <td>${ls.getMasp()}</td>
                                        <td>${ls.getTensp()}</td>
                                        <td>${ls.getSoluong()}</td>
                                        <td class="thanhtien" data-price="${ls.getThanhtien()}"></td>
                                        <td><button class="btn__view__order" onclick="loadDetailBill(${ls.getMahd()})">Xem chi tiết</button></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        <%}else{%>
                        <label class="bill__null text-danger">Lịch sử đơn hàng trống !</label>
                        <%}%>
                        <div  class="page__bill_account">
                            <ul class="start">
                                <%
                                    int loop = 0, num = 0;
                                    if((total / 4)% 2 == 0){
                                        num = total/4;
                                    }else{
                                        num = (total + 1)/4;
                                    }
                                    
                                    if(total %2 != 0){
                                        loop = (total/4)+1;
                                    }else{
                                        if(total < (num*4)+4 && total != num*4){
                                            loop = (total / 4) + 1;
                                        }else{
                                            loop = (total /4);
                                        }
                                    }
                                    for( int i = 1 ; i <= loop ; i++){
                                        if(pages == i){
                                    %>
                                <li><a href="account.jsp?pages=<%=i%>#account__bill"><%=i%></a></li>
                                    <% }else{%>
                                <li><a href="account.jsp?pages=<%=i%>#account__bill"><%=i%></a></li>
                                    <%    }
                                    }
                                %>
                            </ul>
                        </div>
                        <div class="account__details__bill py-3" id="account__details__bill">
                            <div class="title__details__bill border-bottom">
                                <label></label>
                            </div>
                            <div class="append__bill"></div> 
                        </div>
                    </div>
                    <div class="account__image py-3 tab" id="account__image">
                        <div class="row">
                            <div class="col-sm-6 text-center">
                                <img src="static/image/user/<%=acc.getHinhanh()%>">
                            </div>
                            <div class="col-sm-6">
                                <form action="UpdateImgServ?user=<%=acc.getTendangnhap()%>" method="POST">
                                    <div class="form-group py-3 mb-0">
                                        <label>Thay đổi ảnh đại diện</label>
                                        <input type="file" name="hinhanh" required>
                                    </div>
                                    <div class="form-group d-flex py-2">
                                        <input type="submit" value="Cập nhật">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="account__edit tab py-3" id="account__edit">
                        <div class="form-group d-flex py-3 mb-0">
                            <label>Họ và tên</label>
                            <input class="acc__hoten" type="text" name="hoten" required value="<%=acc.getHoten()%>">
                        </div>
                        <div class="form-group d-flex py-3 mb-0">
                            <label>Email</label>
                            <input class="acc__email" type="text" name="email" onkeyup="check()" required value="<%=acc.getEmail()%>">
                        </div>
                        <div class="form-group d-flex py-3 mb-0">
                            <label>Số điện thoại</label>
                            <input class="sodienthoai" type="text" name="sodienthoai" required onkeyup="check()" value="<%=acc.getSodienthoai()%>">
                        </div>
                        <div class="form-group d-flex py-3 mb-0">
                            <label>Địa chỉ</label>
                            <input class="acc__diachi" type="text" name="diachi" required value="<%=acc.getDiachi()%>">
                        </div>
                        <div class="edit__alert pt-3 pb-4">
                            <span></span>
                        </div>
                        <div class="form-group d-flex py-2">
                            <button class="sub__change" onclick="updateAcc('<%=acc.getTendangnhap()%>')">Thay đổi</button>
                        </div>
                    </div>
                    <div class="account__password tab py-3" id="account__password">
                        <form action="UpdatePass?user=<%=acc.getTendangnhap()%>" method="POST">
                            <div class="form-group d-flex py-3 mb-0">
                                <label>Nhập mật khẩu cũ</label>
                                <input class="pass__old" type="password" name="matkhaucu" required onkeyup="checkPass()">
                            </div>
                            <div class="form-group d-flex py-3 mb-0">
                                <label>Nhập mật khẩu mới</label>
                                <link href="static/css/plugins/account.css" rel="stylesheet" type="text/css"/>
                                <input class="pass__new" type="password" name="matkhaucumoi" required onkeyup="checkPass()">
                            </div>
                            <div class="form-group d-flex py-3 mb-0">
                                <label>Nhập lại mật khẩu mới</label>
                                <input class="re__pass" type="password" required onkeyup="checkPass()">
                            </div>
                            <div class="pass__alert pt-3 pb-4">
                                <span></span>
                            </div>
                            <div class="form-group d-flex py-2">
                                <input class="sub__changepass" type="submit" value="Thay đổi mật khẩu">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>


        <%@include file="footer.jsp" %>

        <!-- JavaScript, Bootstrap 4, slick, data -->
        <script src="static/js/vendor/jquery-3.2.1.min.js"></script>
        <script src="static/js/jquery-3.5.1.min.js"></script>
        <script src="static/js/bootstrap.min.js"></script>
        <script src="static/js/popper.min.js"></script>
        <script src="static/js/slick.min.js"></script>
        <script src="static/js/vendor/data.js"></script>
        <!-- JavaScript Custom -->
        <script src="static/js/product.js"></script>
        <script src="static/js/cart.js"></script>
        <script src="static/js/animation.js"></script>
        <script src="static/js/account.js"></script>
        <script src="static/js/JSONSearch.js"></script>
        <%@include file="loginbs.jsp" %>
    </body>
</html>
