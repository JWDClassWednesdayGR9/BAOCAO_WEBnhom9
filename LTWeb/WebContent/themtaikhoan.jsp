<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
  <title>HCMUTE</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css"  href="main.css">
  <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<div class="paneltop">
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
	<div class="row" style="padding-left: 40px;padding-top: 50px">	
	<form action="" method="">
	<table width="400" border="2" cellpadding="10" align="center" >
	<tr>
		<th style="color: blue" colspan="2" >Thêm tài khoản</th>
	</tr>
	<tr>
		<td>Nhập tên tài khoản </td>
		<td align="center"> 
			<input type="text" name="fname" size="29" placeholder="">
		</td>
	</tr>
	<tr>
		<td> Nhập mật khẩu </td>
		<td align="center"> 
			<input type="text" name="fname" size="29" placeholder="">
		</td>
	</tr>
	<tr>
			<td>Chọn Quyền</td>
			<td>
				<div class="dropdown" >
              	  <select name="hd" class="dropdown-select">
               	   <option value="">Trưởng khoa</option>
                   <option value="1">Giảng Viên</option>
                   <option value="2">Sinh Viên</option>
                  </select>
    			</div>
    		</td>	
	</tr>
	<tr> 
		<td colspan="2" align="center">
			<button  type="submit" style="background-color: blue" class="btn btn-primary btn-sm">Lưu thay đổi
			</button>
			<button type="reset" class="btn btn-default">Hủy bỏ</button>
		</td>
 	 </tr>
 	 </tr>
 	 </table>
	</form>
	
	</div>
<div class="bottommenu">
       <div class="info_ver"><a href="#">Ban Quyen (C) 2016 TRUONG DAI HOC SU PHAM KY THUAT HCM  - Phat trien boi K </a>
	</div></div>
</body>
	
</html>