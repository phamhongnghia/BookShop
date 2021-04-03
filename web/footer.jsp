<%-- 
    Document   : footer
    Created on : Feb 2, 2021, 9:09:32 AM
    Author     : Pham Hong Nghia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<footer class="container-fluid pt-4">
    <div class="row">
        <div class="col-sm-6">
            <div class="footer__logo">
                <h5>Book<span>Shop</span></h5>
                <p>Một sản phẩm được thực hiện bởi nhóm 5, sản phẩm là một website bán sách online, giao diện được thiết kế phù hợp với mọi người.</p>
            </div>
            <div class="footer__address">
                <div class="pt-3">
                    <span class="mb-2"><i class="mr-2 fa fa-map-marker" aria-hidden="true"></i> 980 Phan Đình Phùng, TP.Quảng Ngãi </span><br>
                    <span class="mb-2"><i class="mr-2 fa fa-google-plus" aria-hidden="true"></i> phamhongnghia13579@gmail.com </span><br>
                    <span class="mb-2"><i class="mr-2 fa fa-phone-square" aria-hidden="true"></i> 0356156445 </span>
                </div>
            </div>
        </div>
        <div class="col-sm-3 footer__text">
            <div class="offer__us__title pb-3">
                <h4>Về chúng tôi</h4>
            </div>
            <ul>
                <li><a href="#">Trang chủ</a></li>
                <li><a href="#">Liên hệ</a></li>
                <li><a href="#">Chính sách</a></li>
                <li><a href="#">Hình thức thanh toán</a></li>
            </ul>
        </div>
        <div class="col-sm-3 footer__social">
            <div class="offer__us__title pb-3">
                <h4>Mạng xã hội</h4>
            </div>
            <ul>
                <li><a href="">Fanpage</a></li>
                <li><a href="">Instagram</a></li>
                <li><a href="">Twitter</a></li>
                <li><a href="">Youtube</a></li>
                <li><a href="">Gmail</a></li>
            </ul>
        </div>
    </div>
    <div class="container pt-3 pb-2 footer__copyright text-center">
        <span>@Copyright. Pham Hong Nghia 2021</span>
    </div>
</footer>

<div class="alert__cart"></div>

<!-- Popup Search content -->

<div class="container-fluid search">
    <i class="fa fa-times btn close-search" aria-hidden="true"></i>
    <form class="d-flex" action="search.jsp" method="POST">
        <div class="input-group">
            <input autocomplete="off" class="form-control" type="text" placeholder="Tìm kiếm..." onkeyup="fnSearch()" name="keyword">
            <div class="input-group-append">
                <button class="btn" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
            </div>
        </div>
    </form>
    <div class="result__search">
        <h5 class="border-bottom">Kết quả tìm kiếm</h5>
        <div class="list__result">
            <ul>
            </ul>
        </div>
    </div>
</div>
<div class="modal__popup"></div>
