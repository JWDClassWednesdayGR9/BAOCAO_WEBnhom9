<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="">
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
      <img src="spkt_banner.jpg" alt="banner" height="130">
    </div>
    <div class="menutop">
        <ul class="menu">
          <li>
          <a href="dang nhap.jsp">Đăng Nhập</a>
          <a href="index.jsp">Thoát</a>
          </li>
        </ul>
    </div>
</div>
  
<div class="container">
    <div class="row">
      <div class="col-md-3" style="padding-left: 50px;padding-top: 10px">
          
      </div>
      <div class="col-md-9">
          <div class="col-md-4">
          </div>
          <div class="col-md-4" style="padding-top: 20px">
            <form id="frm1" >
                      <select class="form-control input-md">
                        <option value=""> Chọn khoa</option>
                        <option value="1"> Công Nghệ Thông Tin</option>
                        <option value="2"> Xây Dựng</option>
                        <option value="3"> Điện - Điện Tử</option>
                      </select>
                      <div class="form-group" style="padding-top: 10px">
                        <input type="email" class="form-control" id="name" placeholder="tên đăng nhập">
                        <span class="help-block">Nhập tên đăng nhập</span>
                      </div>
                      <div class="form-group">
                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="mật khẩu">
                        <span class="help-block">Nhập mật khẩu</span>
                      </div>
                      <div class="checkbox">
                          <label>
                              <input type="checkbox"> Ghi Nhớ Mật Khẩu
                           </label>
                      </div>
                        <a href="TrangChu.jsp" type="button" id="okbtn" onclick="myFunction()" value="Submit" class="btn btn-primary btn-sm" style="background-color: blue">OK</a>
                        <a href="index.jsp" type="button" class="btn btn-primary btn-sm" style="background-color: blue">Cancel</a>

            </form>
            </div>        
      </div>
    </div>
</div>
<div class="bottommenu">
        <div class="info_ver"><a href="#">Ban Quyen (C) 2016 TRUONG DAI HOC SU PHAM KY THUAT HCM  - Phat trien boi K </a>
        </div>
</div>
      <script>
      function validateText(id) {
           if($("#"+id).val()=null || $("#"+id).val()=="")
           {
             var div = $("#"+id).closest("div");
             div.addClass("has-error");
             return false;
           }
           else
           {
             var div = $("#"+id).closest("div");
             div.removeClass("has-error");
             div.addClass("has-feedback");
             div.append('<span class="glyphicon glyphicon-ok form-control-feedback"></span>');
             return true;
           }
      }
      $(document).ready(
          function()
          {
            $("okbtn").click(function())
            {
              if(!validateText("name"))
                return false;
            }
          }
        )
      
      </script>
</body>
</html>
