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
          <a href="ThongTinHoiDong">Trở về</a>
          </li>
        </ul>
    </div>
</div>
<div class="container">
    <div class="row">
      <div class="col-md-7 col-md-offset-3" style="padding-top: 30px">  
      <li style="color: red; text-align: center"><%String err = "";
			err = (String) request.getAttribute("err");%><%=err %></li>
          <form class="form-horizontal" method="post" action="ThemHoiDong">
          			<label class="control-label col-sm-4" for="text">Tên Hội Đồng:</label>
				    <div class="col-sm-8"> 
				      <input name="tenHD" type="text" class="form-control" id="donvi" placeholder=" nhập mã đề tài ">
				    </div>
          	    
				    <label class="control-label col-sm-4" for="text">Bộ Môn Thực hiện:</label>
				    <div class="col-sm-8">
				      <input name="tenDT" type="text" class="form-control" id="ten" placeholder="nhập tên đề tài">
				    </div>
				  
				  
				    <label class="control-label col-sm-4" for="text">Time:</label>
				    <div class="col-sm-8"> 
				      <input name="maGV" type="text" class="form-control" id="hocvi" placeholder=" nhập tên GVHD">
				    </div>
				  
				  
				    <label class="control-label col-sm-4" for="text">Thành Viên:</label>
				    <div class="col-sm-8"> 
				      <input name = "maSV"type="text" class="form-control" id="donvi" placeholder=" nhập tên SV ">
				    </div>
				    <label class="control-label col-sm-4" for="text">Tình Trạng:</label>
				    <div class="col-sm-8"> 
				      <input name= "chuyenNganh" type="text" class="form-control" id="donvi" placeholder=" nhập chuyên ngành ">
				    </div>
				 			  
				  
				    <div class="col-sm-offset-6 col-sm-10">
				      <input type="submit" id="okbtn"  value="Thêm" class="btn btn-primary btn-sm" background-color: blue"/>
					  <input type="reset" class="btn btn-default" value ="Cancel">
					
				    
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
