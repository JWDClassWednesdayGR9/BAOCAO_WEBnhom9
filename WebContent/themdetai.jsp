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
          <a href="ThongTinKhoaLuan">Trở về</a>
          </li>
        </ul>
    </div>
</div>
<div class="container">
    <div class="row">
      <div class="col-md-7 col-md-offset-3" style="padding-top: 30px">  
      	<li style="color: red; text-align: center"><%String err = "";
			err = (String) request.getAttribute("err");%><%=err %></li>
          <form class="form-horizontal" method="post" action="ThemDeTai">
          	    	<label class="control-label col-sm-4" for="text">Mã đề tài:</label>
				    <div class="col-sm-8">
				      <input type="text" name="maDT" class="form-control" id="ten" placeholder="Mã đề tài">
				    </div> 
				    
				    <label class="control-label col-sm-4" for="text">Tên đề tài:</label>
				    <div class="col-sm-8">
				      <input type="text" name="tenDT" class="form-control" id="ten" placeholder="nhập tên đề tài">
				    </div>
				  
				  
				    <label class="control-label col-sm-4" for="text">GVHD:</label>
				    <div class="col-sm-8"> 
				      <input type="text" name="maGV" class="form-control" id="hocvi" placeholder=" nhập tên GVHD">
				    </div>
				  
				  
				    <label class="control-label col-sm-4" for="text">SVTH:</label>
				    <div class="col-sm-8"> 
				      <input type="text" name="maSV" class="form-control" id="donvi" placeholder=" nhập tên SV ">
				    </div>
				  	
				  	<label class="control-label col-sm-4" for="text">Chuyên Ngành:</label>
				    <div class="col-sm-8">
				      <input type="text" name="chuyenNganh" class="form-control" id="ten" placeholder="nhập Chuyên Ngành">
				    </div>			  
				  
				    
				      <input type="submit" id="themdetai"  value="Submit" class="btn btn-primary btn-sm" background-color: blue">
				      <input type="reset" class="btn btn-default" value ="Cancel">
				    
				  
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