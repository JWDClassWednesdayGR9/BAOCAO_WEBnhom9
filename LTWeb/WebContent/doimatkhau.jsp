<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
      <img src="spkt_banner.jpg" alt="banner" height="130" align="center">
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
    <div class="col-md-4 col-md-offset-4" style="padding-left: 100px;padding-top: 10px">
	<form id="form">
  	<div class="form-group">
   	 <label for="exampleInputPassword1">Mật khẩu hiện tại</label>
   	 <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Nhập mật khẩu cũ">
  	</div>
  	<div class="form-group">
   	 <label for="exampleInputPassword1">Mật khẩu mới</label>
   	 <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Nhập mật khẩu mới">
  	</div>
  	<div class="form-group">
   	 <label for="exampleInputPassword1">Nhập lại mật khẩu mới </label>
   	 <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Nhập lại mật khẩu mới">
  	</div>
 	 <a href="trangchu.jsp" type="button" id="okbtn" onclick="myFunction()" value="Submit" class="btn btn-primary btn-default" style="background-color: blue">Lưu thay đổi</a>
 	 <button type="reset" class="btn btn-default">Hủy bỏ</button>
	</form>
	</div>
</div>
<div class="bottommenu">
        <div class="info_ver"><a href="#">Ban Quyen (C) 2016 TRUONG DAI HOC SU PHAM KY THUAT HCM  - Phat trien boi K </a></div></div>

	</body>
<head>
