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
            <li class="active"><a href="ThongTinKhoaLuan" target="_parent" >Thông tin khóa luận</a></li>
            <li role="presentation"><a href="ThongTinGiangVien" target="_parent" >Thông tin giảng viên</a></li>
            <li role="presentation"><a href="ThongTinHoiDong" target="_parent" >Thông tin hội đồng</a></li>
            <li role="presentation"><a href="LoadSapxep" target="_parent" >Sắp xếp hội đồng</a></li>
          </ul>
      </div>
      <div class="col-md-9">  
          <div class="ttkl">
              <div class="kltitle" align="center" style="font-size: 20px"><label>Thông tin khóa luận</label>
              </div>
              <div>
                    <table width="900" border="2" cellspacing="2" cellpadding="2">
                      <tr bgcolor="lightblue">
                        <th style="color: #0000FF;font: bold;font-size: 18px;text-align: center" width="270" scope="col">Tên đề tài</th>
                        <th style="color: #0000FF;font: bold;font-size: 18px;text-align: center" width="300" scope="col">Tên GVHD</th>
                        <th style="color: #0000FF;font: bold;font-size: 18px;text-align: center" width="267" scope="col">SV thực hiện</th>
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
                        <td width="270"><%=ds.getString("tenDT") %></td>
                        <td width="300"><%=ds.getString("tenGV") %></td>
                        <td width="267"><%=ds.getString("tenSV") %></td>
                      </tr>
                      <%} %>
                    </table>
              </div>
              <div style="float: right">
              		<a href="trk_themdetai.jsp" type="button" class="btn btn-primary btn-sm">Thêm</a>
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