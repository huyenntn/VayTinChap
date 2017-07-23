 document.getElementById("formresign").onsubmit = function () {  
    var empt1 = document.forms["formresign"]["ctl12_hovaten"].value;
    var empt2 = document.forms["formresign"]["ctl12_sodienthoai"].value;
    var empt3 = document.forms["formresign"]["ctl12_DiaChi"].value;
    var empt4 = document.forms["formresign"]["ctl12_TenDoanhNghiep"].value;
    var empt5 = document.forms["formresign"]["ctl12_NganhNgheKinhDoanh"].value;
    var empt6 = document.forms["formresign"]["ctl12_SoDangKyKinhDoanh"].value;
    var submit = true;
    if (empt1 == null || empt1 == "") {
        nameError = "Chưa nhập họ tên";
        document.getElementById("ctl12_hovaten_error").innerHTML = nameError;
        submit = false;
    }

    if (empt2 == null || empt2 == "") {
        emailError = "Chưa nhập số điện thoại";
        document.getElementById("ctl12_sodienthoai_error").innerHTML = emailError;
        submit = false;
    }

    if (empt3 == null || empt3 == "") {
        telephoneError = "Chưa nhập địa chỉ";
        document.getElementById("ctl12_DiaChi_error").innerHTML = telephoneError;
        submit = false;
    }
        if (empt4 == null || empt4 == "") {
        nameError = "Chưa nhập tên doanh nghiệp";
        document.getElementById("ctl12_TenDoanhNghiep_error").innerHTML = nameError;
        submit = false;
    }

    if (empt5 == null || empt5 == "") {
        emailError = "Chưa nhập ngành nghề kinh doanh";
        document.getElementById("ctl12_NganhNgheKinhDoanh_error").innerHTML = emailError;
        submit = false;
    }

    if (empt6 == null || empt6 == "") {
        telephoneError = "Chưa nhập số đăng ký kinh doanh";
        document.getElementById("ctl12_SoDangKyKinhDoanh_error").innerHTML = telephoneError;
        submit = false;
    }

    return submit;

}

function removeWarning() {
    document.getElementById(this.id + "_error").innerHTML = "";
}

document.getElementById("ctl12_hovaten").onkeyup = removeWarning;
document.getElementById("ctl12_sodienthoai").onkeyup = removeWarning;
document.getElementById("ctl12_DiaChi").onkeyup = removeWarning;
document.getElementById("ctl12_TenDoanhNghiep").onkeyup = removeWarning;
document.getElementById("ctl12_NganhNgheKinhDoanh").onkeyup = removeWarning;
document.getElementById("ctl12_SoDangKyKinhDoanh").onkeyup = removeWarning;

tinymce.init({
  selector: 'textarea',
  height: 500,
  theme: 'modern',
  plugins: [
    'advlist autolink lists link image charmap print preview hr anchor pagebreak',
    'searchreplace wordcount visualblocks visualchars code fullscreen',
    'insertdatetime media nonbreaking save table contextmenu directionality',
    'emoticons template paste textcolor colorpicker textpattern imagetools codesample toc help'
  ],
  toolbar1: 'undo redo | insert | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
  toolbar2: 'print preview media | forecolor backcolor emoticons | codesample help',
  image_advtab: true,
  templates: [
    { title: 'Test template 1', content: 'Test 1' },
    { title: 'Test template 2', content: 'Test 2' }
  ],
  content_css: [
    '//fonts.googleapis.com/css?family=Lato:300,300i,400,400i',
    '//www.tinymce.com/css/codepen.min.css'
  ]
 });