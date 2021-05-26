<%-- 
    Document   : resgister
    Created on : Jan 24, 2021, 9:21:02 PM
    Author     : Pham Hong Nghia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Đăng nhập / Đăng ký</title>
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
        <link rel="stylesheet" type="text/css" href="static/css/plugins/register.css">

        <!-- Modernizr -->
        <script src="static/js/vendor/modernizr-3.5.0.min.js"></script>
    </head>
    <body>

        <%@include  file="header.jsp" %>


        <div class="header__banner bg__4">
            <div class="header__link">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a class="text-white" href="index.jsp">Trang chủ</a></li>
                    <li class="breadcrumb-item"><a href="register.jsp">Đăng nhập , Đăng ký</a></li>
                </ol>
            </div>
        </div>


        <!-- Register, login -->

        <div class="container py-5">
            <div class="row">
                <div class="col-sm-6">
                    <div class="title__custom pb-4">
                        <h5>Đăng nhập</h5>
                    </div>
                    <div class="form__register">
                        <form action="LoginServ" method="POST">
                            <label class="pt-2">Tên đăng nhập</label>
                            <input type="text" name="tendangnhap" required>
                            <label class="pt-3">Mật khẩu</label>
                            <input type="password" name="matkhau" required>
                            <input type="submit" value="Đăng nhập">
                        </form>
                        <div class="other__login py-3">
                            <label class="form-check pl-0 pb-3"><input class="mr-2" type="checkbox" name="savepassword"> Nhớ mật khẩu</label>
                            <label class="w-100 text-center">Đăng nhập bằng</label>
                            <div class="d-flex pt-2">
                                <a href="#">Facebook</a>
                                <a href="#">Google+</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="title__custom pb-4">
                        <h5>Đăng ký</h5>
                    </div>
                    <div class="form__register">
                        <form action="RegisterServ" method="POST">
                            <label class="pt-2">Tên đăng nhập</label>
                            <input type="text" name="tendangnhap" required>

                            <label class="pt-3">Họ và tên</label>
                            <input type="text" name="hoten" required>

                            <label class="pt-3">Địa chỉ</label>
                            <input type="text" name="diachi" required>

                            <label class="pt-3">Số điện thại</label>
                            <input type="tel" name="sodienthoai" pattern="0+([0-9]{9})" required>

                            <label class="pt-3">Email</label>
                            <input type="email" name="email" required>

                            <label class="pt-3">Mật khẩu</label>
                            <input type="password" name="matkhau" required>

                            <input type="submit" value="Đăng ký" name="">
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
        <script src="static/js/JSONSearch.js"></script>
        <%
            Boolean bol = new Boolean(false);
            Boolean bool = new Boolean(false);
            String error = (String) session.getAttribute("error");
            String errorRes = (String) session.getAttribute("errorRes");
            if (error != null) {
                bol = bol.valueOf(error);
                boolean getbol = bol.booleanValue();
                if (getbol == false) {

        %>
        <script>
            $(document).ready(function () {
                var mes = "Không thể đăng nhập !";
                messageCart(mes);
                $('.message').fadeIn('slow/500/fast', function () {
                    $(this).css({
                        'opacity': '1',
                        'visibility': 'visible'
                    });
                    $(this).find('.message__img').css('color', 'var(--danger)');
                }).delay(2000).fadeOut('slow/500/fast', function () {
                    $(this).remove();
                });
            });
        </script>
        <%          session.removeAttribute("error");
            }
        } 
            if (errorRes != null) {
                bool = bool.valueOf(errorRes);
                boolean getBol = bool.booleanValue();
                if (getBol == false) {

        %>
        <script>
            $(document).ready(function () {
                var mes = "Không thể đăng ký (Tên đăng nhập đã có) !";
                messageCart(mes);
                $('.message').fadeIn('slow/500/fast', function () {
                    $(this).css({
                        'opacity': '1',
                        'visibility': 'visible'
                    });
                    $(this).find('.message__img').css('color', 'var(--danger)');
                }).delay(2000).fadeOut('slow/500/fast', function () {
                    $(this).remove();
                });
            });
        </script>
        <%  session.removeAttribute("errorRes");
                } else if (getBol == true) {
        %>
            <script>
                    $(document).ready(function () {
                        var mes = "Đăng ký thành công, Mời bạn đăng nhập !";
                        messageCart(mes);
                        $('.message').fadeIn('slow/500/fast', function () {
                            $(this).css({
                                'opacity': '1',
                                 'visibility': 'visible'
                            });
                            $(this).find('.message__img').css('color', 'var(--green)');
                            }).delay(2000).fadeOut('slow/500/fast', function () {
                                $(this).remove();
                            });
                    });
                            </script>
        <%  session.removeAttribute("errorRes");
                } else {
                    session.removeAttribute("errorRes");
                }
            }
        %>

    </body>
</html>
