<script>
    function dongchitiethoadon() {
        document.getElementById("chitiethoadon").style.display = "none";
    }
</script>


<?php
    $con = mysqli_connect("localhost", "root", "", "doanweb2");

    $title_left = '<div class="title_left">
                      <h3>Bảng Hóa Đơn <small>Chứa thông tin các đơn hàng</small></h3>
                  </div>';
    $thead = '<thead>
                <tr>
                  <th></th>
                  <th>Mã Hóa Đơn<a href="index.php?manage=orders&sort=up&stt=MA_HD">^</a><a href="index.php?manage=orders&sort=down&stt=MA_HD">v</a></th>
                  <th>Mã Nhân Viên<a href="index.php?manage=orders&sort=up&stt=MA_NV">^</a><a href="index.php?manage=orders&sort=down&stt=MA_NV">v</a></th>
                  <th>Mã khách hàng<a href="index.php?manage=orders&sort=up&stt=MA_KH">^</a><a href="index.php?manage=orders&sort=down&stt=MA_KH">v</a></th>
                  <th>Mã Giảm Giá<a href="index.php?manage=orders&sort=up&stt=MA_MGG">^</a><a href="index.php?manage=orders&sort=down&stt=MA_MGG">v</a></th>
                  <th>Địa Chỉ<a href="index.php?manage=orders&sort=up&stt=DIA_CHI">^</a><a href="index.php?manage=orders&sort=down&stt=DIA_CHI">v</a></th>
                  <th>Tình Trạng<a href="index.php?manage=orders&sort=up&stt=TINH_TRANG">^</a><a href="index.php?manage=orders&sort=down&stt=TINH_TRANG">v</a></th>
                  <th>Tiền Giảm Giá<a href="index.php?manage=orders&sort=up&stt=TIEN_GIAM_GIA">^</a><a href="index.php?manage=orders&sort=down&stt=TIEN_GIAM_GIA">v</a></th>
                  <th>Ngày Lập<a href="index.php?manage=orders&sort=up&stt=NGAY_LAP">^</a><a href="index.php?manage=orders&sort=down&stt=NGAY_LAP">v</a></th>
                  <th>Tổng Tiền<a href="index.php?manage=orders&sort=up&stt=TONG_TIEN">^</a><a href="index.php?manage=orders&sort=down&stt=TONG_TIEN">v</a></th>
                </tr>
              </thead>';

    $tr='';


    if (isset($_GET['sort']) && isset($_GET['stt'])) {
        $Up = $_GET['sort'];
        $Stt = $_GET['stt'];

        if ($Up == 'up') {
            $sql = "SELECT * FROM hoadon ORDER BY $Stt ASC";
        } else if ($Up == 'down') {
            $sql = "SELECT * FROM hoadon ORDER BY $Stt DESC";
        }
        mysqli_query($con, "SET NAMES 'utf8");
        $result = mysqli_query($con, $sql);
        if ($result->num_rows > 0) {
            // output dữ liệu trên trang
            while ($row = $result->fetch_assoc()) {
                $trangthai = '';
                if ($row["TINH_TRANG"] == '1') {
                    $trangthai = 'Đã Xử Lý';
                } else if ($row["TINH_TRANG"] == '0') {
                    $trangthai = 'Đang Xử Lý';
                } else {
                    $trangthai = 'Chưa Xử Lý';
                }
                $tr .= '<tr><td><a href="index.php?manage=orders&chitiet=true&mahd=' . $row["MA_HD"] . '&tt='. $row["TINH_TRANG"] .'">Xem</a>
                <a href="index.php?manage=orders&sua=true&mahd=' . $row["MA_HD"] . 
                '&manv=' . $row["MA_NV"] .
                '&makh=' . $row["MA_KH"] .
                '&mgg=' . $row["MA_MGG"] .
                '&dc=' . $row["DIA_CHI"] .
                '&tt=' . $row["TINH_TRANG"] . 
                '&tgg=' . $row["TIEN_GIAM_GIA"] .
                '&tien=' . $row["TONG_TIEN"] .
                '&ngaylap=' . $row["NGAY_LAP"] .'">Sửa' .
                '</a><a href="index.php?manage=orders&xoa=true&mahd='. $row["MA_HD"] .'">Xóa' .
                '</a></td><td>' . $row["MA_HD"] .
                '</td><td>' . $row["MA_NV"] .
                '</td><td>' . $row["MA_KH"] .
                '</td><td>' . $row["MA_MGG"] .
                '</td><td>' . $row["DIA_CHI"] .
                '</td><td>' . $trangthai .
                '</td><td>' . $row["TIEN_GIAM_GIA"] .
                '</td><td>' . $row["NGAY_LAP"] .
                '</td>';

                $sum=0;
                $MAHD=$row["MA_HD"];
                $sql2 = "SELECT SUM(THANH_TIEN) AS TONG FROM chitiethoadon WHERE MA_HD='$MAHD'";
                $result2 = mysqli_query($con, $sql2);
                    if ($result2->num_rows > 0) {
                        // Load dữ liệu lên website
                        while ($row = $result2->fetch_assoc()) {
                            $sum += $row["TONG"];
                        }
                    }
                $tr.='<td>' . $sum .
                '</td></tr>';
                $sql2="UPDATE hoadon SET TONG_TIEN ='$sum' WHERE MA_HD = '$MAHD'";
                mysqli_query($con, $sql2);
            }
        } else {
        echo "0 results";
        }
    }
    if (isset($_GET['ngaybatdau']) && isset($_GET['ngayketthuc'])) {
        $Timestart = $_GET['ngaybatdau'];
        $Timesend = $_GET['ngayketthuc'];
        $sql = "SELECT * FROM hoadon WHERE NGAY_LAP BETWEEN '$Timestart' AND '$Timesend'";
        
        mysqli_query($con, "SET NAMES 'utf8");
        $result = mysqli_query($con, $sql);
        if ($result->num_rows > 0) {
            // output dữ liệu trên trang
            while ($row = $result->fetch_assoc()) {
                $trangthai = '';
                if ($row["TINH_TRANG"] == '1') {
                    $trangthai = 'Đã Xử Lý';
                } else if ($row["TINH_TRANG"] == '0') {
                    $trangthai = 'Đang Xử Lý';
                } else {
                    $trangthai = 'Chưa Xử Lý';
                } 
                $tr .= '<tr><td><a href="index.php?manage=orders&chitiet=true&mahd=' . $row["MA_HD"] . '&tt='. $row["TINH_TRANG"] .'"">Xem</a>
                <a href="index.php?manage=orders&sua=true&mahd=' . $row["MA_HD"] . 
                '&manv=' . $row["MA_NV"] .
                '&makh=' . $row["MA_KH"] .
                '&mgg=' . $row["MA_MGG"] .
                '&dc=' . $row["DIA_CHI"] .
                '&tt=' . $row["TINH_TRANG"] . 
                '&tgg=' . $row["TIEN_GIAM_GIA"] .
                '&tien=' . $row["TONG_TIEN"] .
                '&ngaylap=' . $row["NGAY_LAP"] .'">Sửa' .
                '</a><a href="index.php?manage=orders&xoa=true&mahd='. $row["MA_HD"] .'">Xóa' .
                '</a></td><td>' . $row["MA_HD"] .
                '</td><td>' . $row["MA_NV"] .
                '</td><td>' . $row["MA_KH"] .
                '</td><td>' . $row["MA_MGG"] .
                '</td><td>' . $row["DIA_CHI"] .
                '</td><td>' . $trangthai .
                '</td><td>' . $row["TIEN_GIAM_GIA"] .
                '</td><td>' . $row["NGAY_LAP"] .
                '</td>';

                $sum=0;
                $MAHD=$row["MA_HD"];
                $sql2 = "SELECT SUM(THANH_TIEN) AS TONG FROM chitiethoadon WHERE MA_HD='$MAHD'";
                $result2 = mysqli_query($con, $sql2);
                    if ($result2->num_rows > 0) {
                        // Load dữ liệu lên website
                        while ($row = $result2->fetch_assoc()) {
                            $sum += $row["TONG"];
                        }
                    }
                $tr.='<td>' . $sum .
                '</td></tr>';
                $sql2="UPDATE hoadon SET TONG_TIEN ='$sum' WHERE MA_HD = '$MAHD'";
                mysqli_query($con, $sql2);
            }
        } else {
        echo "0 results";
        }
    } else if (!isset($_GET['sort']) && !isset($_GET['stt']) || isset($_GET['show'])) {
        
        $sql = "select * from hoadon";        
        mysqli_query($con, "SET NAMES 'utf8");
        $result = mysqli_query($con, $sql);
        if ($result->num_rows > 0) {
            // output dữ liệu trên trang
            while ($row = $result->fetch_assoc()) {
                
                $trangthai = '';
                if ($row["TINH_TRANG"] == '1') {
                    $trangthai = 'Đã Xử Lý';
                } else if ($row["TINH_TRANG"] == '0') {
                    $trangthai = 'Đang Xử Lý';
                } else {
                    $trangthai = 'Chưa Xử Lý';
                }
                

                $tr .= '<tr><td><a href="index.php?manage=orders&chitiet=true&mahd=' . $row["MA_HD"] . '&tt='. $row["TINH_TRANG"] .'">Xem</a>
                <a href="index.php?manage=orders&sua=true&mahd=' . $row["MA_HD"] . 
                '&manv=' . $row["MA_NV"] .
                '&makh=' . $row["MA_KH"] .
                '&mgg=' . $row["MA_MGG"] .
                '&dc=' . $row["DIA_CHI"] .
                '&tt=' . $row["TINH_TRANG"] . 
                '&tgg=' . $row["TIEN_GIAM_GIA"] .
                '&tien=' . $row["TONG_TIEN"] .
                '&ngaylap=' . $row["NGAY_LAP"] .'">Sửa' .
                '</a><a href="index.php?manage=orders&xoa=true&mahd='. $row["MA_HD"] .'">Xóa' .
                '</a></td><td>' . $row["MA_HD"] .
                '</td><td>' . $row["MA_NV"] .
                '</td><td>' . $row["MA_KH"] .
                '</td><td>' . $row["MA_MGG"] .
                '</td><td>' . $row["DIA_CHI"] .
                '</td><td>' . $trangthai .
                '</td><td>' . $row["TIEN_GIAM_GIA"] .
                '</td><td>' . $row["NGAY_LAP"] .
                '</td>';
                $sum=0;
                $MAHD=$row["MA_HD"];
                $sql2 = "SELECT SUM(THANH_TIEN) AS TONG FROM chitiethoadon WHERE MA_HD='$MAHD'";
                $result2 = mysqli_query($con, $sql2);
                    if ($result2->num_rows > 0) {
                        // Load dữ liệu lên website
                        while ($row = $result2->fetch_assoc()) {
                            $sum += $row["TONG"];
                        }
                    }
                $tr.='<td>' . $sum .
                '</td></tr>';
                $sql2="UPDATE hoadon SET TONG_TIEN ='$sum' WHERE MA_HD = '$MAHD'";
                mysqli_query($con, $sql2);
            }
        } 
    }
    if(isset($_GET['chitiet'])){
        $Them=$_GET['chitiet'];
        if($Them=='true'){
        require("ShowChiTietHoaDon.php");
        }
    }

    if(isset($_GET['them'])){
        $Them=$_GET['them'];
        if($Them=='true'){
        include("ThemHoaDon.php");
        }
    }
    if(isset($_GET['sua'])){
        $Them=$_GET['sua'];
        if($Them=='true'){
        include("SuaHoaDon.php");
        }
    }
    if(isset($_GET['xoa'])){
        $Them=$_GET['xoa'];
        if($Them=='true'){
        include("XoaHoaDon.php");
        }
    }
    if(isset($_GET['themchitiet']) && isset($_GET['tt'])){
        $Them=$_GET['themchitiet'];
        $tt=$_GET['tt'];
        if($Them=='true' && $tt=="-1"){
            include("ThemChiTietHoaDon.php");
        } else if($Them=='true' && $tt!="-1"){
            echo '<div id="thongbaoxoa">
            <h1>Đơn hàng này đã hoặc đang được xử lý. Vui lòng không thêm chi tiết hóa đơn</h1>
            <button><a href="index.php?manage=orders">OK</a></button>
            </div>';
        }
    }
    if(isset($_GET['suachitiet'])){
        $Them=$_GET['suachitiet'];
        if($Them=='true'){
        include("SuaChiTietHoaDon.php");
        }
    }
    if(isset($_GET['xoachitiet'])){
        $Them=$_GET['xoachitiet'];
        if($Them=='true'){
        include("XoaChiTiet.php");
        }
    }
    $page_title='<div class="page-title">'
                  .$title_left.
                  '<div class="title_right">
                      <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                        <div class="input-group">
                          <form action="XuLyTimKiemHoaDon.php" method="get">
                            <p>Từ Ngày</p>
                            <input type="text" class="form-control" placeholder="yyyy-tt-mm" name="ngaybatdau">
                            <p>Đến Ngày</p>
                            <input type="text" class="form-control" placeholder="yyyy-tt-mm" name="ngayketthuc">
                            <button>Tìm</button>
                          </form>
                        </div>
                        <button><a href="index.php?manage=orders&show=all">Tất cả</a></button>
                        <button><a href="index.php?manage=orders&them=true">Thêm hóa đơn</a></button>
                      </div>
                  </div>
                </div>';
    $row='<div class="row">
            <div class="col-md-8 col-sm-6 col-xs-12" style="width:100%">
              <div class="x_panel">
                <div class="x_title">
                  <h2>Thông Tin Hóa Đơn </h2>
                  <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                      <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Settings 1</a>
                        </li>
                        <li><a href="#">Settings 2</a>
                        </li>
                      </ul>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">
                  <table class="table table-striped">'
                    .$thead.
                    '<tbody>'
                    .$tr.
                    '</tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>';
    $div='<div class="right_col" role="main">
            <div class="">'
            .$page_title.
            '<div class="clearfix"></div>' 
            .$row.'
            </div>
          </div>';
    echo  $div;

    mysqli_close($con);
?>
<script>
    function dongthongbao(){
        docutemt.getElementById("thongbaoxoa").style.display="none";
    }
</script>

<style>
    #thongbaoxoa{
        display: block;
        width: 500px;
        height: 200px;
        position: absolute;
        top: 150px;
        left: 35%;
        color: #73879C;
        background: rgb(230, 228, 228);
        z-index: 200;
        text-align: center;
    }
    #thongbaoxoa button{
        width: 50px;
        height: 50px;
        position: absolute;
        bottom: 20px;
        left: 225px;
    }
</style>