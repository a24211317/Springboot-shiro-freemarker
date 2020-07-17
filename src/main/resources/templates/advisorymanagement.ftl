<#include "header.ftl">

<!-- 顶部 -->
<nav class="navbar navbar-header navbar-expand-lg">

    <div class="container-fluid">
        <div style="color: white">
            <h3>咨询管理/咨询列表</h3>
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
                <li class="nav-item active submenu">
                    <a data-toggle="collapse" href="#tables">
                        <i class="fas fa-comment"></i>
                        <p>咨询管理</p>
                        <span class="caret"></span>
                    </a>
                    <div class="collapse show" id="tables">
                        <ul class="nav nav-collapse">
                            <li class="active">
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
                            <h4 class="card-title">咨询列表</h4>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table id="basic-datatables" class="display table  table-bordered"
                                       style="text-align: left">
                                    <thead>
                                    <tr>
                                        <th>姓名</th>
                                        <th>咨询内容</th>
                                        <th>咨询时间</th>
                                        <th>联系方式</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <#list advisoriess as advisory>
                                        <tr>
                                            <td>${advisory.name}</td>
                                            <td>${advisory.content}</td>
                                            <td>${advisory.createTime}</td>
                                            <td>${advisory.mobile}</td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="#" onclick="detail(${advisory.aid})" id="detail">查看详情</a>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="javascript:setAid(${advisory.aid})" id="delButton">删除</a>
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

<#include "footer.ftl">
<#--<script type="text/javascript">
    function delAdvisory(aid) {
        $.ajax({
            url: "delAdvisory",
            type: "post",
            dataType: "text",
            data: {
                aid: aid,
            },
            success: function (data) {
                if (data === "success") {
                    alert("删除成功");
                    $(dom).parents("tr").remove();
                } else {
                    alert("删除失败")
                }
            }
        });
    }
    
</script>-->
<script type="text/javascript">
    $(document).ready(function () {
        $('#basic-datatables').DataTable({
            ordering: false,
            lengthChange: false,
            info: false,
            "oLanguage": {
                "sInfoEmpty": "没有数据",
                "oPaginate": {
                    "sFirst": "首页",
                    "sPrevious": "前一页",
                    "sNext": "后一页",
                    "sLast": "尾页"
                },
                "sZeroRecords": "没有检索到数据",
            }
        });
    });
</script>

<script>
    var aidData = "";

    function setAid(delIid) {
        aidData = delIid;
    }

    function detail(aid) {
        $.ajax({
            url: "getAdvisorymangementByAid",
            type: "post",
            dataType: "json",
            data: {
                aid: aid
            }, success(data) {
                layui.use(['layer'], function () {
                    layer.open({
                        type: 1,
                        title: "咨询内容详情",
                        area: ['550px', '500px'],
                        content:
                            '<div ><div style="float:left; margin-top: 40px; width:100px;height:16px;margin-left: 20px;font-size: 15px">咨询人：</div>' +
                            '<div style="float: left;margin-top: 40px;width: 330px;height:16px;"><div style="padding-top: 1px; font-size: 15px"> ' + data.name + '&nbsp&nbsp' + data.mobile + '</div></div></div>' +
                            '<div style="clear:both;" ><div style="float:left; margin-top: 40px; width:100px;height:16px;margin-left: 20px;font-size: 15px">咨询内容：</div></div>' +
                            '<div style="float: left;margin-top: 40px;width: 330px;height:16px;"><div style="padding-top: 1px; font-size: 15px"> ' + data.content + '</div></div>' +
                            '<div style="clear:both;" ><div style="float:left; margin-top: 40px; width:100px;height:16px;margin-left: 20px; font-size: 15px">相关条款：</div></div>' +
                            '<div style="float: left;margin-top: 40px;width: 330px;height:16px;"><div style="padding-top: 1px; font-size: 15px"> ' + data.termName + '</div></div>'
                            + '<div style="position: relative;height: 20px;clear:both; text-align: center"><button  class="btn btn-primary" onclick="layer.close(layer.index);" style="position: relative;margin-top: 220px">取消</button></div>',
                    });

                })
            }
        })
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
                            url: "delAdvisory",
                            type: "post",
                            dataType: "text",
                            data: {
                                aid: aidData
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
                                        row.remove();
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