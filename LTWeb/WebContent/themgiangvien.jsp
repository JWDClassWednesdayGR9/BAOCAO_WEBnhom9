<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
          <a href="index.jsp">Trở về</a>
          </li>
        </ul>
    </div>
</div>
<body>
<div class="container">
	<form>
            <div class="nhapdsdetai" style="padding-left: 400px;padding-top: 10px" >
                <label>Tên giảng viên</label>
                <input type="text" class="form-control" name="text" value=""/>
                 <label>Nhập học vị</label>
                <input type="text" name="text" class="form-control" value="" />
                <label>Nhập đơn vị công tác</label>
                <input type="text" name="text" class="form-control" value="" />
                <label>Nhập chức vụ</label>
                <input type="text" name="text" class="form-control" value="" />
                <label>Nhập bộ môn giảng dạy</label>
                <input type="text" name="text" class="form-control" value="" />
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary" id="login_btn">Lưu thông tin</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Nhập lại</button>
            </div>
            </div>
        </form>
	  <footer class="footer">
          <div class="container" >
            <p style="color: blue" class="text-muted">Ban Quyen (C) 2016 TRUONG DAI HOC SU PHAM KY THUAT HCM  - Phat trien boi K</p>
          </div>
      </footer>
</div> 
</body>
</html>
