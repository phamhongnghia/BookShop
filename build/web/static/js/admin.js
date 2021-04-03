$(document).ready(function () {
    loadAllUser();
    loadBill();
    $('.content__title h5').text("Trang chủ");
    $('.admin__list ul li a').click(function () {
        clickAdmin(this);
    });
    var ctx = document.getElementById('myChart').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Văn học', 'Tiểu sử hồi ký', 'Kinh tế - Tâm lý học', 'Quản lý kinh doanh', 'Khoa học viễn tưởng', 'Văn phòng phẩm'],
            datasets: [{
                    label: '# of Votes',
                    data: [21, 56, 13, 15, 22, 35],
                    backgroundColor: [
                        'rgba(255, 99, 132, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(255, 206, 86, 0.2)',
                        'rgba(75, 192, 192, 0.2)',
                        'rgba(153, 102, 255, 0.2)',
                        'rgba(255, 159, 64, 0.2)'
                    ],
                    borderColor: [
                        'rgba(255, 99, 132, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)',
                        'rgba(75, 192, 192, 1)',
                        'rgba(153, 102, 255, 1)',
                        'rgba(255, 159, 64, 1)'
                    ],
                    borderWidth: 1
                }]
        },
        options: {
            scales: {
                yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
            }
        }
    });
});
function clickAdmin(obj) {
    $('.content__title h5').empty();
    $('.admin__list ul li a').removeClass('admin__active');
    $(obj).addClass('admin__active');
    var url = $(obj).attr('href');
    $('.admin__item').hide();
    $(url).show();
    for (var i = 0; i < tab.length; i++) {
        if (tab[i].code == url) {
            $('.content__title h5').text(tab[i].ten);
        }
    }
}
function loadAllUser(){
    $('.list__user table tbody').empty();
    var arr = new Array();
    $.ajax({
        url: "ListUser",
        method: "GET"
    }).done(function (response){
       $.each(response, function (index, item){
          arr.push(item); 
       });
       for(var i = 0 ; i < arr.length ; i++){
            var el = $(`
                <tr>
                    <td>${arr[i].tendangnhap}</td>
                    <td class="w-auto">${arr[i].hoten}</td>
                    <td>${arr[i].email}</td>
                    <td>${arr[i].sodienthoai}</td>
                    <td>${arr[i].diachi}</td>
                    <td>${arr[i].quyentruycap}</td>
                    <td class="text-center"><a class="btn btn__view" href="#">Ban</a></td>
                </tr>
            `);
            $('.list__user table tbody').append(el);
       }
    });
}
function loadBill(){
    const fomatter = new Intl.NumberFormat('vi-VI', {style: 'currency', currency: 'VND', minimumFractionDigits: 0});
    $('.list__bill table tbody').empty();
    $.ajax({
        url: "ListBill",
        method: "GET"
    }).done(function (response){
        $.each(response, function (index, item){
           var el = $(`
                <tr>
                    <td>${item.mahd}</td>
                    <td>${item.tendangnnhap}</td>
                    <td>${item.masp}</td>
                    <td>${item.tensp}</td>
                    <td>${item.soluong}</td>
                    <td>${fomatter.format(item.thanhtien)}</td>
                    <td class="text-center"><a class="btn btn__view" href="#">Xem</a></td>
                </tr>
           `);
            $('.list__bill table tbody').append(el);
        });
    });
}
var tab = [
    {
        code: "#home",
        ten: "Trang chủ"
    },
    {
        code: "#mn_product",
        ten: "Quản lý sản phẩm"
    },
    {
        code: "#mn_bill",
        ten: "Quản lý hóa đơn"
    },
    {
        code: "#mn_user",
        ten: "Quản lý khách hàng"
    },
    {
        code: "#change",
        ten: "Thay đổi thông tin"
    }
]