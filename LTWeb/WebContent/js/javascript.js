
function validateForm() {
    var x = document.forms["frm1"]["taikhoan"].value;
    var y = document.forms["frm1"]["password"].value;
    if (x == null || x == "") {
        alert(" chưa nhập tên");
        return false;}
    if ( y==null||y=="") {
        alert(" chưa nhập mật khẩu");
        return false;}
    
};


function myFunction() {
    var x = document.getElementById("mySelect").value;
   // document.getElementById("demo").innerHTML =;
}