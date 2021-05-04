$(document).ready(function () {
    loadData();
});

// BIẾN KHỞI TẠO.

const fomatter = new Intl.NumberFormat('vi-VI', {style: 'currency', currency: 'VND', minimumFractionDigits: 0});
var dem = 0;
// LOAD DỮ LIỆU

function loadData() {

    var demCart = 0;
    $('.cart__average').text(demCart);
    // LOAD SÁCH GIẢM GIÁ.
    var list = new Array();
    $.ajax({
        url: "ProductServ",
        method: "GET"
    }).done(function (response) {
        $.each(response, function (index, item) {
            list.push(item);
        });
        $('.list__sale').empty();
        for (var i = 0; i < list.length; i++) {
            if (dem == 8) {
                continue;
            } else {
                if (list[i].giamgia >= 50) {
                    var el = $(`
                        <div class="product__woo">
                            <div class="product__img">
                                <img src="static/image/product/big_img/${list[i].hinhanh}" alt="">
                            </div>
                            <div class="product__text pt-2 text-center">
				<a href="single-product.jsp?masp=${list[i].masp}  ">${list[i].tensp}</a>
                            </div>
                            <div class="product__cart">
				<i class="fa fa-shopping-cart" onclick="addCart('${list[i].masp}')" aria-hidden="true"></i>
                            </div>
                            <div class="product__price">
				<label>${fomatter.format(list[i].giagoc - (list[i].giagoc * list[i].giamgia) / 100)}</label>
				<span class="mx-2">${fomatter.format(list[i].giagoc)}</span>
				<span class="mx-2">${list[i].giamgia}%</span>
                            </div>
			</div>
                    `);
                    $('.list__sale').append(el);
                    dem++;
                }
            }
        }
        $('.list__sale').slick({
            slidesToShow: 4,
            infinite: false
        });
    }).fail(function (response) {
        alert("Lỗi load dữ liệu");
    });
    dem = 0;
    var url = window.location.href.split();
    url[1] = "#ALL";
    loadAll(url[1], 8);
    $('.all__product').addClass('fadeShow');

    // Load major producer

    $('.author__major').empty();
    for (var i = 0; i < major.length; i++) {
        if (dem == 4) {
            continue;
        } else {
            var el = $(`
		<div class="col-sm-3">
                    <div class="author__img text-center">
			<img src="static/image/producer/${major[i].img}" alt="">
                    </div>
                    <div class="author__text py-2 text-center ">
			<label>${major[i].tacgia}</label>
                    </div>
                    <div class="author__research text-center">
			<a href="#">xem chi tiết</a>
                    </div>
		</div>
            `);
            $('.author__major').append(el);
            dem++;
        }
    }
    dem = 0;

}
function loadAll(obj, n) {

    var total = 0;
    //LOAD TẤT CẢ SẢN PHẨM
    $('.view__more').empty();
    var list = new Array();
    $.ajax({
        url: "ProductServ",
        method: "GET"
    }).done(function (response) {
        $.each(response, function (index, item) {
            list.push(item);
        });
        $('.all__product').removeClass('fadeShow');
        $('.all__product').empty();
        if (obj == "#ALL") {
            dem = 0;
            for (var i = 0; i < list.length; i++) {
                if (dem == n) {
                    continue;
                } else {
                    if (list[i].giamgia >= 20) {
                        var el = $(`
                            <div class="product__woo">
                                <div class="product__img">
                                    <img src="static/image/product/big_img/${list[i].hinhanh}" alt="">
                                </div>
                                <div class="product__text pt-2 text-center">
                                    <a href="single-product.jsp?masp=${list[i].masp}">${list[i].tensp}</a>
                                </div>
                                <div class="product__cart">
                                    <i class="fa fa-shopping-cart" onclick="addCart('${list[i].masp}')" aria-hidden="true"></i>
                                </div>
                                <div class="product__price">
                                    <label>${fomatter.format(list[i].giagoc - (list[i].giagoc * list[i].giamgia) / 100)}</label>
                                    <span class="mx-2">${fomatter.format(list[i].giagoc)}</span>
                                    <span class="mx-2">${list[i].giamgia}%</span>
                                </div>
                            </div>
                        `);
                        $('.all__product').append(el);
                        $('.all__product').addClass('fadeShow');
                        dem++;
                        total = total + 1;
                    }
                }
            }
        } else {
            if (obj == "#STN") {
                for (var i = 0; i < list.length; i++) {
                    if (dem == n) {
                        continue;
                    } else {
                        if (list[i].maloai == "VH_TN") {
                            let thanhtien = 0;
                            let giagoc = 0;
                            if (list[i].giamgia == 0) {
                                list[i].giamgia = "";
                                thanhtien = fomatter.format(list[i].giagoc);
                                giagoc = "";
                            } else {
                                thanhtien = fomatter.format(list[i].giagoc - (list[i].giagoc * list[i].giamgia) / 100);
                                list[i].giamgia = list[i].giamgia + "%";
                                giagoc = fomatter.format(list[i].giagoc);
                            }
                            var el = $(`
                                <div class="product__woo">
                                    <div class="product__img">
                                        <img src="static/image/product/big_img/${list[i].hinhanh}" alt="">
                                    </div>
                                    <div class="product__text pt-2 text-center">
                                        <a href="single-product.jsp?masp=${list[i].masp}">${list[i].tensp}</a>
                                    </div>
                                    <div class="product__cart">
                                        <i class="fa fa-shopping-cart" onclick="addCart('${list[i].masp}')" aria-hidden="true"></i>
                                    </div>
                                    <div class="product__price">
                                        <label>${thanhtien}</label>
                                        <span class="giasp mx-2">${giagoc}</span>
                                        <span class="giasp mx-2">${list[i].giamgia}</span>
                                    </div>
                                </div>
                            `);
                            $('.all__product').append(el);
                            $('.all__product').addClass('fadeShow');
                            dem++;
                            total = total + 1;
                        }
                    }
                }
                let getGiaSP = document.getElementsByClassName("giasp");
                for (let i = 0; i < getGiaSP.length; i++) {
                    if (getGiaSP[i].innerHTML == "") {
                        getGiaSP[i].style.display = "none";
                    }
                }
            } else {
                if (obj == "#SNN") {
                    for (var i = 0; i < list.length; i++) {
                        if (dem == n) {
                            continue;
                        } else {
                            if (list[i].maloai == "VH_NN" || list[i].maloai == "KH_VT") {
                                let thanhtien = 0;
                                let giagoc = 0;
                                if (list[i].giamgia == 0) {
                                    list[i].giamgia = "";
                                    thanhtien = fomatter.format(list[i].giagoc);
                                    giagoc = "";
                                } else {
                                    thanhtien = fomatter.format(list[i].giagoc - (list[i].giagoc * list[i].giamgia) / 100);
                                    list[i].giamgia = list[i].giamgia + "%";
                                    giagoc = fomatter.format(list[i].giagoc);
                                }
                                var el = $(`
                                    <div class="product__woo">
                                        <div class="product__img">
                                            <img src="static/image/product/big_img/${list[i].hinhanh}" alt="">
                                        </div>
                                        <div class="product__text pt-2 text-center">
                                            <a href="single-product.jsp?masp=${list[i].masp}">${list[i].tensp}</a>
                                        </div>
                                        <div class="product__cart">
                                            <i class="fa fa-shopping-cart" onclick="addCart('${list[i].masp}')" aria-hidden="true"></i>
                                        </div>
                                        <div class="product__price">
                                            <label>${thanhtien}</label>
                                            <span class="giasp mx-2">${giagoc}</span>
                                            <span class="giasp mx-2">${list[i].giamgia}</span>
                                        </div>
                                    </div>
                                `);
                                $('.all__product').append(el);
                                $('.all__product').addClass('fadeShow');
                                let check = document.getElementsByClassName("giasp");
                                dem++;
                                total = total + 1;
                            }
                        }
                    }
                    let getGiaSP = document.getElementsByClassName("giasp");
                    for (let i = 0; i < getGiaSP.length; i++) {
                        if (getGiaSP[i].innerHTML == "") {
                            getGiaSP[i].style.display = "none";
                        }
                    }
                } else {
                    if (obj == "#OTHER") {
                        for (var i = 0; i < list.length; i++) {
                            if (dem == n) {
                                continue;
                            } else {
                                if (list[i].maloai == "TSHK" || list[i].maloai == "TLH" || list[i].maloai == "TNHI") {
                                    let thanhtien = 0;
                                    let giagoc = 0;
                                    if (list[i].giamgia == 0) {
                                        list[i].giamgia = "";
                                        thanhtien = fomatter.format(list[i].giagoc);
                                        giagoc = "";
                                    } else {
                                        thanhtien = fomatter.format(list[i].giagoc - (list[i].giagoc * list[i].giamgia) / 100);
                                        list[i].giamgia = list[i].giamgia + "%";
                                        giagoc = fomatter.format(list[i].giagoc);
                                    }
                                    var el = $(`
                                        <div class="product__woo">
                                            <div class="product__img">
                                                <img src="static/image/product/big_img/${list[i].hinhanh}" alt="">
                                            </div>
                                            <div class="product__text pt-2 text-center">
                                                <a href="single-product.jsp?masp=${list[i].masp}">${list[i].tensp}</a>
                                            </div>
                                            <div class="product__cart">
                                                <i class="fa fa-shopping-cart" onclick="addCart('${list[i].masp}')" aria-hidden="true"></i>
                                            </div>
                                            <div class="product__price">
                                                <label>${thanhtien}</label>
                                                <span class="giasp mx-2">${giagoc}</span>
                                                <span class="giasp mx-2">${list[i].giamgia}</span>
                                            </div>
                                        </div>
                                    `);
                                    $('.all__product').append(el);
                                    $('.all__product').addClass('fadeShow');
                                    dem++;
                                    total = total + 1;
                                }
                            }
                        }
                        let getGiaSP = document.getElementsByClassName("giasp");
                        for (let i = 0; i < getGiaSP.length; i++) {
                            if (getGiaSP[i].innerHTML == "") {
                                getGiaSP[i].style.display = "none";
                            }
                        }
                    }
                }
            }
        }
        if (n > total) {
            $('.view__more').empty();
        } else {
            if (total > 0) {
                var view = $(`<button onclick="viewMoreIndex('${obj}',${n})">xem thêm</button>`);
                $('.view__more').append(view);
            } else {
                $('.view__more').empty();
            }
        }
    }).fail(function (response) {
        alert("Lỗi load dữ liệu !");
    });
    dem = 0;
}
function btnProduct(obj) {
    var url = $(obj).attr('href');
    dem = 0;
    loadAll(url, 8);
}
function loadCategories() {
    var sum = 0;
    $.ajax({
        url: "ListType",
        method: "GET"
    }).done(function (response) {
        var title = new Array();
        var list = new Array();
        $.each(response, function (index, item) {
            title.push(item);
        });
        $.ajax({
            url: "ProductServ",
            method: "GET"
        }).done(function (res) {
            $.each(res, function (index, item) {
                list.push(item);
            });
            for (var i = 0; i < title.length; i++) {
                for (var j = 0; j < list.length; j++) {
                    if (list[j].maloai == title[i].maloai) {
                        sum = sum + 1;
                    }
                }
                var getCate = document.getElementById(title[i].maloai).href = "shop-grid.jsp?t=" + title[i].maloai;
                var node = document.getElementById(title[i].maloai).children;
                node[0].innerHTML = "(" + sum + ")";
                sum = 0;
            }
        });
    }).fail(function (response) {
        alert("Lỗi dữ liệu !");
    });
}
function closeModal() {
    $(".modal__popup").fadeOut('slow', function () {
        $(this).removeAttr('style');
        $(this).empty();
    });
}

function viewMoreIndex(obj, n) {
    n = n + 8;
    dem = 0;
    loadAll(obj, n);
}