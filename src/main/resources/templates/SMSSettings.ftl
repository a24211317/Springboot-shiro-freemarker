<#include "header.ftl">
<!-- 顶部 -->
<nav class="navbar navbar-header navbar-expand-lg">

    <div class="container-fluid">
        <div style="color: white">
            <h3>网站管理/短信设置</h3>
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
                            <li class="active">
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
                            <h4 class="card-title">短信设置</h4>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-3"></div>
                                <div class="col-md-6">
                                    <form class="layui-form layui-form-pane" action="">
                                        <div class="form-group form-inline">
                                            <div class="col-md-12 p-0">
                                                <div style="overflow:auto ">
                                                    平台apiKey：
                                                    <input value="${pageContent !}" name="content" id="content">
                                                </div>
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

<#include "footer.ftl">
</div>


<script>
    layui.use(['form', 'layedit'], function () {
        var form = layui.form;
        var layedit = layui.layedit;
        layedit.set({
            uploadImage: {
                url: 'shangchuan' //接口url
                , type: 'post' //默认post
            }
        });
        var index = layedit.build('textarea', {
            tool: [
                'strong' //加粗
                , 'italic' //斜体
                , 'underline' //下划线
                , 'del' //删除线
                , '|' //分割线
                , 'left' //左对齐
                , 'center' //居中对齐
                , 'right' //右对
                , 'face' //表情
                , 'image' //插入图片

            ]
        }); //建立编辑器
        form.on('submit(formDemo)', function (data) {
            $.ajax({
                url: 'addContent',
                type: "post",
                dataType: "text",
                data: {
                    content: document.getElementById("content").value,
                    pname: '3'
                },
                success: function (data) {
                    //浮窗显示成功
                    if (data === "success") {
                        parent.layer.msg("提交成功");
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