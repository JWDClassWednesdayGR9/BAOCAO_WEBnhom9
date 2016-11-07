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
          <a href="frmAdmin.jsp">Trở về</a>
          </li>
        </ul>
    </div>
</div>
<body>
<div class="container">
        <div class="row">
          <div class="col-md-4">
          </div>
          <div class="col-md-4" style="padding: 10px 0px 0px 150px">
            <form class="form-horizontal" role="form" id="frm1" name="frm1">
                      <select class="form-control input-md" id="khoa" style="text-align: center">
                        <option value=""> Phân quyền</option>
                        <option value="1"> Trưởng khoa</option>
                        <option value="2"> Giảng viên</option>
                        <option value="3"> Sinh viên</option>
                      </select>
                      <div class="form-group" style="margin: 10px 0px 0px 0px">
                        <span class="help-block">Nhập tên tài khoản</span>
                        <input class="form-control input-md" type="text" name="taikhoan" id="tk" placeholder="tên tài khoản">           
                      </div>
                      <div class="form-group" style="margin: 10px 0px 0px 0px">
                        <span class="help-block">Nhập mật khẩu</span>
                        <input class="form-control input-md" type="password" name="password" id="mk" placeholder="mật khẩu">
                      </div>
                      <div style="text-align: center; margin: 10px 0px 0px 0px;">
		                <a href="qlTaikhoan.jsp" class="btn btn-primary">Lưu thông tin</a>
		                <button type="reset" class="btn btn-default" >Nhập lại</button>
                      </div>
            </form>
            </div>  
            <div class="col-md-4">
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