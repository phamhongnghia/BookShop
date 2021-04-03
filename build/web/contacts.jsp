<%-- 
    Document   : contacts
    Created on : Mar 13, 2021, 8:16:18 PM
    Author     : Pham Hong Nghia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>BookShop</title>
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
        <link rel="stylesheet" type="text/css" href="static/css/plugins/contacts.css">

        <!-- Modernizr -->
        <script src="static/js/vendor/modernizr-3.5.0.min.js"></script>
    </head>
    <body>

        <!-- Header -->
        <%@include file="header.jsp" %>
        
        <div class="header__banner bg__4">
            <div class="header__link">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a class="text-white" href="index.jsp">Trang chủ</a></li>
                    <li class="breadcrumb-item"><a href="contact.jsp">Liên hệ</a></li>
                </ol>
            </div>
        </div>


        <div class="container py-4">
            <div class="title__wn sale_pr text-center pb-3">
                <h4>Google <span>Map</span></h4>
            </div>
            <div class="py-4">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3851.9577337658225!2d108.80340767641407!3d15.105657989380097!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3169acd30c665de7%3A0x5e849b2bdaae2815!2zxJDhuqFpIGjhu41jIFBo4bqhbSBWxINuIMSQ4buTbmcgKGPGoSBz4bufIG3hu5tpKQ!5e0!3m2!1svi!2s!4v1611800355176!5m2!1svi!2s" width="0" height="650" frameborder="0" style="border:1px solid black; width: 100%" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="title__custom pb-4">
                        <h5>Ý kiến</h5>
                    </div>
                    <div class="form__register">
                        <form action="">
                            <label class="pt-2">Họ và tên</label>
                            <input type="text" name="username" required>

                            <label class="pt-3">Email</label>
                            <input type="email" name="email" required>

                            <label class="pt-3">Nhập phản hồi</label>
                            <textarea name=""></textarea>

                            <input type="submit" value="Đăng ký" name="">
                        </form>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div>
                        <div class="title__custom pb-4">
                            <h5>Liên hệ</h5>
                        </div>
                        <div class="contact__us">
                            <div class="contacts__address py-3">
                                <label><i class="fa fa-location-arrow mr-4" aria-hidden="true"></i>509 Phan Đình Phùng, Chánh lộ, Quảng Ngãi</label>
                            </div>
                            <div class="contacts__address py-3">
                                <label><i class="fa fa-google-plus mr-4" aria-hidden="true"></i>Phamhongnghia13579@gmail.com</label>
                            </div>
                            <div class="contacts__number py-3">
                                <label><i class="fa fa-phone mr-4" aria-hidden="true"></i>0356.156.445</label>
                            </div>
                            <div class="contacts__social py-3">
                                <a href="#">
                                    <img src="static/image/icon/facebook.png" alt="">
                                </a>
                                <a href="">
                                    <img src="static/image/icon/youtube.png">
                                </a>
                                <a href="">
                                    <img src="static/image/icon/instagram.png">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- register email for web -->

        <%@include file="registerEmail.jsp" %>



        <!-- footer -->

        <footer class="container-fluid">
            <div class="container pt-2 pb-2 footer__copyright text-center">
                <span>@Copyright. Pham Hong Nghia 2021</span>
            </div>
        </footer>



        <div class="alert__cart"></div>

        <!-- Popup Search content -->

        <div class="container-fluid search">
            <i class="fa fa-times btn close-search" aria-hidden="true"></i>
            <form class="d-flex">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Tìm kiếm...">
                    <div class="input-group-append">
                        <button class="btn" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                    </div>
                </div>
            </form>
        </div>

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
    </body>
</html>
