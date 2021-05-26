<%-- 
    Document   : loginbs
    Created on : Feb 2, 2021, 10:43:55 AM
    Author     : Pham Hong Nghia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Boolean bol = new Boolean(false);
    String error = (String) session.getAttribute("error");
    if (error != null) {
        bol = bol.valueOf(error);
        boolean getbol = bol.booleanValue();
        if (getbol == true) {

%>
<script>
    $(document).ready(function () {
        var mes = "Đăng nhập thành công !";
        messageCart(mes);
        $('.message').fadeIn('slow/500/fast', function () {
            $(this).css({
                'opacity': '1',
                'visibility': 'visible'
            });
            $(this).find('.message__img').css('color', 'var(--green)');
        }).delay(2000).fadeOut('slow/500/fast', function () {
            $('.alert__cart').removeAttr('style');
            $(this).remove();
        });
    });
</script>
<%          session.removeAttribute("error");
        }
    }
%>
<script src="static/js/JSONSearch.js"></script>
