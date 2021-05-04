<%-- 
    Document   : index
    Created on : Jan 24, 2021, 8:41:06 PM
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
        <link rel="stylesheet" type="text/css" href="static/css/plugins/product.css">

        <!-- Modernizr -->
        <script src="static/js/vendor/modernizr-3.5.0.min.js"></script>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="header__banner bg__1">
            <div class="header__title">
                <h5>Book<span>Shop</span></h5>
                <label>Mua <span>ngay</span></label>
                <label>Sách bạn <span>yêu thích</span></label>
                <label>Tại <span>đây</span></label>
                <a href="#sale_pr">Xem ngay <i class="fa fa-arrow-right ml-2" aria-hidden="true"></i></a>
            </div>
        </div>

        <!-- Slide sale product -->
        <div class="container py-5" id="sale_pr">
            <div class="title__wn sale_pr text-center pb-3">
                <h4>Sản phẩm <span>giảm giá</span></h4>
                <p>Những cuốn sách hay nên đọc. Sách được viết bởi những tác giả trẻ, những bộ óc văn học vĩ đại nhất, họ có những chủ đề, nhân vật, kinh nghiệm, cảm xúc và quan điểm sống luôn liên quan đến mỗi người chúng ta.</p>
            </div>
            <div class="list__sale py-3">
            </div>
        </div>

        <!-- register email for web -->
        <%@include file="registerEmail.jsp" %>
        

        <div class="container py-4">
            <div class="title__wn sale_pr text-center pb-3">
                <h4>Tất cả <span>Sản phẩm</span></h4>
                <p>Có rất nhiều các Top sách hay nổi tiếng trên thế giới mà các bạn nên đọc. Chúng tôi sẽ giới thiệu những cuốn sách mà bút lực của người viết đã vượt qua được giới hạn thể loại và đối tượng độc giả ban đầu họ muốn nhắm đến, chính vì vậy các sách hay này xứng đáng để mọi người tìm đọc.</p>
            </div>
            <div class="menu__product py-3">
                <ul>
                    <li><a class="active__menu" href="#ALL" onclick="btnProduct(this)">Tất cả</a></li>
                    <li><a href="#STN" onclick="btnProduct(this)">Sách văn học</a></li>
                    <li><a href="#SNN" onclick="btnProduct(this)">Sách nước ngoài</a></li>
                    <li><a href="#OTHER" onclick="btnProduct(this)">Khác</a></li>
                </ul>
            </div>
            <div class="all__product py-4"></div>
            <div class="view__more">
            </div>
        </div>

        <%@include file="major.jsp" %>
        <%@include file="footer.jsp" %>
        <div class="modal__popup"></div>

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
        <%@include file="loginbs.jsp" %>
    </body>
</html>
