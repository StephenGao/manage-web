<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/commons/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>控制台 </title>
    <!-- basic styles -->
    <%@ include file="/commons/meta.jsp" %>
    <link rel="stylesheet" href="${ctx}/static/js/plugins/ace/css/font-awesome.min.css" />
    <!--[if IE 7]>
    <link rel="stylesheet" href="${ctx}/static/js/plugins/ace/css/font-awesome-ie7.min.css" />
    <![endif]-->
    <link rel="stylesheet" href="${ctx}/static/js/plugins/ace/css/ace.min.css" />
    <!--[if lte IE 8]>
    <link rel="stylesheet" href="${ctx}/static/js/plugins/ace/css/ace-ie.min.css" />
    <![endif]-->
    <link rel="stylesheet" href="${ctx}/static/js/plugins/ace/css/ace-rtl.min.css" />
    <link rel="stylesheet" href="${ctx}/static/js/plugins/ace/css/ace-skins.min.css" />

</head>

<body>
<div class="navbar navbar-default" id="navbar">
    <script type="text/javascript">
        try{ace.settings.check('navbar' , 'fixed')}catch(e){}
    </script>

    <div class="navbar-container" id="navbar-container">
        <div class="navbar-header pull-left">
            <a href="#" class="navbar-brand">
                <small>
                    <i class="icon-leaf"></i>
                    xx管理系统
                </small>
            </a>
        </div>

        <div class="navbar-header pull-right" role="navigation">
           <jsp:include page="admin/header.jsp"/>
        </div>
    </div>
</div>

<div class="main-container" id="main-container">
    <script type="text/javascript">
        try{ace.settings.check('main-container' , 'fixed')}catch(e){}
    </script>

    <div class="main-container-inner">
        <a class="menu-toggler" id="menu-toggler" href="#">
            <span class="menu-text"></span>
        </a>

        <div class="sidebar" id="sidebar">
            <script type="text/javascript">
                try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
            </script>

            <%--<div class="sidebar-shortcuts" id="sidebar-shortcuts">--%>

                <%--<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">--%>
                    <%--&lt;%&ndash;<span class="btn btn-success"></span>&ndash;%&gt;--%>

                    <%--<span class="btn btn-info"></span>--%>

                    <%--<span class="btn btn-warning"></span>--%>

                    <%--<span class="btn btn-danger"></span>--%>
                <%--</div>--%>
            <%--</div>--%>

           <jsp:include page="admin/left.jsp"/>
            <script type="text/javascript">
                try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
            </script>
        </div>

        <div class="main-content">
            <div class="breadcrumbs" id="breadcrumbs">
                <script type="text/javascript">
                    try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
                </script>

                <ul class="breadcrumb">
                    <li>
                        <i class="icon-home home-icon"></i>
                        <a href="#">首页</a>
                    </li>
                    <li class="active">
                        <a href="#"> 控制台</a>
                    </li>
                    <li class="active">控制台1</li>
                </ul><!-- .breadcrumb -->


            </div>

            <div class="page-content">
                <div class="row">
                    <iframe frameborder="0" id="con-iframe" name="con-iframe" width="100%" height="500" src=""></iframe>

                </div><!-- /.row -->
            </div><!-- /.page-content -->
        </div><!-- /.main-content -->

        <div class="ace-settings-container" id="ace-settings-container">
            <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
                <i class="icon-cog bigger-150"></i>
            </div>

            <div class="ace-settings-box" id="ace-settings-box">
                <div>
                    <div class="pull-left">
                        <select id="skin-colorpicker" class="hide">
                            <option data-skin="default" value="#438EB9">#438EB9</option>
                            <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                            <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                            <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                        </select>
                    </div>
                    <span>&nbsp; 选择皮肤</span>
                </div>

                <div>
                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
                    <label class="lbl" for="ace-settings-navbar"> 固定导航条</label>
                </div>

                <div>
                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
                    <label class="lbl" for="ace-settings-sidebar"> 固定滑动条</label>
                </div>

                <div>
                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
                    <label class="lbl" for="ace-settings-breadcrumbs">固定面包屑</label>
                </div>

                <div>
                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
                    <label class="lbl" for="ace-settings-rtl">切换到左边</label>
                </div>

                <div>
                    <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
                    <label class="lbl" for="ace-settings-add-container">
                        切换窄屏
                        <b></b>
                    </label>
                </div>
            </div>
        </div><!-- /#ace-settings-container -->
    </div><!-- /.main-container-inner -->


</div><!-- /.main-container -->

<script src="${ctx}/static/js/plugins/ace/js/ace.min.js"></script>
<script src="${ctx}/static/js/plugins/ace/js/ace-extra.min.js"></script>
<script src="${ctx}/static/js/plugins/ace/js/ace-elements.min.js"></script>

<!-- page specific plugin scripts -->
</body>
</html>

