<#include "header.ftl">

        <!-- 顶部 -->
        <nav class="navbar navbar-header navbar-expand-lg">

            <div class="container-fluid">
                <div style="color: white">
                    <h3>法规管理/法规目录结构/法规目录管理</h3>
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
                                <li class="active">
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
                                <h4 class="card-title">法规目录管理</h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <label for="rid"> 选择法规:</label>
                                    <select id="rid" name="rid" onchange="menu()">
                                        <option value="" selected>请选择</option>
                                        <#list allRegulations as regulation>
                                            <option value="${regulation.rid}">${regulation.alias}
                                                ${regulation.rname}</option>
                                        </#list>
                                    </select>
                                    <div class="card-sub" style="text-align: center">
                                        选择法规进行查看
                                    </div>
                                    <table id="basic-datatables" class="display table  table-bordered"
                                           style="text-align: left">
                                        <thead>
                                        <tr>
                                            <td>目录名称</td>
                                            <td>排序</td>
                                            <td>操作</td>
                                        </tr>
                                        </thead>
                                        <tbody>
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
<!-- Sweet Alert -->
<script src="assets/js/plugin/sweetalert/sweetalert.min.js"></script>
<!-- Azzara DEMO methods, don't include it in your project! -->
<script src="assets/js/setting-demo.js"></script>
<!-- Azzara JS -->
<script src="assets/js/ready.min.js"></script>
<script type="text/javascript">
    function menu() {
        var tb = document.getElementById('basic-datatables');
        var rowNum = tb.rows.length;
        for (i = 0; i < rowNum; i++) {
            tb.deleteRow(i);
            rowNum = rowNum - 1;
            i = i - 1;
        }
        $("#basic-datatables").append("<tr><td>目录名称</td><td>排序</td><td>操作</td></tr>");
        $.ajax({
            url: 'getDirectoryByRid',
            //此行数据返回,后台获取data.id即可
            type: "post",
            dataType: "JSON",
            data: {
                rid: $("#rid").val()
            },
            success: function (data) {
                var str = "";//定义用于拼接的字符串
                var status = "failed";
                for (var i = 0; i < data.length; i++) {
                    status = "failed";
                    if (data[i].level === 1) {
                        for (var k = 0; k < data.length; k++) {
                            if (data[k].parentId === data[i].did && data[k].level === 2) {
                                if (status === "failed") {
                                    str = "<tr>" +
                                        "<td>+" + data[i].dname + "</td>" +
                                        "<td>" + data[i].sort + "</td>" +
                                        "<td><button onclick='setId(" + data[i].did + ")' class='btn btn-link btn-danger' type='button' id='delButton'>" + "删除" + "</button></td>" +
                                        "</tr>";
                                    status = "success";
                                    $("#basic-datatables").append(str);
                                }

                                str = "<tr>" +
                                    "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + data[k].dname + "</td>" +
                                    "<td>" + data[k].sort + "</td>" +
                                    "<td><button onclick='setId(" + data[i].did + ")' class='btn btn-link btn-danger' type='button' id='delButton'>" + "删除" + "</button></td>" + "</tr>";
                                $("#basic-datatables").append(str);
                            }
                        }
                        if (status === "failed") {
                            str = "<tr>" +
                                "<td>+" + data[i].dname + "</td>" +
                                "<td>" + data[i].sort + "</td>" +
                                "<td><button onclick='setId(" + data[i].did + ")' class='btn btn-link btn-danger' type='button' id='delButton'>" + "删除" + "</button></td>" + "</tr>";
                            $("#basic-datatables").append(str);
                        }
                    }
                }
                $("#basic-datatables").append("</tbody>");
            }


        });
    };
</script>
<script>
    var idData = "";

    function setId(setId) {
        idData = setId;
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
                            url: "delDirectory",
                            type: "post",
                            dataType: "text",
                            data: {
                                did: idData
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
                                        menu();
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
</body>
</html>