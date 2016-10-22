<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="">
<head>
  <title>HCMUTE</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css"  href="main.css">
  <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="paneltop">
    <div class="banner" align="center">
      <img src="spkt_banner.jpg" alt="banner" height="130" align="center">
    </div>
    <div class="menutop">
        <ul class="menu">
          <li>
          <a href="index.jsp">Thoát</a>
          </li>
          <li>
          <a href="doimatkhau.jsp">Đổi mật khẩu</a>
          </li>
        </ul>
    </div>
</div>
  
<div class="container">
    <div class="row">
      <div class="col-md-3" style="padding-left: 50px;padding-top: 10px">
           <ul class="nav nav-pills nav-stacked" style="background-color: #DDDDDD">
            <li class="active"><a href="trangchu.jsp" target="_parent" >Trang chủ</a></li>
            <li role="presentation"><a href="ThongTinKhoaLuan.jsp" target="_parent" >Thông tin khóa luận</a></li>
            <li role="presentation"><a href="ThongTinGiangVien.jsp" target="_parent" >Thông tin giảng viên</a></li>
            <li role="presentation"><a href="ThongTinHoiDong.jsp" target="_parent" >Thông tin hội đồng</a></li>
            <li role="presentation"><a href="SapXepHoiDong.jsp" target="_parent" >Sắp xếp hội đồng</a></li>
          </ul>
      </div>
      <div class="col-md-9">
        <div style="padding-top: 10px">
          <TABLE width="900" border="2" cellspacing="2" cellpadding="2">
                <tr align="center" bgcolor="lightblue">
                  <td style="color: #0000FF ; font: bold; font-size: 20px">Thông báo</td>
                </tr>
          </TABLE>
        </div>
        <div class="table" style="width:900px;height:200px;overflow:auto;" align="center"> 
              <table class="tbtable" cellpadding="2" cellspacing="2" width="900" border="2">
                <tr>
                    <td bgcolor="lightpink"> Thông báo 1</td>
                </tr>
                <tr>
                  <td>Nội dung</td>
                </tr>
                <tr>
                    <td bgcolor="lightpink"> Thông báo 2</td>
                </tr>
                <tr>
                  <td>Nội dung</td>
                </tr>
                <tr>
                    <td bgcolor="lightpink"> Thông báo 3</td>
                </tr>
                <tr>
                  <td>Nội dung</td>
                </tr>
                 <tr>
                    <td bgcolor="lightpink"> Thông báo 4</td>
                </tr>
                <tr>
                  <td>Nội dung</td>
                </tr>
                <tr>
                  <td bgcolor="lightpink"> Thông báo 5</td>
                </tr>
                <tr>
                  <td>Nội dung</td>
                </tr>
              </table>
          </div>       
      </div>
    </div>
</div>
<div class="bottommenu">
        <div class="info_ver"><a href="#">Ban Quyen (C) 2016 TRUONG DAI HOC SU PHAM KY THUAT HCM  - Phat trien boi K </a></div></div>
</body>
</html>
