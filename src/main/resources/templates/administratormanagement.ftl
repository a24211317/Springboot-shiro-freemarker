<#include "header.ftl">
<!-- 顶部 -->
<nav class="navbar navbar-header navbar-expand-lg">

    <div class="container-fluid">
        <div style="color: white">
            <h3>系统管理/管理员列表</h3>
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
                <li class="nav-item">
                    <a data-toggle="collapse" href="#base">
                        <i class="fas fa-layer-group"></i>
                        <p>法规管理</p>
                        <span class="caret"></span>
                    </a>
                    <div class="collapse" id="base">
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
                            <li>
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
                <li class="nav-item active submenu">
                    <a data-toggle="collapse" href="#maps">
                        <i class="fas fa-cogs"></i>
                        <p>设置</p>
                        <span class="caret"></span>
                    </a>
                    <div class="collapse show" id="maps">
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
                            <li class="active">
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
                            <h4 class="card-title">法规列表</h4>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <form class="layui-form" action="">
                                    <div class="layui-input-inline">
                                        <input type="text" id="mobile" placeholder="手机号">
                                        <input type="text" id="mname" placeholder="姓名">
                                        <input type="text" id="password" placeholder="密码">
                                        <label>&nbsp;&nbsp;&nbsp;&nbsp;身份:</label>
                                        <input type="checkbox" lay-skin="primary" name="authority" value="1"
                                               title="普通管理员">
                                        <input type="checkbox" lay-skin="primary" name="authority" value="2"
                                               title="超级管理员">
                                        <button class="layui-btn" lay-submit lay-filter="addManager">提交</button>
                                    </div>
                                </form>
                                <table id="basic-datatables" class="display table table-striped table-hover"
                                       style="text-align: center">
                                    <thead>
                                    <tr>
                                        <th>管理员手机号</th>
                                        <th>管理员姓名</th>
                                        <th>添加日期</th>
                                        <th>身份</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <#list allManager as manager>
                                        <tr>
                                            <td>${manager.mobile}</td>
                                            <td>${manager.mname}</td>
                                            <td>${manager.createTime}</td>
                                            <td>${manager.authority}</td>
                                            <td>
                                                <button onclick="updManager(${manager.mid},'${manager.mname}',${manager.mobile},'${manager.authority}')"
                                                        id="updButton"
                                                        type="button" class="btn btn-link btn-primary btn-lg">
                                                    <i class="fa fa-edit"></i>
                                                </button>
                                                <button onclick="setId(${manager.mid})" id="delButton" type="button"
                                                        class="btn btn-link btn-danger">
                                                    <i class="fa fa-times"></i>
                                                </button>
                                            </td>
                                        </tr>
                                    </#list>
                                    </tbody>
                                </table>
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
</div>

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
<!-- Sweet Alert -->
<script src="assets/js/plugin/sweetalert/sweetalert.min.js"></script>
<!-- Azzara JS -->
<script src="assets/js/ready.min.js"></script>
<script src="layui/layui.js"></script>


<script>
    var idData = "";

    function setId(initId) {
        idData = initId;
    }

    //== Class definition
    var SweetAlert2Demo = function () {
        //== Demos
        var initDemos = function () {
            $('tbody').on('click', '#delButton', function () {
                var row = $(this).parents('tr')[0];
                swal({
                    title: '确认删除吗',
                    text: "删除后将无法恢复",
                    type: 'warning',
                    buttons: {
                        confirm: {
                            text: '确认',
                            className: 'btn btn-success'
                        },
                        cancel: {
                            text: '取消',
                            visible: true,
                            className: 'btn btn-danger'
                        }
                    }
                }).then((Delete) => {
                    if (Delete) {
                        $.ajax({
                            url: "delManager",
                            type: "post",
                            dataType: "text",
                            data: {
                                mid: idData
                            },
                            success: function (data) {
                                if (data === "success") {
                                    swal({
                                        title: '删除成功!',
                                        type: 'success',
                                        buttons: {
                                            confirm: {
                                                className: 'btn btn-success'
                                            }
                                        }
                                    }).then(() => {
                                        window.location = "toAdministratorManagement";
                                    });
                                } else {
                                    swal({
                                        title: '删除失败!',
                                        type: 'error',
                                        buttons: {
                                            confirm: {
                                                className: 'btn btn-success'
                                            }
                                        }
                                    });
                                }
                            }
                        })
                    } else {
                        swal.close();
                    }
                })
                ;
            });
        };
        return {
            //== Init
            init: function () {
                initDemos();
            },
        };
    }();
    //== Class Initialization
    jQuery(document).ready(function () {
        SweetAlert2Demo.init();
    });
