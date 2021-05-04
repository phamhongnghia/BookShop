<%-- 
    Document   : cart
    Created on : Feb 9, 2021, 11:27:12 PM
    Author     : Pham Hong Nghia
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="bookshop.model.AddCart.*, bookshop.model.Account.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String keyword = request.getParameter("keyword");
%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tìm kiếm sản phẩm <%=keyword%></title>
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
        <link rel="stylesheet" type="text/css" href="static/css/plugins/cart.css">
        <link rel="stylesheet" type="text/css" href="static/css/plugins/searchProduct.css">

        <!-- Modernizr -->
        <script src="static/js/vendor/modernizr-3.5.0.min.js"></script>
    </head>
    <body>
        <%@include file="header.jsp" %>

        <div class="header__banner bg__3">
            <div class="header__link">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a class="text-white" href="">Tìm kiếm sản phẩm</a></li>
                </ol>
            </div>
        </div>

        <!-- Load Product search -->

        <div class="container keyword__product" data-keyword="<%=keyword%>">
            <div class="title__search text-center py-4">
                <h5></h5>
                <hr>
            </div>
            <div class="form__search pb-5">
                <form method="POST" action="search.jsp">
                    <input autocomplete="off" type="text" name="keyword" placeholder="Tìm kiếm sản phẩm "/>
                    <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                </form>
            </div>
            <div class="list__search">
            </div>
            <div class="view__more__shop py-4">
            </div>
        </div>

        <!-- register email for web -->

        <%@include file="registerEmail.jsp" %>


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
        <script src="static/js/searchProduct.js"></script>
        <script src="static/js/animation.js"></script>
        <%@include file="loginbs.jsp" %>
    </body>
</html>