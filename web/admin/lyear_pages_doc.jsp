<%--
  Created by IntelliJ IDEA.
  User: 17146
  Date: 2022/6/8
  Time: 23:21
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
  <link href="css/style.min.css" rel="stylesheet">
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
            <span class="navbar-page-title"> 示例页面 - 文档列表 </span>
          </div>

          <ul class="topbar-right">
            <li class="dropdown dropdown-profile">
              <a href="javascript:void(0)" data-toggle="dropdown">
                <img class="img-avatar img-avatar-48 m-r-10" src="images/users/avatar.jpg" alt="后台系统" />
                <span><a href="../html/home.html">博客首页</a></span>

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
              <div class="card-toolbar clearfix">
                <form class="pull-right search-bar" method="get" action="#!" role="form">
                  <div class="input-group">
                    <div class="input-group-btn">
                      <input type="hidden" name="search_field" id="search-field" value="title">
                      <button class="btn btn-default dropdown-toggle" id="search-btn" data-toggle="dropdown" type="button" aria-haspopup="true" aria-expanded="false">
                        标题 <span class="caret"></span>
                      </button>
                      <ul class="dropdown-menu">
                        <li> <a tabindex="-1" href="javascript:void(0)" data-field="title">标题</a> </li>
                        <li> <a tabindex="-1" href="javascript:void(0)" data-field="cat_name">栏目</a> </li>
                      </ul>
                    </div>
                    <input type="text" class="form-control" value="" name="keyword" placeholder="请输入名称">
                  </div>
                </form>
                <div class="toolbar-btn-action">
                  <a class="btn btn-primary m-r-5" href="lyear_pages_add_doc.html"><i class="mdi mdi-plus"></i> 新增</a>
                  <a class="btn btn-success m-r-5" href="#!"><i class="mdi mdi-check"></i> 启用</a>
                  <a class="btn btn-warning m-r-5" href="#!"><i class="mdi mdi-block-helper"></i> 禁用</a>
                  <a class="btn btn-danger" href="#!"><i class="mdi mdi-window-close"></i> 删除</a>
                </div>
              </div>
              <div class="card-body">

                <div class="table-responsive">
                  <table class="table table-bordered">
                    <thead>
                    <tr>
                      <th>
                        <label class="lyear-checkbox checkbox-primary">
                          <input type="checkbox" id="check-all"><span></span>
                        </label>
                      </th>
                      <th>编号</th>
                      <th>标题</th>
                      <th>浏览量</th>
                      <th>分类</th>
                      <th>标签</th>
                      <th>创建时间</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td>
                        <label class="lyear-checkbox checkbox-primary">
                          <input type="checkbox" name="ids[]" value="1"><span></span>
                        </label>
                      </td>
                      <td>1</td>
                      <td>mysql的安装指南</td>
                      <td>30</td>
                      <td>mysql</td>
                      <td>mysql</td>
                      <td>2022-02-22 11:24:02</td>
                      <td>
                        <font class="text-success">正常</font>
                      </td>
                      <td>
                        <div class="btn-group">
                          <a class="btn btn-xs btn-default" href="#!" title="编辑" data-toggle="tooltip"><i class="mdi mdi-pencil"></i></a>
                          <a class="btn btn-xs btn-default" href="#!" title="删除" data-toggle="tooltip"><i class="mdi mdi-window-close"></i></a>
                        </div>
                      </td>
                    </tbody>
                  </table>
                </div>
                <ul class="pagination">
                  <li class="disabled"><span>«</span></li>
                  <li class="active"><span>1</span></li>
                  <li><a href="#1">2</a></li>
                  <li><a href="#1">3</a></li>
                  <li><a href="#1">4</a></li>
                  <li><a href="#1">5</a></li>
                  <li><a href="#1">6</a></li>
                  <li><a href="#1">7</a></li>
                  <li><a href="#1">8</a></li>
                  <li class="disabled"><span>...</span></li>
                  <li><a href="#!">100</a></li>
                  <li><a href="#!">100</a></li>
                  <li><a href="#!">»</a></li>
                </ul>

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
<script type="text/javascript" src="js/main.min.js"></script>
<script type="text/javascript">
  $(function() {
    $('.search-bar .dropdown-menu a').click(function() {
      var field = $(this).data('field') || '';
      $('#search-field').val(field);
      $('#search-btn').html($(this).text() + ' <span class="caret"></span>');
    });
  });
</script>
</body>
</html>
