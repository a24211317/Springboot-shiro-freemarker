<#include "header.ftl">
        <!-- 顶部 -->
        <nav class="navbar navbar-header navbar-expand-lg">

            <div class="container-fluid">
                <div style="color: white">
                    <h3>法规管理/新增条款</h3>
                </div>
                <ul class="navbar-nav topbar-nav ml-md-auto align-items-center" style="color: white">
                    <li class="nav-item dropdown hidden-caret">
                        账户设置
                    </li>
                    <li class="nav-item dropdown hidden-caret">
                        退出登录
                    </li>

                </ul>
            </div>
        </nav>
        <!-- End Navbar -->
    </div>

    <!-- 左侧目录 -->
    <div class="sidebar">
        <div class="sidebar-wrapper scrollbar-inner">
            <div class="sidebar-content">
                <ul class="nav">
                    <li class="nav-item active submenu">
                        <a data-toggle="collapse" href="#base">
                            <i class="fas fa-layer-group"></i>
                            <p>法规管理</p>
                            <span class="caret"></span>
                        </a>
                        <div class="collapse show" id="base">
                            <ul class="nav nav-collapse">
                                <li>
                                    <a href="allRegulations">
                                        <span class="sub-item">法规列表</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="toAddRegulation">
                                        <span class="sub-item">新增法规</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="allLevel">
                                        <span class="sub-item">组织管理</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="toDirectory">
                                        <span class="sub-item">法规目录管理</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="toAddDiectory">
                                        <span class="sub-item">新增目录</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="toTerms">
                                        <span class="sub-item">条款列表</span>
                                    </a>
                                </li>
                                <li class="active">
                                    <a href="toAddTerm">
                                        <span class="sub-item">新增条款</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a data-toggle="collapse" href="#forms">
                            <i class="fas fa-users-cog"></i>
                            <p>用户管理</p>
                            <span class="caret"></span>
                        </a>
                        <div class="collapse" id="forms">
                            <ul class="nav nav-collapse">
                                <li>
                                    <a href="allUser">
                                        <span class="sub-item">用户列表</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a data-toggle="collapse" href="#tables">
                            <i class="fas fa-comment"></i>
                            <p>咨询管理</p>
                            <span class="caret"></span>
                        </a>
                        <div class="collapse" id="tables">
                            <ul class="nav nav-collapse">
                                <li>
                                    <a href="toAdvisory">
                                        <span class="sub-item">咨询列表</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a data-toggle="collapse" href="#maps">
                            <i class="fas fa-cogs"></i>
                            <p>设置</p>
                            <span class="caret"></span>
                        </a>
                        <div class="collapse" id="maps">
                            <ul class="nav nav-collapse">
                                <li>
                                    <a href="toWebSettings">
                                        <span class="sub-item">网站设置</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="toCompanyProfile">
                                        <span class="sub-item">公司介绍</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="toServiceAgreement">
                                        <span class="sub-item">服务协议</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="toEmailSettings">
                                        <span class="sub-item">邮件SMTP设置</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="toSMSSettings">
                                        <span class="sub-item">短信设置</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="toAdministratorManagement">
                                        <span class="sub-item">管理员管理</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="toFeedback">
                                        <span class="sub-item">意见反馈列表</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- End Sidebar -->

    <div class="main-panel">
        <div class="content">
            <div class="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">新增条款</h4>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <form class="layui-form layui-form-pane" action="">
                                            <div class="form-group form-inline">
                                                <label for="inlineinput" class="col-md-2 col-form-label">*法规：</label>
                                                <div class="col-md-5 p-0 layui-form">
                                                    <select name="regulation" lay-filter="regulation" id="regulation">
                                                        <option value="" ckecked="">请选择法规
                                                        </option>
                                                        <#list regulations as regulation>
                                                            <option value="${regulation.rid}">${regulation.alias}&nbsp;&nbsp;${regulation.rname}
                                                            </option>
                                                        </#list>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group form-inline">
                                                <label for="inlineinput"
                                                       class="col-md-2 col-form-label">*所在目录：</label>
                                                <div class="col-md-5 p-0">
                                                    <select lay-verify="required" name="did" lay-filter="did" id="did">
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group form-inline">
                                                <label for="inlineinput" class="col-md-2 col-form-label">*条款编号：</label>
                                                <div class="col-md-5 p-0">
                                                    <input lay-verify="required" type="text" class="form-control input-full" id="tno"
                                                           name="tno"
                                                           placeholder="第25.105条">
                                                </div>
                                            </div>
                                            <div class="form-group form-inline">
                                                <label for="inlineinput" class="col-md-2 col-form-label">条款编号别名
                                                    ：</label>
                                                <div class="col-md-5 p-0">
                                                    <input type="text"
                                                           class="form-control input-full" id="alias" name="alias"
                                                           placeholder="第25.105条">
                                                </div>
                                            </div>
                                            <div class="form-group form-inline">
                                                <label for="inlineinput" class="col-md-2 col-form-label">条款版本号 ：</label>
                                                <div class="col-md-5 p-0">
                                                    <input type="text"
                                                           class="form-control input-full" id="version" name="version"
                                                           placeholder="R3">
                                                </div>
                                            </div>
                                            <div class="form-group form-inline">
                                                <label for="inlineinput" class="col-md-2 col-form-label">*条款标题 ：</label>
                                                <div class="col-md-5 p-0">
                                                    <input lay-verify="required" type="text"
                                                           class="form-control input-full" id="title" name="title"
                                                           placeholder="起飞">
                                                </div>
                                            </div>
                                            <div class="form-group form-inline">
                                                <label for="description"
                                                       class="col-md-2 col-form-label">*条款内容 ：</label>
                                                <div class="col-md-10 p-0">
                                                    <div style="overflow:auto ">
                                                        <textarea  name="content" id="myEdit"></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group form-inline">
                                                <label for="inlineinput" class="col-md-2 col-form-label">关键字 ：</label>
                                                <div class="col-md-5 p-0">
                                                    <input type="text"
                                                           class="form-control input-full" id="keyWord" name="keyWord"
                                                           placeholder="">
                                                </div>
                                            </div>

                                            <div class="form-group form-inline" style="position: relative;left: 30%;">
                                                <div class="layui-form-item">
                                                    <div class="layui-input-bloc">
                                                        <button class="layui-btn layui-bg-blue" lay-submit
                                                                lay-filter="formDemo">保存
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Custom template | don't include it in your project! -->
<div class="custom-template">
    <div class="title">Settings</div>
    <div class="custom-content">
        <div class="switcher">
            <div class="switch-block">
                <h4>Topbar</h4>
                <div class="btnSwitch">
                    <button type="button" class="changeMainHeaderColor" data-color="blue"></button>
                    <button type="button" class="selected changeMainHeaderColor" data-color="purple"></button>
                    <button type="button" class="changeMainHeaderColor" data-color="light-blue"></button>
                    <button type="button" class="changeMainHeaderColor" data-color="green"></button>
                    <button type="button" class="changeMainHeaderColor" data-color="orange"></button>
                    <button type="button" class="changeMainHeaderColor" data-color="red"></button>
                </div>
            </div>
            <div class="switch-block">
                <h4>Background</h4>
                <div class="btnSwitch">
                    <button type="button" class="changeBackgroundColor" data-color="bg2"></button>
                    <button type="button" class="changeBackgroundColor selected" data-color="bg1"></button>
                    <button type="button" class="changeBackgroundColor" data-color="bg3"></button>
                </div>
            </div>
        </div>
    </div>
    <div class="custom-toggle">
        <i class="flaticon-settings"></i>
    </div>