</script>

<script>
    layui.use(['form'], function () {
        var form = layui.form;
        form.render();
        form.on('submit(addManager)', function (data) {
            //获取checkbox[name='foodId']的值，获取所有选中的复选框，并将其值放入数组中
            var arr = new Array();
            $("input:checkbox[name='authority']:checked").each(function (i) {
                arr[i] = $(this).val();
            });
            data.field.authority = arr.join(",");
            $.ajax({
                url: 'addManager',
                type: "post",
                dataType: "text",
                data: {
                    mname: document.getElementById("mname").value,
                    password: document.getElementById("password").value,
                    mobile: document.getElementById("mobile").value,
                    authority: data.field.authority
                },
                success: function (data) {
                    //浮窗显示成功
                    if (data === "success") {
                        parent.layer.msg("提交成功");
                        window.location = "toAdministratorManagement"
                    } else {
                        layer.msg("提交失败");
                    }
                }
            });
            return false
        })
    })
</script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#basic-datatables').DataTable({
            "oLanguage": {
                "sLengthMenu": "每页显示 _MENU_ 条记录",
                "sInfo": "从 _START_ 到 _END_ /共 _TOTAL_ 条数据",
                "sInfoEmpty": "没有数据",
                "sInfoFiltered": "(从 _MAX_ 条数据中检索)",
                "oPaginate": {
                    "sFirst": "首页",
                    "sPrevious": "前一页",
                    "sNext": "后一页",
                    "sLast": "尾页"
                },
                "sZeroRecords": "没有检索到数据",
                "sSearch": "搜索:"
            }
        });
    });


    function updManager(mid, name, phoneData) {
        layui.use(['layer', 'form'], function () {
            var form = layui.form;

            layer.open({
                type: 1,
                area: ['450px', '350px'],
                content:
                    '<form class="layui-form" action="">' +
                    '<div class="layui-form-item">' +
                    '<label class="layui-form-label" style="width: 130px">*手机号：</label><label class="layui-form-label"> ' + phoneData + '</label>' +
                    '</div>' +
                    '<div class="layui-form-item"><' +
                    'label class="layui-form-label" style="width: 130px">*管理员姓名：</label>' +
                    '<div class="layui-input-inline">' +
                    '<input lay-verify="required" class="layui-input" value=' + name + '  id="name">' +
                    '</div>' +
                    '</div>' +
                    '<div class="layui-form-item">' +
                    '<label class="layui-form-label" style="width: 130px">*密码：</label>' +
                    '<div class="layui-input-inline">' +
                    '<input lay-verify="required" class="layui-input"  id="pwd">' +
                    '</div>' +
                    '</div>' +
                    '<div class="layui-form-item">' +
                    '<label class="layui-form-label" style="width: 130px">*身份：</label>' +
                    '<div class="layui-input-inline">' +
                    '<input type="checkbox" lay-skin="primary" name="authority" value="1" title="普通管理员">' +
                    '<input type="checkbox" lay-skin="primary" name="authority" value="2" title="超级管理员">' +
                    '</div>' +
                    '</div>' +
                    '<div class="layui-form-item">' +
                    '    <div class="layui-input-block">' +
                    '      <button class="layui-btn" lay-submit lay-filter="formDemo">保存</button>' +
                    '      <button id="close" onclick="layer.close(layer.index);" class="layui-btn layui-btn-primary">关闭</button>' +
                    '    </div>' +
                    '  </div>' +
                    '</form>',
                success: function (layero, index) {
                    form.render();
                    form.on('submit(formDemo)', function (data) {

                        //获取checkbox[name='foodId']的值，获取所有选中的复选框，并将其值放入数组中
                        var arr = new Array();
                        $("input:checkbox[name='authority']:checked").each(function (i) {
                            arr[i] = $(this).val();
                        });
                        //  替换 data.field.foodId的数据为拼接后的字符串
                        data.field.authority = arr.join(",");//将数组合并成字符串
                        $.ajax({
                            url: 'updManager',
                            //此行数据返回,后台获取data.id即可
                            type: "post",
                            dataType: "text",
                            data: {
                                mid: mid,
                                mname: document.getElementById("name").value,
                                password: document.getElementById("pwd").value,
                                authority: data.field.authority
                            },
                            success: function (data) {
                                //浮窗显示成功
                                if (data === "success") {
                                    parent.layer.msg("提交成功");
                                    layer.close(index);
                                    window.location = "toAdministratorManagement"
                                } else {
                                    layer.msg("提交失败");
                                }
                            }
                        });
                        return false;
                    });
                }
            });

        })
    };
</script>
</body>
</html>