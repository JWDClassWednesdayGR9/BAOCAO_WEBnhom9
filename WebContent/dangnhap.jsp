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
<%
		String err = "";
		if (request.getAttribute("err") != null) {
			err = (String) request.getAttribute("err");
		}
	%>

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
  
<div class="container">
        <div class="row">
          <div class="col-md-4">
          </div>
          <div class="col-md-4" style="padding: 10px 0px 0px 150px">
          
            <form class="form-horizontal" role="form" id="frm1" name="frm1" method="post" action="LoginServlet">
            <div class="form-group" style="margin: 10px 0px 0px 0px">
            	
            	
            	
            	<span class="help-block">Nhập tên đăng nhập</span>
                        <input class="form-control input-md" type="text" name="username" id="tk" placeholder="tên đăng nhập"> 
                <span class="help-block">Nhập mật khẩu</span>
                        <input class="form-control input-md" type="password" name="password" id="mk" placeholder="mật khẩu">
                <label>

                          </label>
                <input name="login" type="submit" value="OK" class="btn btn-primary btn-sm" style="background-color: blue;margin-left: 50px;margin-top: 10px"/>
                <a href="index.jsp" type="button" class="btn btn-primary btn-sm" style="background-color: blue;margin-left: 20px;margin-top: 10px">Cancel</a>
                      
            	<li style="color: red; text-align: center"><%=err%></li>
            
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
            	var flag=true;
                if(!validateText("khoa"))
                {
                	 flag=false;
                    return false;
                }           
                if(!validateText("tk"))
                {
                	 flag=false;
                  return false;
                }
                if(!validateText("mk"))
                {
                	 flag=false;
                  return false;
                }
                if(flag){
                if(document.getElementById("quyen1").checked) location.href="frmSinhVien.jsp";
                if(document.getElementById("quyen2").checked) location.href="frmTruongkhoa.jsp";
                if(document.getElementById("quyen3").checked) location.href="frmGiangVien.jsp";
                if(document.getElementById("quyen4").checked) location.href="frmAdmin.jsp";}
              });
            }
          )

</script>
</body>
</html>
