<%--
  Created by IntelliJ IDEA.
  User: jiangcy
  Date: 2018/1/19
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html; charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>秒杀商品列表</title>
    <%@include file="common/head.jsp" %>

    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <link rel="stylesheet" href="https://adminlte.io/themes/AdminLTE/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://adminlte.io/themes/AdminLTE/bower_components/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://adminlte.io/themes/AdminLTE/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="https://adminlte.io/themes/AdminLTE/dist/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="https://adminlte.io/themes/AdminLTE/dist/css/main.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<!-- ADD THE CLASS layout-boxed TO GET A BOXED LAYOUT -->
<body class="hold-transition skin-red sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper" id="rrapp" v-cloak>
    <header class="main-header">
        <a href="javascript:;" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>X-SpringBoot</b></span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>X-SpringBoot</b></span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <div style="float:left;color:#fff;padding:15px 10px;">欢迎</div>
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- <li><a href="javascript:;" @click="donate"><i class="fa fa-jpy"></i> &nbsp;捐赠作者</a></li>-->
                    <li><a href="javascript:;" @click="updatePassword"><i class="fa fa-lock"></i> &nbsp;修改密码</a></li>
                    <li><a href="javascript:;" @click="logout"><i class="fa fa-sign-out"></i> &nbsp;退出系统</a></li>
                </ul>
            </div>
        </nav>
    </header>

    <!-- =============================================== -->

    <!-- Left side column. contains the sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- /.search form -->
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu"><li class="header">导航菜单</li> <li class="active"><a href="javascript:;"><i class="fa fa-cog"></i><span>系统管理
</span><i class="fa fa-angle-left pull-right"></i></a><ul class="treeview-menu"><li class=""><!----><!----><a href="#modules/sys/user.html"><i class="fa
fa-user"></i> 秒杀列表</a></li><li class="active"><!----></li></ul><!----></li></ul>
        </section>
        <!-- /.sidebar -->
    </aside>
    <!-- =============================================== -->


    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <ol class="breadcrumb" id="nav_title" style="position:static;float:none;">
                <li class="active"><i class="fa fa-home" style="font-size:20px;position:relative;top:2px;left:-3px;"></i> &nbsp; 首页</li>
                <li class="active"></li>
            </ol>
        </section>


        <div class="container">
            <div class="panel panel-default">
                <div class="panel-heading text-center">
                    <h2>秒杀列表</h2>

                </div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>名称</th>
                            <th>库存</th>
                            <th>开始时间</th>
                            <th>结束时间</th>
                            <th>创建时间</th>
                            <th>详情页</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${list}" var="sk">
                            <tr>
                                <td>${sk.name}</td>
                                <td>${sk.number}</td>
                                <td>
                                    <fmt:formatDate value="${sk.startTime}" pattern="yyyy-MM-dd HH:mm:ss" />
                                </td>
                                <td>
                                    <fmt:formatDate value="${sk.endTime}" pattern="yyyy-MM-dd HH:mm:ss" />
                                </td>
                                <td>
                                    <fmt:formatDate value="${sk.createTime}" pattern="yyyy-MM-dd HH:mm:ss" />
                                </td>
                                <td><a class="btn btn-info" href="/seckill/${sk.seckillId}/detail" target="_blank">详情</a>
                                    <a class="btn btn-info" href="/swagger-ui.html" target="_blank">详情</a>
                                    <a class="btn btn-info" href="/swagger/index.html" target="_blank">详情</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>


        <!-- Main content -->
        <section class="content" style="background:#fff;">
            <iframe scrolling="yes" frameborder="0" style="width:100%;min-height:200px;overflow:visible;background:#fff;" :src="main"></iframe>
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            Version 1.0.0
        </div>
        Copyright &copy; 2018 <a href="" target="_blank">suke czx</a> All Rights Reserved
    </footer>

    <!-- Add the sidebar's background. This div must be placed
         immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>

    <!-- 修改密码 -->
    <div id="passwordLayer" style="display: none;">
        <form class="form-horizontal">
            <div class="form-group">
                <div class="form-group">
                    <div class="col-sm-2 control-label">账号</div>
                    <span class="label label-success" style="vertical-align: bottom;">{{user.username}}</span>
                </div>
                <div class="form-group">
                    <div class="col-sm-2 control-label">原密码</div>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" v-model="password" placeholder="原密码"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-2 control-label">新密码</div>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" v-model="newPassword" placeholder="新密码"/>
                    </div>
                </div>
            </div>
        </form>
    </div>

</div>
<!-- ./wrapper -->

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>


</body>
</html>
