<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
          <a href="index.jsp">Thoát</a>
          </li>
        </ul>
    </div>
</div>
<div class="container">
    <div class="col-md-4 col-md-offset-5">
	<form id="form">
  	<div class="form-group">
   	 <label for="exampleInputPassword1">Nhập mật khẩu hiện tại</label>
   	 <input type="password" class="form-control" id="exampleInputPassword1" placeholder="old password">
  	</div>
  	<div class="form-group">
   	 <label for="exampleInputPassword1">Nhập mật khẩu mới</label>
   	 <input type="password" class="form-control" id="exampleInputPassword1" placeholder="new Password">
  	</div>
  	<div class="form-group">
   	 <label for="exampleInputPassword1">Nhập lại mật khẩu mới </label>
   	 <input type="password" class="form-control" id="exampleInputPassword1" placeholder="new Password again">
  	</div>
 	 <a href="TrangChu.jsp" type="button" id="okbtn" onclick="myFunction()" value="Submit" class="btn btn-primary btn-sm" style="background-color: blue">Lưu thay đổi</a>
 	 <button type="reset" class="btn btn-default">Hủy bỏ</button>
	</form>
	</div>
</div>
<div class="row" style="margin-top: 20px;padding-left: 15px"> 	
		<footer class="footer">
          <div class="container" >
            <p style="color: blue" class="text-muted">Ban Quyen (C) 2016 TRUONG DAI HOC SU PHAM KY THUAT HCM  - Phat trien boi K</p>
          </div>
      </footer> 
</div>

</body>
<head>
