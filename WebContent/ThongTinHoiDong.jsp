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
            <li role="presentation"><a href="frmTruongkhoa.jsp" target="_parent" >Trang chủ</a></li>
            <li role="presentation"><a href="ThongTinKhoaLuan" target="_parent" >Thông tin khóa luận</a></li>
            <li role="presentation"><a href="ThongTinGiangVien" target="_parent" >Thông tin giảng viên</a></li>
            <li class="active"><a href="ThongTinHoiDong.jsp" target="_parent" >Thông tin hội đồng</a></li>
            <li role="presentation"><a href="LoadSapxep" target="_parent" >Sắp xếp hội đồng</a></li>
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
                        <th style="color: #0000FF;font: bold;font-size: 18px;text-align: center" width="130" scope="col">Time</th>
                        <th style="color: #0000FF;font: bold;font-size: 18px;text-align: center" width="140" scope="col">Số thành viên</th>
                        <th style="color: #0000FF;font: bold;font-size: 18px;text-align: center" width="214" scope="col">Ghi chú</th>
                      </tr>
                    </table>

                    </div>
                    <div style="width:900px;height:180px;overflow:auto;" align="center">
                    <table width="900" height="218" border="2" cellspacing="2" cellpadding="2" style="text-align: center">
                    
                    <%
				ResultSet ds = (ResultSet)request.getAttribute("danhsach");
				while (ds.next()) {
			%>
                      <tr>
                        <td width="180"><%=ds.getString("tenHD") %></td>
                        <td width="190"><%=ds.getString("chuyenNganh") %></td>
                        <td width="130"><%=ds.getString("Ngay") %>-<%=ds.getString("Gio") %></td>
                        <td width="140"><%=ds.getString("thanhVien") %></td>
                        <td width="214"><%=ds.getString("TinhTrang") %></td>
                      </tr>
                      <%} %>
                    </table>
                    </div>
                 <div style="float: right">
              		<a href="themhoidong.jsp" type="button" class="btn btn-primary btn-sm">Thêm</a>
              		<!-- <a type="button" class="btn btn-primary btn-sm">Sửa</a> -->
              		<!-- <a type="button" class="btn btn-primary btn-sm">Xóa</a> -->
              		
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