</div>
<!-- End Custom template -->

<!--   Core JS Files   -->
<script src="assets/js/core/jquery.3.2.1.min.js"></script>
<script src="assets/js/core/popper.min.js"></script>
<script src="assets/js/core/bootstrap.min.js"></script>

<!-- jQuery UI -->
<script src="assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<script src="assets/js/plugin/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>

<!-- jQuery Scrollbar -->
<script src="assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>

<!-- Moment JS -->
<script src="assets/js/plugin/moment/moment.min.js"></script>

<!-- Chart JS -->
<script src="assets/js/plugin/chart.js/chart.min.js"></script>

<!-- jQuery Sparkline -->
<script src="assets/js/plugin/jquery.sparkline/jquery.sparkline.min.js"></script>
<!-- Datatables -->
<script src="assets/js/plugin/datatables/datatables.min.js"></script>

<!-- Bootstrap Notify -->
<script src="assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>

<!-- Bootstrap Toggle -->
<script src="assets/js/plugin/bootstrap-toggle/bootstrap-toggle.min.js"></script>
<!-- Azzara DEMO methods, don't include it in your project! -->
<script src="assets/js/setting-demo.js"></script>
<!-- Azzara JS -->
<script src="assets/js/ready.min.js"></script>
<script src="layui/layui.js"></script>
<script src="ckeditor/ckeditor.js"></script>
<script type="text/javascript">
    CKEDITOR.replace('myEdit', {
        toolbar: [['Mathjax', 'Bold', 'Italic', 'Underline', 'Strike', '-', 'Subscript', 'Superscript', 'NumberedList', 'BulletedList', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock', '-', 'Link', 'Unlink', '-', 'About']]
    });
    CKEDITOR.instances["myEdit"].on('instanceReady', function (e) {
        this.document.on("paste", function (e) {
            var items = e.data.$.clipboardData.items;
            for (var i = 0; i < items.length; ++i) {
                var item = items[i];
                if (item.kind == 'file' && item.type == 'image/png') {
                    var imgFile = item.getAsFile();
                    if (!imgFile) {
                        return true;
                    }
                    var reader = new FileReader();
                    reader.readAsDataURL(imgFile);
                    reader.onload = function (e) {
                        //显示文件
                        CKEDITOR.instances["myEdit"].insertHtml('<img src="' + this.result + '" alt="" />');
                    }
                    return false;
                }
            }
        });
    });
</script>
<script>
    layui.use(['form'], function () {
        var form = layui.form;
        form.on('select(regulation)', function (data) {
            $("#did").html("");
            $.ajax({
                url: 'getDirectoryByRid',
                //此行数据返回,后台获取data.id即可
                type: "post",
                dataType: "JSON",
                data: {
                    rid: data.value
                },
                success: function (data) {
                    console.log(data)
                    var str = "";//定义用于拼接的字符串
                    str = "<option value=''>" + "请选择所属目录" + "</option>";
                    $("#did").append(str);
                    for (var i = 0; i < data.length; i++) {
                        //拼接表格的行和列
                        str = "<option value='" + data[i].did + " '>" + data[i].dname + "</option>";
                        //追加到table中
                        $("#did").append(str);
                    }
                    form.render();
                }
            });
        });
        form.verify({
            textareaVerify: function () { //value：表单的值、item：表单的DOM对象
                if (CKEDITOR.instances.myEdit.getData() === '') {
                    console.log(CKEDITOR.instances.myEdit.getData())
                    return '必填项不能为空';
                }
            }
        });

        form.on('submit(formDemo)', function (data) {
            $.ajax({
                url: 'addTerm',
                //此行数据返回,后台获取data.id即可
                type: "post",
                dataType: "text",
                data: {
                    data: JSON.stringify(data.field),
                    content:CKEDITOR.instances.myEdit.getData()
                },
                success: function (data) {
                    //浮窗显示成功
                    if (data === "success") {
                        layer.msg("提交成功");
                    } else {
                        layer.msg("提交失败");
                    }
                }
            });
            return false;
        });
    });
</script>
</body>
</html>