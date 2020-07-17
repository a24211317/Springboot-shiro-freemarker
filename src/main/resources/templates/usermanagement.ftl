<#include "header.ftl">

<!-- 顶部 -->
<nav class="navbar navbar-header navbar-expand-lg">

    <div class="container-fluid">
        <div style="color: white">
            <h3>用户管理/用户列表</h3>
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
                    <a data-toggle="collapse" href="#forms">
                        <i class="fas fa-layer-group"></i>
                        <p>法规管理</p>
                        <span class="caret"></span>
                    </a>
                    <div class="collapse" id="forms">
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
                <li class="nav-item active submenu">
                    <a data-toggle="collapse" href="#base">
                        <i class="fas fa-users-cog"></i>
                        <p>用户管理</p>
                        <span class="caret"></span>
                    </a>
                    <div class="collapse show" id="base">
                        <ul class="nav nav-collapse">
                            <li class="active">
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
                            <h4 class="card-title">用户列表</h4>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table id="basic-datatables" class="display table  table-bordered"
                                       style="text-align: left">
                                    <thead>
                                    <tr>
                                        <th>姓名</th>
                                        <th>手机号</th>
                                        <th>性别</th>
                                        <th>会员类型</th>
                                        <th>注册日期</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <#list users as user>
                                        <tr>
                                            <td>${user.uname}</td>
                                            <td>${user.mobile !}</td>
                                            <td>${user.gender !}</td>
                                            <td>
                                                <#if user.member== "0" >
                                                    <input type="radio" checked>免费
                                                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input type="radio">付费
                                                <#else >
                                                    <input type="radio">免费
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input type="radio" checked>付费
                                                </#if>
                                            </td>
                                            <td>${user.createTime}</td>
                                            <td>
                                                <form class="layui-form layui-form-pane" action="/toPay">
                                                    <input type="hidden" name="uid" value="${user.uid}">
                                                    <input type="hidden" name="member" value="${user.member}">
                                                    <button class="layui-btn layui-bg-blue" lay-submit
                                                            lay-filter="formDemo">充值</button>
                                                </form>
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
    layui.use(['form'], function () {
        var form = layui.form;
        form.on('submit(formDemo)', function (data) {
            if(data.field.member==='1'){
                layer.msg("该用户为付费用户，无需充值");
                return false;
            }
        });
    });
</script>
</body>
</html>