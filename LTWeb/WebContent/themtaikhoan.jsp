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
<div class="paneltop">
    <div class="banner" align="center">
      <img src="spkt_banner.jpg" alt="banner" height="130">
    </div>
    <div class="menutop">
        <ul class="menu">
          <li>
          <a href="trangchu.jsp">Trở về</a>
          </li>
        </ul>
    </div>
</div>
<body>
<div class="container">
    <div class="row">
      <div class="col-md-3" style="padding-left: 50px;padding-top: 10px">
           <ul class="nav nav-pills nav-stacked" style="background-color: #DDDDDD">
            <li role="presentation"><a href="trangchu.jsp" target="_parent" >Trang chủ</a></li>
            <li role="presentation"><a href="ThongTinKhoaLuan.jsp" target="_parent" >Thông tin khóa luận</a></li>
            <li class="presentation"><a href="ThongTinGiangVien.jsp" target="_parent" >Thông tin giảng viên</a></li>
            <li role="presentation"><a href="ThongTinHoiDong.jsp" target="_parent" >Thông tin hội đồng</a></li>
            <li role="presentation"><a href="SapXepHoiDong.jsp" target="_parent" >Sắp xếp hội đồng</a></li>
            <li role="presentation"><a href="nhapdsdetai.jsp" target="_parent" >Nhập danh sách đề tài</a></li>
            <li role="presentation"><a href="themgiangvien.jsp" target="_parent" >Nhập danh sách giảng viên</a></li>
          </ul>
      </div>
	<form>
            <div class="col-md-7" style="padding-left:250px; padding-top: 10px">
                <label>Thêm tài khoản</label>
                <input type="text" class="form-control" name="text" value="Nhập tên tài khoản mới" />
                 <label>Mật khẩu</label>
                <input type="text" name="text" class="form-control" value="Nhập mật khẩu cho tài khoản" />
                <label>Chọn quyền tài khoản</label>
                <div class="dropdown">
              	  <select name="hd" class="dropdown-select">
               	   <option value="">Trưởng khoa</option>
                   <option value="1">Giảng Viên</option>
                   <option value="2">Sinh Viên</option>
                  </select>
    			</div>
            <div class="modal-footer">
                <a href="trangchu.jsp" class="btn btn-primary">Lưu thông tin</a>
                <button type="reset" class="btn btn-default" >Nhập lại</button>
            </div>
            </div>
     </form>
	</div> 
</div>
<div class="bottommenu">
       <div class="info_ver"><a href="#">Ban Quyen (C) 2016 TRUONG DAI HOC SU PHAM KY THUAT HCM  - Phat trien boi K </a>
	</div></div>
</body>
</html>
