<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ include file="/commons/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<title>企业云平台管理系统</title>
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
</head>
<body class="login-layout">
<div class="main-container">
	<div class="main-content">
		<div class="row">
			<div class="col-sm-10 col-sm-offset-1">
				<div class="login-container">
					<div class="center">
						<h1>
							<i class="icon-leaf green"></i>
							<span class="red">xx</span>
							<span class="white">管理系统</span>
						</h1>
					</div>

					<div class="space-6"></div>
					<div class="position-relative">
						<div id="login-box" class="login-box visible widget-box no-border">
							<div class="widget-body">
								<div class="widget-main">
									<h4 class="header blue lighter bigger">
										<i class="icon-coffee green"></i>
										请输入您的信息
									</h4>

									<div class="space-6"></div>
									<form>
										<fieldset>
											<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" placeholder="用户名/邮箱" />
															<i class="icon-user"></i>
														</span>
											</label>

											<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="密码" />
															<i class="icon-lock"></i>
														</span>
											</label>
											<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text"  class="form-control" style="width:120px;"  placeholder="验证码" />
														</span>
											</label>

											<div class="space"></div>

											<div class="clearfix">
												<label class="inline">
													<input type="checkbox" class="ace" />
													<span class="lbl">记住我</span>
												</label>

												<button type="button" class="width-35 pull-right btn btn-sm btn-primary">
													<i class="icon-key"></i>
													登录
												</button>
											</div>

											<div class="space-4"></div>
										</fieldset>
									</form>


								</div><!-- /widget-main -->
							</div><!-- /widget-body -->
						</div><!-- /login-box -->
					</div><!-- /position-relative -->
				</div>
			</div><!-- /.col -->
		</div><!-- /.row -->
	</div>
</div><!-- /.main-container -->

</body>
</html>


