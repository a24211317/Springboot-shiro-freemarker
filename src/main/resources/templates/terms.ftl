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
                            <li class="active">
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
                            <h4 class="card-title">条款列表</h4>
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
                                        <td>条款号</td>
                                        <td>条款号别名</td>
                                        <td>条款标题</td>
                                        <td>所属法规名称</td>
                                        <td>版本号</td>
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

<#include  "footer.ftl">
</div>
<script type="text/javascript">
    function menu() {
        var tb = document.getElementById('basic-datatables');
        var rowNum = tb.rows.length;
        for (i = 0; i < rowNum; i++) {
            tb.deleteRow(i);
            rowNum = rowNum - 1;
            i = i - 1;
        }
        $("#basic-datatables").append("<tr><td>条款号</td><td>条款号别名</td><td>条款标题</td><td>所属法规名称</td><td>版本号</td><td>操作</td></tr>");
        $.ajax({
            url: 'getTermsByRid',
            type: "post",
            dataType: "JSON",
            data: {
                rid: $("#rid").val()
            },
            success: function (data) {
                console.log(data)
                var str = "";//定义用于拼接的字符串
                for (var i = 0; i < data.length; i++) {
                        str = "<tr><td>" + data[i].tno + "</td><td>" + data[i].alias + "</td><td>" + data[i].title + "</td><td>" + $("#rid").find("option:selected").text()+ "</td><td>" + data[i].version + "</td>" +
                            "<td><button onclick='setId(" + data[i].tid + ")' class='btn btn-link btn-danger' type='button' id='delButton'>" + "删除" + "</button></td></tr>"
                        $("#basic-datatables").append(str);
                }
                $("#basic-datatables").append("</tbody>");
            }
        })
    }
</script>
<script>
    var idData = "";

    function setId(setId) {
        console.log(setId)
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
                            url: "delTerm",
                            type: "post",
                            dataType: "text",
                            data: {
                                tid: idData
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