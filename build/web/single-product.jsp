<%-- 
    Document   : single-product
    Created on : Feb 2, 2021, 10:37:22 AM
    Author     : Pham Hong Nghia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title></title>
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
        <link rel="stylesheet" type="text/css" href="static/css/plugins/product.css">
        <link rel="stylesheet" type="text/css" href="static/css/plugins/single-product.css">
        <link rel="stylesheet" type="text/css" href="static/css/plugins/feedback.css">

        <!-- Modernizr -->
        <script src="static/js/vendor/modernizr-3.5.0.min.js"></script>
    </head>
    <body>

        <%@include file="header.jsp" %>


        <div class="header__banner bg__2">
            <div class="header__link">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a class="text-white" href="index.jsp">Trang chủ</a></li>
                </ol>
            </div>
        </div>


        <!-- Single product -->

        <div class="container bg-white py-5">
            <div class="row">
                <div class="col-sm-9">
                    <div class="row">
                        <div class="col-sm-5 py-3">
                            <div class="single__img text-center">
                                <!-- Image product -->
                                <img src="" alt="">
                            </div>
                        </div>
                        <div class="col-sm-7 py-3">
                            <div class="product__view">
                                <div class="single__title product__tilte">
                                    <h5>
                                        <!-- Title product -->
                                    </h5>
                                </div>
                                <div class="single__price py-3 border-bottom">
                                    <!-- Price product -->
                                </div>
                                <div class="single__content py-4">
                                    <p></p>
                                </div>
                                <div class="single__buy">
                                    <div class="single__qty">
                                        <span>Số lượng : </span>
                                        <input type="number" name="" value="1" min="1" max="100">
                                    </div>
                                    <div class="single__cart">
                                        
                                    </div>
                                    <button class="buy__now" onclick="showModal()">Mua ngay</button>
                                </div>
                                <div class="single__categori py-4">
                                    <span>Hạng mục : </span>
                                    <a href=""></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Details single product  -->

                    <div class="py-4">
                        <div class="single__title pb-3 mr-5 border-bottom">
                            <h5>Thông tin chi tiết</h5>
                        </div>
                        <div class="single__details py-3">
                            <table>
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                        <div class="single__title py-3 mr-5 border-bottom">
                            <h5>Mô tả về sách</h5>
                        </div>
                        <div class="single__desc py-3">
                            
                        </div>
                    </div>

                    <!-- Related product  -->

                    <div class="container py-5" id="sale_pr">
                        <div class="title__wn sale_pr text-center pb-3">
                            <h4>Sản phẩm <span>liên quan</span></h4>
                        </div>
                        <div class="related__product py-3">
                        </div>
                    </div>
                    
                    <!-- Feedback -->
                    <%@include file="feedback.jsp" %>
                </div>

                <!-- Categories product  -->

                <div class="col-sm-3 py-3">
                    <div class="single__details">
                        <div class="single__title">
                            <h5>Danh mục sản phẩm</h5>
                        </div>
                        <div class="product__categories py-2">
                            <a id="VH_TN" href="">Văn học trong nước <span></span></a>
                            <a id="VH_NN" href="">Văn học nước ngoài <span></span></a>
                            <a id="KTE" href="">Kinh tế <span></span></a>
                            <a id="NNGU" href="">Ngoại ngữ <span></span></a>
                            <a id="TNHI" href="">Thiếu nhi <span></span></a>
                            <a id="TEM" href="">Sách trẻ em <span></span></a>
                            <a id="TSHK" href="">Tiểu sử hồi ký <span></span></a>
                            <a id="TLH" href="">Tâm lý học <span></span></a>
                            <a id="QLKD" href="">Quản lý kinh doanh <span></span></a>
                            <a id="KHVT" href="">Khoa học viễn tưởng <span></span></a>
                            <a id="GKTK" href="">Giáo khoa tham khảo <span></span></a>
                            <a id="VPP" href="">Văn phòng phẩm <span></span></a>
                        </div>
                    </div>
                    <div class="pt-4">
                        <div class="single__title">
                            <h5>Sản phẩm bán chạy</h5>
                        </div>
                        <div class="ads__selling">
                            
                        </div>
                    </div>
                </div>
            </div>

        </div>


        <!-- register email for web -->

        <%@include file="registerEmail.jsp" %>


        <%@include file="footer.jsp" %>
        <!-- Buy now single product -->

        <div class="modal__popup">

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
        <script src="static/js/single-product.js"></script>
        <script src="static/js/feedback.js"></script>
        <script src="static/js/animation.js"></script>
        <%@include file="loginbs.jsp" %>
    </body>
</html>
