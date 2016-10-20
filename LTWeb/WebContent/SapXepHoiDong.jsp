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
      <img src="spkt_banner.jpg" alt="banner" height="130" >
      <a href="index.jsp"></a>
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
            <li role="presentation"><a href="ThongtinHoiDong.jsp" target="_parent" >Thông tin hội đồng</a></li>
            <li class="active"><a href="SapXepHoiDong.jsp" target="_parent" >Sắp xếp hội đồng</a></li>
          </ul>
      </div>
      <div class="col-md-9">
        <div align="center">
          <div class="sxtitle" align="center" style="font-size: 20px"><label>Sắp xếp hội đồng</label>
          </div>
          <div class="dropdown">
                <select name="hd" class="dropdown-select">
                  <option value="">Chọn hội đồng</option>
                  <option value="1">Hội đồng 1</option>
                  <option value="2">Hội đồng 2</option>
                  <option value="3">Hội đồng 3</option>
                  <option value="3">Hội đồng 4</option>
                  <option value="3">Hội đồng 5</option>
                </select>
          </div>
          <div class="dropdown">
                <select name="phong" class="dropdown-select">
                  <option value="">Chọn phòng</option>
                  <option value="1">Phòng 1</option>
                  <option value="2">Phòng 2</option>
                  <option value="3">Phòng 3</option>
                </select>
          </div>
           <div class="dropdown">
                <select name="tg" class="dropdown-select">
                  <option value="">Chọn thời gian</option>
                  <option value="1">7:30 </option>
                  <option value="2">8:30 </option>
                  <option value="3">9:30 </option>
                  <option value="3">10:30 </option>
                </select>
          </div>
          <div style="border-style: solid;border-width: 2px;width: 250px; background-color: #DDDDDD;"> <a href="ChonGiangVien.jsp">Chọn giảng viên</a></div>
        </div>
        <div  style="padding-top: 20px">
              <div class="gvtitle1" style="font-size: 16px;width: 900px">
                    <label>Đã sắp xếp</label>
                    <label style="text-align: right;padding-left: 600px" >Ghi chú:<span style="background-color : blue ;color : blue"  class="glyphicon glyphicon-stop"></span> Trùng lịch</label>
              </div>
              <table width="900" border="2" cellspacing="2" cellpadding="2">
                  <tr bgcolor="lightblue">
                    <th style="color: #0000FF;font: bold;font-size: 16px;text-align: center" width="100" scope="col">Hội đồng</th>
                    <th style="color: #0000FF;font: bold;font-size: 16px;text-align: center" width="420" scope="col">Thành viên hội đồng </th>
                    <th style="color: #0000FF;font: bold;font-size: 16px;text-align: center" width="80" scope="col">Phòng</th>
                    <th style="color: #0000FF;font: bold;font-size: 16px;text-align: center" width="100" scope="col">Thời gian</th>
                  </tr>
              </table>
        </div>
              <div style="width:900px;height:200px;overflow:auto;" align="center">
                <table width="900" height="180" border="2" cellspacing="2" cellpadding="2" >
                  <tr>
                    <td width="100">Hội đồng 1</td>
                    <td width="420">GV a - GV b - GV d</td>
                    <td width="80">1</td>
                    <td width="100">7:30 </td>
                  </tr>
                  <tr>
                    <td>Hội đồng 2</td>
                    <td>GV d - GV c - GV e</td>
                    <td>1</td>
                    <td>8:30 </td>
                  </tr>
                  <tr>
                    <td>Hội đồng 3</td>
                    <td>GV d - GV c - GV e</td>
                    <td>2</td>
                    <td>9:30 </td>
                  </tr>
                  <tr>
                    <td>Hội đồng 4</td>
                    <td>GV d - GV g - GV h</td>
                    <td>3</td>
                    <td>10:30</td>
                  </tr>

                </table>
              </div>
      </div>
    </div>
</div>
<div> <footer class="footer">
      <div class="container" >
        <p class="text-muted">Ban Quyen (C) 2016 TRUONG DAI HOC SU PHAM KY THUAT HCM  - Phat trien boi K</p>
      </div>
    </footer>
</div>
</body>
</html>