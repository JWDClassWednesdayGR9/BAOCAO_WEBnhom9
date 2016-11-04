<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>HCMUTE</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css"  href="main.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/javascript.js"></script>
</head>
<body>

<div class="panel panel-default">
    <div class="banner" align="center">
      <img src="spkt_banner.jpg" alt="banner" height="130">
    </div>
    <div class="menutop">
        <ul class="menu">
          <li>
          <a href="doimatkhau.jsp">Đổi mật khẩu</a>
          <a href="index.jsp">Thoát</a>
          </li>
        </ul>
    </div>
</div>
<div class="container">
    <div class="row">
      <div class="col-md-3" style="padding-left: 50px;padding-top: 33px">
           <ul class="nav nav-pills nav-stacked" style="background-color: #DDDDDD">
            <li role="presentation"><a href="frmAdmin.jsp" target="_parent" >Trang chủ</a></li>
            <li class="active"><a href="dsGiangvien.jsp" target="_parent" >Danh sách giảng viên</a></li>
            <li role="presentation"><a href="dsDetai.jsp" target="_parent" >Danh sách đề tài</a></li>
            <li role="presentation"><a href="dsPhongtrong.jsp" target="_parent" >Danh sách phòng trống</a></li>
            <li role="presentation"><a href="qlTaikhoan.jsp" target="_parent" >Quản lý tài khoản</a></li>
          </ul>
      </div>
      <div class="col-md-9">  
          <form class="ttgv">
              <div class="gvtitle" align="center" style="font-size: 20px"><label>Danh sách giảng viên</label>
              </div>
              <div>
                  <table width="900" border="2" cellspacing="2" cellpadding="2">
                    <tr bgcolor="lightblue" align="center">
                      <th style="color: #0000FF;font: bold;font-size: 18px;text-align: center" width="178" scope="col">Tên giảng viên</th>
                      <th style="color: #0000FF;font: bold;font-size: 18px;text-align: center" width="110" scope="col">Học vị</th>
                      <th style="color: #0000FF;font: bold;font-size: 18px;text-align: center" width="210" scope="col">Đơn vị công tác</th>
                      <th style="color: #0000FF;font: bold;font-size: 18px;text-align: center" width="176" scope="col">Chức vụ</th>
                      <th style="color: #0000FF;font: bold;font-size: 18px;text-align: center" width="180" scope="col">Bộ môn giảng dạy</th>
                    </tr>
                  </table>
              </div>
              <div class="table" id="klTable" style="width:900px;height:180px;overflow:auto;" align="center">
                    <table width="900" height="228" border="2" cellpadding="2" cellspacing="2">
                      <tr>
                        <td width="178">GV 1</td>
                        <td width="110">Thạc sỹ</td>
                        <td width="210">Khoa CNTT</td>
                        <td width="176">Giảng viên</td>
                        <td width="180">Bộ môn a</td>
                      </tr>
                      <tr>
                        <td>GV 2</td>
                        <td>Tiến sỹ</td>
                        <td>Khoa CNTT</td>
                        <td>Trưởng bộ môn A</td>
                        <td>Bộ môn a</td>
                      </tr>
                      <tr>
                        <td>GV 3</td>
                        <td>PGS.Ts</td>
                        <td>Khoa CNTT</td>
                        <td>Trưởng bộ nôn B</td>
                        <td>Bộ môn b</td>
                      </tr>
                      <tr>
                        <td>GV 4</td>
                        <td>GS.Ts</td>
                        <td>Khoa CNTT</td>
                        <td>Trưởng bộ môn C</td>
                        <td>Bộ môn c</td>
                      </tr>
                      <tr>
                        <td>GV 5</td>
                        <td>Thạc sỹ</td>
                        <td>Khoa CNTT</td>
                        <td>Giảng viên</td>
                        <td>Bộ môn e</td>
                      </tr>
                    </table>
              </div>
              <div style="float: right">
              		<a href="themgiangvien.jsp" type="button" class="btn btn-primary btn-sm">Thêm</a>
              		<a type="button" class="btn btn-primary btn-sm">Sửa</a>
              		<a type="button" class="btn btn-primary btn-sm">Xóa</a>
              		<a type="button" class="btn btn-primary btn-sm">Cập nhật</a>
              </div>
           </form>
          </div>
      </div>
    </div>
</div>
      <footer class="footer">
          <div class="container" >
            <p style="color: blue" class="text-muted">Ban Quyen (C) 2016 TRUONG DAI HOC SU PHAM KY THUAT HCM  - Phat trien boi K</p>
          </div>
      </footer> 
</body>
</html>
