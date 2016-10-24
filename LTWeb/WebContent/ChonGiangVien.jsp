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
            <li role="presentation"><a href="TrangChu.jsp" target="_parent" >Trang chủ</a></li>
            <li role="presentation"><a href="ThongtinKhoaLuan.jsp" target="_parent" >Thông tin khóa luận</a></li>
            <li role="presentation"><a href="ThongTinGiangVien.jsp" target="_parent" >Thông tin giảng viên</a></li>
            <li role="presentation"><a href="ThongtinHoiDong.jsp" target="_parent" >Thông tin hội đồng</a></li>
            <li class="active"><a href="SapXepHoiDong.jsp" target="_parent" >Sắp xếp hội đồng</a></li>
          </ul>
      </div>
      <div class="col-md-9">
        <div align="center">
          <div class="sxtitle" align="center" style="font-size: 20px"><label>Chọn Giảng Viên</label>
          </div>
        </div>
        <div align="center">
            <div style="width: 750px; padding-right: 18px">
                  <table width="700" border="2" cellspacing="2" cellpadding="2">
                      <tr bgcolor="lightblue">
                        <th style="color: #0000FF;font: bold;font-size: 16px;text-align: center" width="460" scope="col">Tên giảng viên</th>
                        <th style="color: #0000FF;font: bold;font-size: 16px;text-align: center" width="80" scope="col">Chủ tịch </th>
                        <th style="color: #0000FF;font: bold;font-size: 16px;text-align: center" width="80" scope="col">Ủy viên</th>
                        <th style="color: #0000FF;font: bold;font-size: 16px;text-align: center" width="80" scope="col">Thư ký</th>
                      </tr>
                  </table>
            </div>
                  <div style="width:720px ; height:125px ; overflow:auto;" align="center">
                    <table width="700" height="180" border="2" cellspacing="2" cellpadding="2" >
                      <tr>
                        <td width="460">GV A</td>
                        <td width="80" align="center"><input type="radio" name="1"></td>
                        <td width="80" align="center"><input type="radio" name="1"></td>
                        <td width="80" align="center"><input type="radio" name="1"></td>
                      </tr>
                      <tr>
                        <td>GV B</td>
                        <td align="center"><input type="radio" name="2"></td>
                        <td align="center"><input type="radio" name="2"></td>
                        <td align="center"><input type="radio" name="2"></td>
                      </tr>
                      <tr>
                        <td>GV C</td>
                        <td align="center"><input type="radio" name="3"></td>
                        <td align="center"><input type="radio" name="3"></td>
                        <td align="center"><input type="radio" name="3"></td>
                      </tr>
                      <tr>
                        <td>GV D</td>
                        <td align="center"><input type="radio" name="4"></td>
                        <td align="center"><input type="radio" name="4"></td>
                        <td align="center"><input type="radio" name="4"></td>
                      </tr>
                    </table>
                    <div><a href="SapXepHoiDong.jsp" type="button" class="btn btn-primary btn-md" style="background-color: blue">Đồng ý</a></div>
                  </div>
        </div>
        <div style="padding-top: 0px">
              <div class="gvtitle1" style="font-size: 16px;width: 900px">
                <label>Đã sắp xếp</label>
                <label style="text-align: right;padding-left: 600px;">Ghi chú:<span class="glyphicon glyphicon-stop" style="background-color: blue;color: blue"></span> Trùng lịch</label>
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
                    <td width="80">A101</td>
                    <td width="100">7h30 24/09/2016</td>
                  </tr>
                  <tr>
                    <td>Hội đồng 2</td>
                    <td>GV d - GV c - GV e</td>
                    <td>A103</td>
                    <td>8h35 25/10/2019</td>
                  </tr>
                  <tr>
                    <td>Hội đồng 3</td>
                    <td>GV d - GV c - GV e</td>
                    <td>A201</td>
                    <td>9h45 01/11/2016</td>
                  </tr>
                  <tr>
                    <td>Hội đồng 4</td>
                    <td>GV d - GV g - GV h</td>
                    <td>A202</td>
                    <td>10h 01/09/2016</td>
                  </tr>
                </table>
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
