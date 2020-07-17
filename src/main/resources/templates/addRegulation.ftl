<#include "header.ftl">
        <!-- 顶部 -->
        <nav class="navbar navbar-header navbar-expand-lg">

            <div class="container-fluid">
                <div style="color: white">
                    <h3>法规管理/新增法规</h3>
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
                                <li class="active">
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
                                <h4 class="card-title">新增法规</h4>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-6">
                                        <form class="layui-form layui-form-pane" action="">
                                            <div class="form-group form-inline">
                                                <label for="inlineinput" class="col-md-3 col-form-label">*法规部号：</label>
                                                <div class="col-md-9 p-0">
                                                    <input lay-verify="required" type="text"
                                                           class="form-control input-full" id="rno" name="rno"
                                                           placeholder="请输入部号数字">
                                                </div>
                                            </div>
                                            <div class="form-group form-inline">
                                                <label for="inlineinput" class="col-md-3 col-form-label">法规部号别名：</label>
                                                <div class="col-md-9 p-0">
                                                    <input type="text" class="form-control input-full" id="alias"
                                                           name="alias"
                                                           placeholder="不超过100字">
                                                </div>
                                            </div>
                                            <div class="form-group form-inline">
                                                <label for="inlineinput" class="col-md-3 col-form-label">法规版本号：</label>
                                                <div class="col-md-9 p-0">
                                                    <input type="text" class="form-control input-full" id="version"
                                                           name="version"
                                                           placeholder="第25.105条">
                                                </div>
                                            </div>
                                            <div class="form-group form-inline">
                                                <label for="inlineinput" class="col-md-3 col-form-label">*法规名称 ：</label>
                                                <div class="col-md-9 p-0">
                                                    <input lay-verify="required" type="text"
                                                           class="form-control input-full" id="rname" name="rname"
                                                           placeholder="不超过100字">
                                                </div>
                                            </div>
                                            <div class="form-group form-inline">
                                                <label for="inlineinput" class="col-md-3 col-form-label">*所属组织 ：</label>
                                                <div class=" p-0 layui-form">
                                                    <select name="levelOne" lay-verify="" lay-filter="levelOne">
                                                        <option value="">请选择所属一级</option>
                                                        <#list levelOne as one>
                                                            <option value="${one.lid}">${one.content}</option>
                                                        </#list>
                                                    </select>
                                                    <select name="levelId" id="levelId" lay-verify="required"
                                                            lay-filter="levelTwo">
                                                        <option value="">请选择所属二级</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group form-inline">
                                                <label for="inlineinput" class="col-md-3 col-form-label">*是否显示 ：</label>
                                                <div class="form-check">
                                                    <label class="form-radio-label">
                                                        <input class="form-radio-input" type="radio" name="status"
                                                               value="1" checked="">
                                                        <span class="form-radio-sign">显示</span>
                                                    </label>
                                                    <label class="form-radio-label ml-3">
                                                        <input class="form-radio-input" type="radio" name="status"
                                                               value="2">
                                                        <span class="form-radio-sign">不显示</span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group form-inline">
                                                <label for="inlineinput" class="col-md-3 col-form-label">*首页法规图标
                                                    ：</label>
                                                <div class="col-md-9 p-0">
                                                    <input type="hidden" id="icon" name="icon" lay-verify="required">
                                                    <button class="layui-bg-blue layui-btn" type="button" id="iconPut">
                                                        上传首页图片
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="form-group form-inline">
                                                <label for="pdf_name"
                                                       class="col-md-3 col-form-label">法规PDF文件名称：</label>
                                                <div class="col-md-9 p-0">
                                                    <input type="text" class="form-control input-full" id="pdfName"
                                                           name="pdfName"
                                                           placeholder="不超过100字">
                                                </div>
                                            </div>
                                            <div class="form-group form-inline">
                                                <label for="pdf_link"
                                                       class="col-md-3 col-form-label">法规PDF文件下载链接：</label>
                                                <div class="col-md-7 p-0">
                                                    <input type="text" class="form-control input-full" id="pdfLink"
                                                           name="pdfLink"
                                                           placeholder="不超过100字">
                                                </div>
                                                <button class="layui-bg-blue layui-btn" type="button" id="pdfPut">
                                                    上传法规
                                                </button>

                                            </div>
                                            <div class="form-group form-inline">
                                                <label for="description"
                                                       class="col-md-3 col-form-label">*法规版本说明：</label>
                                                <div class="col-md-12 p-0">
                                                    <div style="overflow:auto ">
                                                    <textarea name="description" lay-verify="textareaVerify"
                                                              disabled="disabled"
                                                              placeholder="请输入内容" id="textarea"></textarea>
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

<script>
    layui.use(['form', 'layedit', 'upload'], function () {
        var upload = layui.upload;
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

        var uploadInst = upload.render({
            elem: '#pdfPut' //绑定元素
            , url: 'shangchuan' //上传接口
            , exts: 'pdf'
            , accept: 'file'
            , done: function (res) {
                if (res.code === 0) {
                    layer.alert("上传成功");
                    document.getElementById("pdfLink").value = res.data;
                } else {
                    layer.alert("上传失败");
                }
            }
            , error: function () {
                //请求异常回调
            }
        });

        var uploadInst = upload.render({
            elem: '#iconPut' //绑定元素
            , url: 'shangchuan' //上传接口
            , accept: 'images'
            , done: function (res) {
                if (res.code === 0) {
                    layer.alert("上传成功");
                    document.getElementById("icon").value = res.data;
                } else {
                    layer.alert("上传失败");
                }
            }
            , error: function () {
                //请求异常回调
            }
        });
//监听提交
        form.verify({
            textareaVerify: function () { //value：表单的值、item：表单的DOM对象
                if (layedit.getText(index) === '') {
                    return '必填项不能为空';
                }
            }
        });
        form.on('select(levelOne)', function (data) {
            $("#levelId").html("");
            $.ajax({
                url: 'levelTwo',
                //此行数据返回,后台获取data.id即可
                type: "post",
                dataType: "JSON",
                data: {
                    lid: data.value
                },
                success: function (data) {
                    console.log(data)
                    var str = "";//定义用于拼接的字符串
                    str = "<option value=''>" + "请选择所属二级" + "</option>";
                    $("#levelId").append(str);
                    for (var i = 0; i < data.length; i++) {
                        //拼接表格的行和列
                        str = "<option value='" + data[i].lid + " '>" + data[i].content + "</option>";
                        //追加到table中
                        $("#levelId").append(str);
                    }
                    form.render();
                }
            });
        });
        form.on('submit(formDemo)', function (data) {
            $.ajax({
                url: 'addRegulation',
                //此行数据返回,后台获取data.id即可
                type: "post",
                dataType: "text",
                data: {
                    regulations: JSON.stringify(data.field),
                    description: layedit.getText(index)
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