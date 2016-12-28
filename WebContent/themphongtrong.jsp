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
          <a href="DanhSachPhongTrong">Trở về</a>
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
            <li role="presentation"><a href="#" target="_parent" >Danh sách phòng trống</a></li>
            <li role="presentation"><a href="qlTaikhoan.jsp" target="_parent" >Quản lý tài khoản</a></li>
          </ul>
      </div>
      <div class="col-md-7" style="margin-left: 40px;padding-top: 30px">  
      <li style="color: red; text-align: center"><%String err = "";
			err = (String) request.getAttribute("err");%><%=err %></li>
          <form class="form-horizontal" method="post" action="ThemPhongTrong">
          	    <div class="form-group">
				    <label class="control-label col-sm-4" for="text">Tên phòng:</label>
				    <div class="col-sm-8">
				      <input name="tenPhong" type="text" class="form-control" id="ten" placeholder="nhập tên">
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="control-label col-sm-4" for="text">Thời gian:</label>
				    <div class="col-sm-8"> 
				      <input name="Gio" type="text" class="form-control" id="hocvi" placeholder=" nhập time">
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="control-label col-sm-4" for="text">Ngày:</label>
				    <div class="col-sm-8"> 
				      <input name="Ngay"type="text" class="form-control" id="donvi" placeholder=" nhập Day ">
				    </div>
				  </div>				  
				  <div class="form-group"> 
				    <div class="col-sm-offset-6 col-sm-10">
				      <input type="submit" id="okbtn"  value="Thêm" class="btn btn-primary btn-sm" background-color: blue"/>
		                <input type="reset" id="okbtn"  value="Nhập Lại" class="btn btn-primary btn-sm" background-color: blue"/>
				    </div>
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
