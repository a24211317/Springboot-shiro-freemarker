<#include "header.ftl">

<!-- 顶部 -->
<nav class="navbar navbar-header navbar-expand-lg">

    <div class="container-fluid">
        <div style="color: white">
            <h3>法规管理/法规列表</h3>
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
                            <li class="active">
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
                            <h4 class="card-title">法规列表</h4>
                        </div>
                        <div style="width: 60%">
                            按CCAR部号检索
                            <table width="100%" style="font-size: 14px;text-align: center">
                                <#list level?keys as levelMap>
                                    <#assign item = level[levelMap]>
                                    <tr>
                                        <#list  item  as itemValue>
                                            <td><a href="/allRegulations?lid=${itemValue.lid}">${itemValue.content}</a>
                                            </td>
                                        </#list>
                                    </tr>
                                </#list>
                                <tr>

                                    <td><a href="/allRegulations">查看全部</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table id="basic-datatables" class="display table table-striped table-hover"
                                       style="text-align: center">
                                    <thead>
                                    <tr>
                                        <th>部号</th>
                                        <th>法规部号别名</th>
                                        <th>版本号</th>
                                        <th>法规名称</th>
                                        <th>所属组织</th>
                                        <th>前台显示</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <#list allRegulations as regulation>
                                        <tr>
                                            <td>${regulation.rno}</td>
                                            <td>${regulation.alias}</td>
                                            <td>${regulation.version!}</td>
                                            <td>${regulation.rname}</td>
                                            <td>${regulation.level}</td>
                                            <td>${regulation.status}</td>
                                            <td>
                                                <form style="display: inline" method="post"
                                                      action="toEditRegulation">
                                                    <input type="hidden" name="rid" value="${regulation.rid}">
                                                    <button type="submit" class="btn btn-link btn-primary btn-lg">
                                                        <i class="fa fa-edit"></i>
                                                    </button>
                                                </form>
                                                <button onclick="setRid(#{regulation.rid})" id="delButton"
                                                        type="button" class="btn btn-link btn-danger">
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
<!-- Azzara JS -->
<script src="assets/js/ready.min.js"></script>
<!-- Sweet Alert -->
<script src="assets/js/plugin/sweetalert/sweetalert.min.js"></script>
<script type="text/javascript">
    var tabel;
    $(document).ready(function () {
        table = $('#basic-datatables').DataTable({
            "ordering": false,
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
    })
</script>
<script>
    var ridData = "";

    function setRid(delRid) {
        ridData = delRid;
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
                            url: "delRegulation",
                            type: "post",
                            dataType: "text",
                            data: {
                                rid: ridData
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
                                        window.location = "allRegulations";
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