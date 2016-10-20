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
  <script type="text/javascript" src="js/javascript.js"></script>

</head>
<body>
<div class="panel panel-default">
<div class="paneltop">
    <div class="banner" align="center">
      <img src="spkt_banner.jpg" alt="banner" height="130">
    </div>
    <div class="menutop">
        <ul class="menu">
          <li>
          <a href="dangnhap.jsp">Đăng Nhập</a>
          <a href="#">Thoát</a>
          </li>
        </ul>
    </div>
</div>
</div>
  
<div class="container">
          <div class="col-md-4">
          </div>
          <div class="col-md-4" style="padding: 20px 0px 0px 150px;">
            <form  class="form-horizontal" role="form" id="frm1" name="frm1" onsubmit="return validateForm()">
                      <select class="form-control input-md" style="text-align: center">
                        <option value=""> Chọn khoa</option>
                        <option value="1"> Công Nghệ Thông Tin</option>
                        <option value="2"> Xây Dựng</option>
                        <option value="3"> Điện - Điện Tử</option>
                      </select>
                      <div class="form-group " style="padding-top: 10px">
                      	<span class="help-block">Nhập tên đăng nhập</span>
                        <input class="form-control input-md" type="text" name="taikhoan" class="form-control" id="name" placeholder="tên đăng nhập" onchange="myFunction()">           
                      </div>
                      <div class="form-group">
                      	<span class="help-block">Nhập mật khẩu</span>
                        <input class="form-control input-md" type="password" class="form-control" id="passwd" placeholder="mật khẩu"name="password">
                      </div>
                      <div class="form-inline" style="text-align: center;">
                        <a href="TrangChu.jsp" type="submit" id="okbtn" value="Submit" class="btn btn-primary btn-sm" style="background-color: blue;" >OK</a>
                        <a href="index.jsp" type="button" class="btn btn-primary btn-sm" style="background-color: blue">Cancel</a>
           			  </div>
            </form>
            </div>  
            <div class="col-md-4">
            </div>      
      </div>
    <div class="foot">
		<footer class="footer">
		      <div class="container" >
		        <p class="text-muted">Ban Quyen (C) 2016 TRUONG DAI HOC SU PHAM KY THUAT HCM  - Phat trien boi K</p>
		      </div>
    	</footer>
	</div>
      
</body>
</html>