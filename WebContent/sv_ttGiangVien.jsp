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
<font ><marquee direction="left" scrollamount="15" style="background:white"><font color = “#3300FF”><big><font size = 5px>CHÀO MỪNG ĐẾN VỚI WEBSITE SẮP XẾP GIẢNG VIÊN CHO HỘI ĐỒNG BẢO VỆ KLTN- Developed by G9</big></marquee></font> 
<div class="container">
    <div class="row">
      <div class="col-md-3" style="padding-left: 50px;padding-top: 10px">
           <ul class="nav nav-pills nav-stacked" style="background-color: #DDDDDD">
            <li role="presentation"><a href="frmSinhVien.jsp" target="_parent" >Trang chủ</a></li>
            <li role="presentation"><a href="ThongTinDeTaiSV" target="_parent" >Thông tin đề tài</a></li>
            <li class="active"><a href="ThongTinGV_SV" target="_parent" >Thông tin giảng viên</a></li>
          </ul>
      </div>
      <div class="col-md-9">  
          <div class="ttgv">
              <div class="gvtitle" align="center" style="font-size: 20px"><label>Thông tin giảng viên</label>
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
                    <table width="900" height="228" border="2" cellpadding="2" cellspacing="2" style="text-align: center">
                    <%
				ResultSet ds = (ResultSet)request.getAttribute("danhsach");
				while (ds.next()) {
			%>
                      <tr>
                        <td width="178"><%=ds.getString("tenGV") %></td>
                        <td width="110"><%=ds.getString("hocVi") %></td>
                        <td width="210"><%=ds.getString("donviCT") %></td>
                        <td width="176"><a><%=ds.getString("vaiTro") %></a></td>
                        <td width="180"><%=ds.getString("boMon") %></td>
                      </tr>
                      <%} %>
                      
                    </table>
              </div>
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
