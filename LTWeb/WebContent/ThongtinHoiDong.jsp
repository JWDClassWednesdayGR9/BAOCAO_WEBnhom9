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
  <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="paneltop">
    <div class="banner" align="center">
      <img src="spkt_banner.jpg" alt="banner" height="130">
    </div>
    <div class="menutop">
        <ul class="menu">
          <li>
          <a href="index.jsp">Thoát</a>
          </li>
        </ul>
    </div>
</div>
  
<div class="container">
    <div class="row">
      <div class="col-md-3" style="padding-left: 50px;padding-top: 10px">
           <ul class="nav nav-pills nav-stacked" style="background-color: #DDDDDD">
            <li role="presentation"><a href="TrangChu.jsp" target="_parent" >Trang chủ</a></li>
            <li role="presentation"><a href="ThongtinKhoaLuan.jsp" target="_parent" >Thông tin khóa luận</a></li>
            <li role="presentation"><a href="ThongTinGiangVien.jsp" target="_parent" >Thông tin giảng viên</a></li>
            <li class="active"><a href="ThongtinHoiDong.jsp" target="_parent" >Thông tin hội đồng</a></li>
            <li role="presentation"><a href="SapXepHoiDong.jsp" target="_parent" >Sắp xếp hội đồng</a></li>
          </ul>
      </div>
      <div class="col-md-9">  
          <div class="tthd">
              <div class="hdtitle" align="center" style="font-size: 20px"><label>Thông tin hội đồng</label>
                    </div>
                    <div>
                    <table width="900" border="2" cellspacing="2" cellpadding="2">
                      <tr bgcolor="lightblue">
                        <th style="color: #0000FF;font: bold;font-size: 18px;text-align: center" width="180" scope="col">Tên hội đồng</th>
                        <th style="color: #0000FF;font: bold;font-size: 18px;text-align: center" width="190" scope="col">Bộ môn thực hiện</th>
                        <th style="color: #0000FF;font: bold;font-size: 18px;text-align: center" width="130" scope="col">Tuần thực hiện</th>
                        <th style="color: #0000FF;font: bold;font-size: 18px;text-align: center" width="140" scope="col">Số lượng thành viên</th>
                        <th style="color: #0000FF;font: bold;font-size: 18px;text-align: center" width="214" scope="col">Ghi chú</th>
                      </tr>
                    </table>

                    </div>
                    <div style="width:900px;height:200px;overflow:auto;" align="center">
                    <table width="900" height="218" border="2" cellspacing="2" cellpadding="2" >
                      <tr>
                        <td width="180">Hội đồng 1</td>
                        <td width="190">Bộ môn 1</td>
                        <td width="130">30</td>
                        <td width="140">5</td>
                        <td width="214">  Đã sắp xếp;</td>
                      </tr>
                      <tr>
                        <td>Hội đồng 2</td>
                        <td>Bộ môn 2</td>
                        <td>30</td>
                        <td>7</td>
                        <td>Đã sắp xếp;</td>
                      </tr>
                      <tr>
                        <td>Hội đồng 3</td>
                        <td>Bộ môn 3</td>
                        <td>30</td>
                        <td>5</td>
                        <td>Đã sắp xếp;</td>
                      </tr>
                      <tr>
                        <td>Hội đồng 4</td>
                        <td>Bộ môn 4</td>
                        <td>30</td>
                        <td>6</td>
                        <td>Đã sắp xếp;</td>
                      </tr>
                        <tr>
                        <td>Hội đồng 5</td>
                        <td>Bộ môn 5</td>
                        <td>30</td>
                        <td>6</td>
                        <td>&nbsp;</td>
                      </tr>
                    </table>
                    </div>
          </div>
      </div>
    </div>
</div>
<div>
 <footer class="footer">
      <div class="container">
        <p class="text-muted">Ban Quyen (C) 2016 TRUONG DAI HOC SU PHAM KY THUAT HCM  - Phat trien boi K</p>
      </div>
    </footer></div>

</body>
</html>
