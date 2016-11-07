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
          <a href="dsGiangvien.jsp">Trở về</a>
          </li>
        </ul>
    </div>
</div>
<div class="container">
    <div class="row">
      <div class="col-md-7 col-md-offset-3" style="padding-top: 30px">  
          <form class="form-horizontal">
          	    <div class="form-group">
				    <label class="control-label col-sm-4" for="text">Tên:</label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control" id="ten" placeholder="nhập tên">
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="control-label col-sm-4" for="text">Học vị:</label>
				    <div class="col-sm-8"> 
				      <input type="text" class="form-control" id="hocvi" placeholder=" nhập học vị">
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="control-label col-sm-4" for="text">Đơn vị công tác:</label>
				    <div class="col-sm-8"> 
				      <input type="text" class="form-control" id="donvi" placeholder=" nhập đơn vị công tác ">
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="control-label col-sm-4" for="text">Chức vụ:</label>
				    <div class="col-sm-8"> 
				      <input type="text" class="form-control" id="chucvu" placeholder=" nhập chức vụ">
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="control-label col-sm-4" for="text">Bộ môn giảng dạy:</label>
				    <div class="col-sm-8"> 
				      <input type="text" class="form-control" id="bomon" placeholder=" nhập bộ môn giảng dạy">
				    </div>
				  </div>				  
				  <div class="form-group"> 
				    <div class="col-sm-offset-6 col-sm-10">
				      <a href="#" type="submit" class="btn btn-primary btn-sm">Thêm</a>
				      <a href="trk_themgiangvien.jsp" type="reset" class="btn btn-primary btn-sm">Hủy</a>
				      <a href="ThongTinGiangVien.jsp" type="submit" class="btn btn-primary btn-sm">Đồng ý</a>
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
