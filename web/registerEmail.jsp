<%-- 
    Document   : registerEmail
    Created on : Mar 4, 2021, 8:23:42 PM
    Author     : Pham Hong Nghia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- register email for web -->

<div class="container-fluid py-4 with__us">
    <div class="row">
        <div class="col-sm-6 offer__us">
            <div class="offer__us__title text-center pb-3">
                <h4>Đăng ký <span>nhận tin</span></h4>
                <p>Đăng ký các bản tin của chúng tôi ngay bây giờ và luôn cập nhật các bộ sưu tập mới, các lookbook mới nhất và các ưu đãi độc quyền</p>
            </div>
            <div class="offer__us__input">
                <form action="registerEmailServ" method="POST">
                    <input type="email" name="email" placeholder="Nhập email của bạn" required>
                    <input type="submit" name="submit" value="Đăng ký">
                </form>
            </div>
        </div>
    </div>
</div>
