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

<div class="panel panel-default">
    <div class="banner" align="center">
      <img src="spkt_banner.jpg" alt="banner" height="130">
    </div>
    <div class="menutop">
        <ul class="menu">
          <li>
          <a href="dangnhap.jsp">Đăng Nhập</a>
          <a href="index.jsp">Thoát</a>
          </li>
        </ul>
    </div>
</div>
  
<div class="container">
        <div class="row">
          <div class="col-md-4">
          </div>
          <div class="col-md-4" style="padding: 10px 0px 0px 150px">
            <form  class="form-horizontal" role="form" id="frm1" name="frm1" method="post">
                      <select class="form-control input-md" style="text-align: center">
                        <option value=""> Chọn khoa</option>
                        <option value="1"> Công Nghệ Thông Tin</option>
                        <option value="2"> Xây Dựng</option>
                        <option value="3"> Điện - Điện Tử</option>
                      </select>
                      <div class="form-group" style="margin: 10px 0px 0px 0px">
                        <span class="help-block">Nhập tên đăng nhập</span>
                        <input class="form-control input-md" type="text" name="taikhoan" id="tk" placeholder="tên đăng nhập">           
                      </div>
                      <div class="form-group" style="margin: 10px 0px 0px 0px">
                        <span class="help-block">Nhập mật khẩu</span>
                        <input class="form-control input-md" type="password" name="password" id="mk" placeholder="mật khẩu">
                      </div>
                      <div class="checkbox">
                        <label>
                            <input type="checkbox"> Ghi Nhớ Mật Khẩu
                          </label>
                      </div>
                      <div style="text-align: center; margin: 10px 0px 0px 0px;">
                        <a href="TrangChu.jsp" type="button" id="okbtn" class="btn btn-primary btn-sm" style="background-color: blue;" >OK</a>
                        <a href="index.jsp" type="button" class="btn btn-primary btn-sm" style="background-color: blue;margin-left: 20px">Cancel</a>
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
<script>
        function validateText(id) {
             if ($("#"+id).val() == null || $("#"+id).val() == "")
             {
               var div = $("#"+id).closest("div");
               div.removeClass("has-success");
               $("#glypcn"+id).remove();
               div.addClass("has-error has-feedback")
               div.append('<span id="glypcn'+id+'" class="glyphicon glyphicon-remove form-control-feedback"></span>');
               return false;
             }
             else
             {
               var div = $("#"+id).closest("div");
               div.removeClass("has-error");
               div.addClass("has-success has-feedback");
               $("#glypcn"+id).remove();
               div.append('<span id="glypcn'+id+'" class="glyphicon glyphicon-ok form-control-feedback"></span>');
               return true;
             }

        }
        $(document).ready(
            function()
            {
              $("#okbtn").click(function()
              {
                if(!validateText("tk"))
                {
                  return false;
                }
                if(!validateText("mk"))
                {
                  return false;
                }
              });
            }
          )
</script>
</body>
</html>
