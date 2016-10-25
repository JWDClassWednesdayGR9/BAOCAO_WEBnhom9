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
          <a href="ThongTinGiangVien.jsp">Trở về</a>
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
            <li role="active"><a href="themgiangvien.jsp" target="_parent" >Nhập danh sách giảng viên</a></li>
          </ul>
      </div>
<div class="col-md-3">
</div>
<div class="col-md-3">

	<form >
            <div class="nhapdsdetai" style="padding-top: 10px" >
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
                <a href="ThongTinGiangVien.jsp" class="btn btn-primary">Lưu thông tin</a>
                <button type="reset" class="btn btn-default" >Nhập lại</button>
            </div>
            </div>
        </form>
        </div>
        <div class="col-md-3">
</div>
</div>
	  <footer class="footer">
          <div class="container" >
            <p style="color: blue" class="text-muted">Ban Quyen (C) 2016 TRUONG DAI HOC SU PHAM KY THUAT HCM  - Phat trien boi K</p>
          </div>
      </footer>
</div> 
</body>
</html>
