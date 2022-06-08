<%--
  Created by IntelliJ IDEA.
  User: 17146
  Date: 2022/6/8
  Time: 23:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <title>后台管理系统</title>
    <link rel="icon" href="favicon.ico" type="image/ico">
    <meta name="keywords" content="LightYear,光年,后台模板,后台管理系统,光年HTML模板">
    <meta name="description" content="LightYear是一个基于Bootstrap v3.3.7的后台管理系统的HTML模板。">
    <meta name="author" content="yinqi">
    <link rel="stylesheet" href="https://www.jq22.com/jquery/bootstrap-3.3.4.css">
    <link href="css/materialdesignicons.min.css" rel="stylesheet">
    <!--标签插件-->
    <link rel="stylesheet" href="js/jquery-tags-input/jquery.tagsinput.min.css">
    <link href="css/style.min.css" rel="stylesheet">
    <!-- 引入 css -->
    <link href="https://unpkg.com/@wangeditor/editor@latest/dist/css/style.css" rel="stylesheet">

    <!-- 引入 js -->

</head>

<body>
<div class="lyear-layout-web">
    <div class="lyear-layout-container">
        <!--左侧导航-->
        <aside class="lyear-layout-sidebar">
            <!-- logo -->
            <div id="logo" class="sidebar-header">
                <a href="index.html"><img src="images/logo-sidebar.png" title="LightYear" alt="LightYear" /></a>
            </div>
            <div class="lyear-layout-sidebar-scroll">

                <nav class="sidebar-main">
                    <ul class="nav nav-drawer">
                        <li class="nav-item nav-item-has-subnav">
                            <a href="javascript:void(0)"><i class="mdi mdi-file-outline"></i> 管理模块</a>
                            <ul class="nav nav-subnav">
                                <li> <a href="lyear_pages_doc.jsp">博客管理</a> </li>
                                <li> <a href="baioqian.jsp">标签管理</a> </li>
                                <li> <a href="fenlei.jsp">分类管理</a> </li>
                                <li> <a href="pinlun.jsp">评论管理</a> </li>
                            </ul>
                        </li>
                        <li class="nav-item nav-item-has-subnav">
                            <a href="javascript:void(0)"><i class="mdi mdi-language-javascript"></i>系统管理</a>
                            <ul class="nav nav-subnav">
                                <li><a href="lyear_pages_edit_pwd.jsp">修改密码</a></li>
                                <li><a href="login.jsp">退出登录</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>

                <div class="sidebar-footer">
                    <!-- <p class="copyright">chizizhixin</p> -->
                </div>
            </div>

        </aside>
        <!--End 左侧导航-->

        <!--头部信息-->
        <header class="lyear-layout-header">

            <nav class="navbar navbar-default">
                <div class="topbar">

                    <div class="topbar-left">
                        <div class="lyear-aside-toggler">
                            <span class="lyear-toggler-bar"></span>
                            <span class="lyear-toggler-bar"></span>
                            <span class="lyear-toggler-bar"></span>
                        </div>
                        <span class="navbar-page-title"> 示例页面 - 新增文档 </span>
                    </div>

                    <ul class="topbar-right">
                        <li class="dropdown dropdown-profile">
                            <a href="javascript:void(0)" data-toggle="dropdown">
                                <img class="img-avatar img-avatar-48 m-r-10" src="images/users/avatar.jpg" alt="后台系统" />
                                <span><a href="../index.html">博客首页</a></span>

                            </a>

                        </li>

                    </ul>
                </div>
            </nav>

        </header>
        <!--End 头部信息-->

        <!--页面主要内容-->
        <main class="lyear-layout-content">

            <div class="container-fluid">

                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">

                                <form action="#!" method="post" class="row">
                                    <div class="form-group col-md-12">
                                        <label for="type">栏目</label>
                                        <div class="form-controls">
                                            <select name="type" class="form-control" id="type">
                                                <option value="1">小说</option>
                                                <option value="2">古籍</option>
                                                <option value="3">专辑</option>
                                                <option value="4">自传</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="title">标题</label>
                                        <input type="text" class="form-control" id="title" name="title" value="" placeholder="请输入标题" />
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="seo_keywords">关键词</label>
                                        <input type="text" class="form-control" id="seo_keywords" name="seo_keywords" value="" placeholder="关键词" />
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="seo_description">描述</label>
                                        <textarea class="form-control" id="seo_description" name="seo_description" rows="5" value="" placeholder="描述"></textarea>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label>多图上传</label>
                                        <div class="form-controls">

                                            <ul class="list-inline clearfix lyear-uploads-pic">
                                                <li class="col-xs-4 col-sm-3 col-md-2">
                                                    <figure>
                                                        <img src="images/gallery/15.jpg" alt="图片一">
                                                        <figcaption>
                                                            <a class="btn btn-round btn-square btn-primary" href="#!"><i class="mdi mdi-eye"></i></a>
                                                            <a class="btn btn-round btn-square btn-danger" href="#!"><i class="mdi mdi-delete"></i></a>
                                                        </figcaption>
                                                    </figure>
                                                </li>
                                                <li class="col-xs-4 col-sm-3 col-md-2">
                                                    <figure>
                                                        <img src="images/gallery/16.jpg" alt="图片二">
                                                        <figcaption>
                                                            <a class="btn btn-round btn-square btn-primary" href="#!"><i class="mdi mdi-eye"></i></a>
                                                            <a class="btn btn-round btn-square btn-danger" href="#!"><i class="mdi mdi-delete"></i></a>
                                                        </figcaption>
                                                    </figure>
                                                </li>
                                                <li class="col-xs-4 col-sm-3 col-md-2">
                                                    <figure>
                                                        <img src="images/gallery/17.jpg" alt="图片三">
                                                        <figcaption>
                                                            <a class="btn btn-round btn-square btn-primary" href="#!"><i class="mdi mdi-eye"></i></a>
                                                            <a class="btn btn-round btn-square btn-danger" href="#!"><i class="mdi mdi-delete"></i></a>
                                                        </figcaption>
                                                    </figure>
                                                </li>
                                                <li class="col-xs-4 col-sm-3 col-md-2">
                                                    <a class="pic-add" id="add-pic-btn" href="#!" title="点击上传"></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="content">内容</label>
                                        <div id="toolbar-container" style="z-index: 101;"></div>
                                        <div id="editor-container" style="z-index: 100;height: 600px;"></div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="tags">标签</label>
                                        <input class="js-tags-input form-control" type="text" id="tags" name="tags" value="" />
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="sort">排序</label>
                                        <input type="text" class="form-control" id="sort" name="sort" value="0" />
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="status">状态</label>
                                        <div class="clearfix">
                                            <label class="lyear-radio radio-inline radio-primary">
                                                <input type="radio" name="status" value="0"><span>禁用</span>
                                            </label>
                                            <label class="lyear-radio radio-inline radio-primary">
                                                <input type="radio" name="status" value="1" checked><span>启用</span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <button type="submit" class="btn btn-primary ajax-post" target-form="add-form">确 定</button>
                                        <button type="button" class="btn btn-default" onclick="javascript:history.back(-1);return false;">返 回</button>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>

                </div>

            </div>

        </main>
        <!--End 页面主要内容-->
    </div>
</div>

<script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="https://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
<script type="text/javascript" src="js/perfect-scrollbar.min.js"></script>
<!--标签插件-->
<script src="js/jquery-tags-input/jquery.tagsinput.min.js"></script>
<script type="text/javascript" src="js/main.min.js"></script>
<script src="https://unpkg.com/@wangeditor/editor@latest/dist/index.js"></script>
<script>
    // var E = window.wangEditor; // 全局变量
    const {
        createEditor,
        createToolbar
    } = window.wangEditor;
    // 编辑器配置
    const editorConfig = {}
    editorConfig.placeholder = '请输入内容'
    editorConfig.onChange = (editor) => {
        // 当编辑器选区、内容变化时，即触发
        console.log('content', editor.children)
        console.log('html', editor.getHtml())
    }
    // 工具栏配置
    const toolbarConfig = {}
    // 创建编辑器
    const editor = createEditor({
        selector: '#editor-container',
        config: editorConfig,
        mode: 'default' // 或 'simple' 参考下文
    })
    // 创建工具栏
    const toolbar = createToolbar({
        editor,
        selector: '#toolbar-container',
        config: toolbarConfig,
        mode: 'default' // 或 'simple' 参考下文
    })
</script>
</body>

</html>
