<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ include file="/commons/taglibs.jsp" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>企业云平台管理系统</title>
	<script src="${ctx}/static/js/jquery-2.1.1.min.js"></script>
	<link rel="stylesheet" href="${ctx}/static/css/login.css">
</head>
<body>
<div class="login-Wrap">
	<!-- S 中间内容部分 -->
	<div class="login-midWrap">
		<div class="login-box">
			<div class="hd"><img src="${ctx}/static/css/img/login/login-title.png"></div>
			<div class="bd">
				<%--<ul class="tabs">--%>
					<%--<li class="current"><a href="#">简</a></li>--%>
					<%--<li><a href="#">En</a></li>--%>
				<%--</ul>--%>
				<form action="" method="post" id="form1">
					<%--<s:token></s:token>--%>
					<div class="cont" id="div1">
						<div class="cell"><input class="txt user" type="text" id="loginname" placeholder="帐号"  name="loginname"/></div>
						<div class="cell"><input class="txt pwd" type="password" id="password" placeholder="密码" name="password"/></div>
						<div class="cell"><input class="txt verify" type="text" id="vc" name="vc"  placeholder="验证码" style="width: 50px;" size="12" >
							<img id="imageMask" style="margin-bottom: -13px;*margin-bottom: 0px;" ><a onclick="">点击刷新</a>
						</div>
						<div class="cell"><input class="btn" id="ss" type="button" ></div>
						<div id="errorDiv" style="display: none;" class='cell'><span id="loginError" class="loginError"></span></div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- E 中间内容部分 -->

	<!-- S 底部信息 -->
	<div class="login-footer">
		<p>版本号：v1.0  xxxx软件科技有限公司 Copyright(c) 2007-2016</p>
		<p>最佳分辨率：1280 * 720</p>
	</div>
	<!-- E 底部信息 -->
</div>
</body>
</html>

