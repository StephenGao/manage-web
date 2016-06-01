<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/commons/taglibs.jsp" %>
<ul class="nav ace-nav">
    <li class="purple">
        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
            <i class="icon-bell-alt icon-animated-bell"></i>
            <span class="badge badge-important">8</span>
        </a>

        <ul class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
            <li class="dropdown-header">
                <i class="icon-warning-sign"></i>
                8条通知
            </li>

            <li>
                <a href="#">
                    <div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-pink icon-comment"></i>
												新闻评论
											</span>
                        <span class="pull-right badge badge-info">+12</span>
                    </div>
                </a>
            </li>


            <li>
                <a href="#">
                    <div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-success icon-shopping-cart"></i>
												新订单
											</span>
                        <span class="pull-right badge badge-success">+8</span>
                    </div>
                </a>
            </li>

            <li>
                <a href="#">
                    查看所有通知
                    <i class="icon-arrow-right"></i>
                </a>
            </li>
        </ul>
    </li>



    <li class="light-blue">
        <a data-toggle="dropdown" href="#" class="dropdown-toggle">
            <img class="nav-user-photo" src="${ctx}/static/img/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									<small>欢迎光临,</small>
									Jason
								</span>

            <i class="icon-caret-down"></i>
        </a>

        <ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
            <li>
                <a href="#">
                    <i class="icon-cog"></i>
                    设置
                </a>
            </li>

            <li>
                <a href="#">
                    <i class="icon-user"></i>
                    个人资料
                </a>
            </li>

            <li class="divider"></li>

            <li>
                <a href="#">
                    <i class="icon-off"></i>
                    退出
                </a>
            </li>
        </ul>
    </li>
</ul>
