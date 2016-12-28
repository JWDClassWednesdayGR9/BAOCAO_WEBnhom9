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
            <li role="presentation"><a href="DanhSachGiangVien" target="_parent" >Danh sách giảng viên</a></li>
            <li role="presentation"><a href="DanhSachDeTai" target="_parent" >Danh sách đề tài</a></li>
            <li role="presentation"><a href="DanhSachPhongTrong" target="_parent" >Danh sách phòng trống</a></li>
            <li class="active"><a href="QLyTaiKhoan" target="_parent" >Quản lý tài khoản</a></li>
          </ul>
      </div>
      <div class="col-md-9">  
          <form class="ttgv">
              <div class="gvtitle" align="center" style="font-size: 20px"><label>Danh sách tài khoản</label>
              </div>
              <div align="center">
                  <table width="600" border="2" cellspacing="2" cellpadding="2">
                    <tr bgcolor="lightblue" align="center">
                      <th style="color: #0000FF;font: bold;font-size: 18px;text-align: center" width="200" scope="col">Tên tài khoản</th>
                      <th style="color: #0000FF;font: bold;font-size: 18px;text-align: center" width="200" scope="col">Mật khẩu</th>
                      <th style="color: #0000FF;font: bold;font-size: 18px;text-align: center" width="200" scope="col">Quyền</th>
                    </tr>
                  </table>
              </div>
              <div class="table" id="klTable" style="width:600px;height:180px;overflow:auto; margin-left: 113px">
                    <table width="600" height="228" border="2" cellpadding="2" cellspacing="2">
                      <%
				ResultSet ds = (ResultSet)request.getAttribute("danhsach");
				while (ds.next()) {
			%>
                      <tr>
                        <td width="200"><%=ds.getString("username") %></td>
                        <td width="200"><%=ds.getString("password") %></td>
                        <td width="200"><%
                        int temp = Integer.parseInt(ds.getString("quyen"));
                        String Phalse="";
                        if(temp ==1) Phalse="Admin";
                        if(temp ==2) Phalse="Trưởng Khoa";
                        if(temp ==3) Phalse="Giảng Viên";
                        if(temp ==4) Phalse="Sinh Viên";
                        %>   <%=Phalse %></td>
                      </tr>
                      <%} %>
                    </table>
              </div>
              <div class="col-sm-offset-6 col-sm-10">
              		<a href="themtaikhoan.jsp" type="button" class="btn btn-primary btn-sm">Thêm</a>
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
