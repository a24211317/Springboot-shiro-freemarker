<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>管理员登录</title>
    <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport'/>
    <link rel="icon" href="images/favicon.ico" type="image/x-icon"/>
    <!-- Fonts and icons -->
    <script src="assets/js/plugin/webfont/webfont.min.js"></script>
    <script>
        WebFont.load({
            google: {"families": ["Open+Sans:300,400,600,700"]},
            custom: {
                "families": ["Flaticon", "Font Awesome 5 Solid", "Font Awesome 5 Regular", "Font Awesome 5 Brands"],
                urls: ['assets/css/fonts.css']
            },
            active: function () {
                sessionStorage.fonts = true;
            }
        });
    </script>
    <!-- CSS Files -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/azzara.min.css">
</head>
<body class="login">
<div class="wrapper wrapper-login">
    <div class="container container-login animated fadeIn">
        <h3 class="text-center">航多知识管理系统 - 管理后台</h3>
        <div class="login-form">
            <div class="form-group form-floating-label">
                <input id="username" name="username" type="text" class="form-control input-border-bottom" required>
                <label for="username" class="placeholder">用户名</label>
            </div>
            <div class="form-group form-floating-label">
                <input id="password" name="password" type="password" class="form-control input-border-bottom" required>
                <label for="password" class="placeholder">密码</label>
                <div class="show-password">
                    <i class="flaticon-interface"></i>
                </div>
            </div>
            <div class="form-action mb-3">
                <a href="javascript:login();" class="btn btn-primary btn-rounded btn-login">登录</a>
            </div>
        </div>
    </div>
</div>
<script src="assets/js/core/jquery.3.2.1.min.js"></script>
<script src="assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<script src="assets/js/core/popper.min.js"></script>
<script src="assets/js/core/bootstrap.min.js"></script>
<script src="assets/js/ready.js"></script>

<script type="text/javascript">

    function login() {
        var mobile = document.getElementById("username").value;
        var password = document.getElementById("password").value;
        $.ajax({
            url: "login",
            type: "post",
            dataType: "text",
            data: {
                mobile: mobile,
                password: password
            },
            success: function (data) {
                if (data === "success") {
                    window.location = "allRegulations";
                } else {
                    alert("用户名或密码不正确")
                }
            },
            error: function (msg) {
                alert("ajax连接异常：" + msg);
            }
        });
    }

</script>
</body>
</html>