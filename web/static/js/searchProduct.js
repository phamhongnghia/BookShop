/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function (){
    var n = 8;
    loadSearch(n);
});
function loadSearch(n){
    let dem = 0;
    let sum = 0;
    $('.list__search').empty();
    $('.view__more__shop').empty();
    var keyword = document.querySelector('.keyword__product').getAttribute('data-keyword');
    $.ajax({
        url: "ProductServ",
        method: "GET"
    }).done(function (response){
        let arr = new Array();
        let result = new Array();
        $.each(response, function (index, item){
           arr.push(item); 
        });
        for(let i of arr){
            if(i.tensp.toLowerCase().includes(keyword)){
                result.push(i);
            }
        }
        if(keyword == "" || result.length == 0){
            document.querySelector('.title__search h5').innerHTML = 'Tìm kiếm sản phẩm !';
            $('.list__search').text("Không thể tìm thấy sản phẩm !");
        }else{
            for(let i = 0 ; i < result.length ; i++){
                if(dem == n){
                    continue;
                }else{
                    var el = $(`
                        <div class="product__woo">
                            <div class="product__img">
                                <img src="static/image/product/big_img/${result[i].hinhanh}" alt="">
                            </div>
                            <div class="product__text pt-2 text-center">
                                <a href="single-product.jsp?masp=${result[i].masp}">${result[i].tensp}</a>
                            </div>
                            <div class="product__cart">
                                <i class="fa fa-shopping-cart" onclick="addCart('${result[i].masp}')" aria-hidden="true"></i>
                            </div>
                            <div class="product__price">
                                <label>${fomatter.format(result[i].giagoc - (result[i].giagoc * result[i].giamgia) / 100)}</label>
                                <span class="mx-2">${fomatter.format(result[i].giagoc)}</span>
                                <span class="mx-2">${result[i].giamgia}%</span>
                            </div>
                        </div>
                    `);
                    $('.list__search').append(el);
                    dem++;
                    sum = sum + 1;
                }
            }
            document.querySelector('.title__search h5').innerHTML = result.length+' sản phẩm với từ khóa "'+keyword+'" !';
        }
        if (n > sum) {
            $('.view__more__shop').empty();
        }else{
            if(sum > 0){
                var view = $(`
                    <button onclick="viewMore(${n})">xem thêm</button>
                `);
                $('.view__more__shop').append(view);
            }
        }
    });
}
function viewMore(n){
    n = n + 8;
    loadSearch(n);
}