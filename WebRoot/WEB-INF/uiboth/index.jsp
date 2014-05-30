<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<!--
		Charisma v1.0.0

		Copyright 2012 Muhammad Usman
		Licensed under the Apache License v2.0
		http://www.apache.org/licenses/LICENSE-2.0

		http://usman.it
		http://twitter.com/halalit_usman
	-->
<meta charset="utf-8">
<title>Bootstrap jUI Both</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
<meta name="author" content="Muhammad Usman">

<!-- The styles -->
<link id="bs-css" href="${base }/css/bootstrap-cerulean.css"
	rel="stylesheet">
<style type="text/css">
body {
	padding-bottom: 40px;
}

.sidebar-nav {
	padding: 9px 0;
}
</style>
<link href="${base }/css/bootstrap-responsive.css" rel="stylesheet">
<link href="${base }/css/charisma-app.css" rel="stylesheet">
<link href="${base }/css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
<link href='${base }/css/fullcalendar.css' rel='stylesheet'>
<link href='${base }/css/fullcalendar.print.css' rel='stylesheet'
	media='print'>
<link href='${base }/css/chosen.css' rel='stylesheet'>
<link href='${base }/css/uniform.default.css' rel='stylesheet'>
<link href='${base }/css/colorbox.css' rel='stylesheet'>
<link href='${base }/css/jquery.cleditor.css' rel='stylesheet'>
<link href='${base }/css/jquery.noty.css' rel='stylesheet'>
<link href='${base }/css/noty_theme_default.css' rel='stylesheet'>
<link href='${base }/css/elfinder.min.css' rel='stylesheet'>
<link href='${base }/css/elfinder.theme.css' rel='stylesheet'>
<link href='${base }/css/jquery.iphone.toggle.css' rel='stylesheet'>
<link href='${base }/css/opa-icons.css' rel='stylesheet'>
<link href='${base }/css/uploadify.css' rel='stylesheet'>

<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

<!-- The fav icon -->
<link rel="shortcut icon" href="${base }/img/favicon.ico">

<!-- =======================jUI========================= -->

<link href="${base}/juithemes/default/style.css" rel="stylesheet"
	type="text/css" media="screen" />
<link href="${base}/juithemes/css/core.css" rel="stylesheet"
	type="text/css" media="screen" />
<link href="${base}/juithemes/css/print.css" rel="stylesheet"
	type="text/css" media="print" />
<link href="${base}/juiuploadify/css/uploadify.css" rel="stylesheet"
	type="text/css" media="screen" />
<!--[if IE]>
<link href="${base}/juithemes/css/ieHack.css" rel="stylesheet" type="text/css" media="screen"/>
<![endif]-->

<!--[if lte IE 9]>
<script src="${base}/juijs/speedup.js" type="text/javascript"></script>
<![endif]-->
</head>

<body scroll="no">
	<div id="layout">
		
		<!-- topbar starts -->
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="index.html"> <img alt="Charisma Logo" src="${base }/img/logo20.png" /> <span>Charisma</span></a>
				
				<!-- theme selector starts -->
				<div class="btn-group pull-right theme-container" >
					<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="icon-tint"></i><span class="hidden-phone"> Change Theme / Skin</span>
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu" id="themes">
						<li><a data-value="classic" href="#"><i class="icon-blank"></i> Classic</a></li>
						<li><a data-value="cerulean" href="#"><i class="icon-blank"></i> Cerulean</a></li>
						<li><a data-value="cyborg" href="#"><i class="icon-blank"></i> Cyborg</a></li>
						<li><a data-value="redy" href="#"><i class="icon-blank"></i> Redy</a></li>
						<li><a data-value="journal" href="#"><i class="icon-blank"></i> Journal</a></li>
						<li><a data-value="simplex" href="#"><i class="icon-blank"></i> Simplex</a></li>
						<li><a data-value="slate" href="#"><i class="icon-blank"></i> Slate</a></li>
						<li><a data-value="spacelab" href="#"><i class="icon-blank"></i> Spacelab</a></li>
						<li><a data-value="united" href="#"><i class="icon-blank"></i> United</a></li>
					</ul>
				</div>
				<!-- theme selector ends -->
				
				<!-- user dropdown starts -->
				<div class="btn-group pull-right" >
					<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
						<i class="icon-user"></i><span class="hidden-phone"> admin</span>
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="#">Profile</a></li>
						<li class="divider"></li>
						<li><a href="login.html">Logout</a></li>
					</ul>
				</div>
				<!-- user dropdown ends -->
				
				<div class="top-nav nav-collapse">
					<ul class="nav">
						<li><a href="#">Visit Site</a></li>
						<li>
							<form class="navbar-search pull-left">
								<input placeholder="Search" class="search-query span2" name="query" type="text">
							</form>
						</li>
					</ul>
				</div><!--/.nav-collapse -->
			</div>
		</div>
	</div>
	<!-- topbar ends -->
		
		
		
		
		<!-- leftside begin -->
		<div id="leftside">
			<div id="sidebar_s">
				<div class="collapse">
					<div class="toggleCollapse"><div></div></div>
				</div>
			</div>
			<div id="sidebar">
				<div class="toggleCollapse"><h2>主菜单</h2><div>收缩</div></div>

				<div class="accordion" fillSpace="sidebar">
					<div class="accordionHeader">
						<h2><span>Folder</span>界面组件</h2>
					</div>
					<div class="accordionContent">
						<ul class="tree treeFolder">
							<li><a href="tabsPage.html" target="navTab">主框架面板</a>
								<ul>
									<li><a href="main.html" target="navTab" rel="main"><i class="icon-home"></i>我的主页</a></li>
									<li><a href="http://www.baidu.com" target="navTab" rel="page1">页面一(外部页面)</a></li>
									<li><a href="demo_page2.html" target="navTab" rel="external" external="true">iframe navTab页面</a></li>
									<li><a href="demo_page1.html" target="navTab" rel="page1" fresh="false">替换页面一</a></li>
									<li><a href="demo_page2.html" target="navTab" rel="page2">页面二</a></li>
									<li><a href="demo_page4.html" target="navTab" rel="page3" title="页面三（自定义标签名）">页面三</a></li>
									<li><a href="demo_page4.html" target="navTab" rel="page4" fresh="false">测试页面（fresh="false"）</a></li>
									<li><a href="w_editor.html" target="navTab">表单提交会话超时</a></li>
									<li><a href="demo/common/ajaxTimeout.html" target="navTab">navTab会话超时</a></li>
									<li><a href="demo/common/ajaxTimeout.html" target="dialog">dialog会话超时</a></li>
									<li><a href="index_menu.html" target="_blank">横向导航条</a></li>
								</ul>
							</li>
							
							<li><a>常用组件</a>
								<ul>
									<li><a href="w_panel.html" target="navTab" rel="w_panel">面板</a></li>
									<li><a href="w_tabs.html" target="navTab" rel="w_tabs">选项卡面板</a></li>
									<li><a href="w_dialog.html" target="navTab" rel="w_dialog">弹出窗口</a></li>
									<li><a href="w_alert.html" target="navTab" rel="w_alert">提示窗口</a></li>
									<li><a href="w_list.html" target="navTab" rel="w_list">CSS表格容器</a></li>
									<li><a href="demo_page1.html" target="navTab" rel="w_table">表格容器</a></li>
									<li><a href="w_removeSelected.html" target="navTab" rel="w_table">表格数据库排序+批量删除</a></li>
									<li><a href="w_tree.html" target="navTab" rel="w_tree">树形菜单</a></li>
									<li><a href="w_accordion.html" target="navTab" rel="w_accordion">滑动菜单</a></li>
									<li><a href="w_editor.html" target="navTab" rel="w_editor">编辑器</a></li>
									<li><a href="w_datepicker.html" target="navTab" rel="w_datepicker">日期控件</a></li>
									<li><a href="demo/database/db_widget.html" target="navTab" rel="db">suggest+lookup+主从结构</a></li>
									<li><a href="demo/database/treeBringBack.html" target="navTab" rel="db">tree查找带回</a></li>
									<li><a href="demo/sortDrag/1.html" target="navTab" rel="sortDrag">单个sortDrag示例</a></li>
									<li><a href="demo/sortDrag/2.html" target="navTab" rel="sortDrag">多个sortDrag示例</a></li>
								</ul>
							</li>
									
							<li><a>表单组件</a>
								<ul>
									<li><a href="w_validation.html" target="navTab" rel="w_validation">表单验证</a></li>
									<li><a href="w_button.html" target="navTab" rel="w_button">按钮</a></li>
									<li><a href="w_textInput.html" target="navTab" rel="w_textInput">文本框/文本域</a></li>
									<li><a href="w_combox.html" target="navTab" rel="w_combox">下拉菜单</a></li>
									<li><a href="w_checkbox.html" target="navTab" rel="w_checkbox">多选框/单选框</a></li>
									<li><a href="demo_upload.html" target="navTab" rel="demo_upload">iframeCallback表单提交</a></li>
									<li><a href="w_uploadify.html" target="navTab" rel="w_uploadify">uploadify多文件上传</a></li>
								</ul>
							</li>
							<li><a>组合应用</a>
								<ul>
									<li><a href="demo/pagination/layout1.html" target="navTab" rel="pagination1">局部刷新分页1</a></li>
									<li><a href="demo/pagination/layout2.html" target="navTab" rel="pagination2">局部刷新分页2</a></li>
								</ul>
							</li>
							<li><a>图表</a>
								<ul>
									<li><a href="${base}/juichart/test/barchart.html" target="navTab" rel="chart">柱状图(垂直)</a></li>
									<li><a href="${base}/juichart/test/hbarchart.html" target="navTab" rel="chart">柱状图(水平)</a></li>
									<li><a href="${base}/juichart/test/linechart.html" target="navTab" rel="chart">折线图</a></li>
									<li><a href="${base}/juichart/test/linechart2.html" target="navTab" rel="chart">曲线图</a></li>
									<li><a href="${base}/juichart/test/linechart3.html" target="navTab" rel="chart">曲线图(自定义X坐标)</a></li>
									<li><a href="${base}/juichart/test/piechart.html" target="navTab" rel="chart">饼图</a></li>
								</ul>
							</li>
							<li><a href="dwz.frag.xml" target="navTab" external="true">dwz.frag.xml</a></li>
						</ul>
					</div>
					<div class="accordionHeader">
						<h2><span>Folder</span>典型页面</h2>
					</div>
					<div class="accordionContent">
						<ul class="tree treeFolder treeCheck">
							<li><a href="demo_page1.html" target="navTab" rel="demo_page1">查询我的客户</a></li>
							<li><a href="demo_page1.html" target="navTab" rel="demo_page2">表单查询页面</a></li>
							<li><a href="demo_page4.html" target="navTab" rel="demo_page4">表单录入页面</a></li>
							<li><a href="demo_page5.html" target="navTab" rel="demo_page5">有文本输入的表单</a></li>
							<li><a href="javascript:;">有提示的表单输入页面</a>
								<ul>
									<li><a href="javascript:;">页面一</a></li>
									<li><a href="javascript:;">页面二</a></li>
								</ul>
							</li>
							<li><a href="javascript:;">选项卡和图形的页面</a>
								<ul>
									<li><a href="javascript:;">页面一</a></li>
									<li><a href="javascript:;">页面二</a></li>
								</ul>
							</li>
							<li><a href="javascript:;">选项卡和图形切换的页面</a></li>
							<li><a href="javascript:;">左右两个互动的页面</a></li>
							<li><a href="javascript:;">列表输入的页面</a></li>
							<li><a href="javascript:;">双层栏目列表的页面</a></li>
						</ul>
					</div>
					<div class="accordionHeader">
						<h2><span>Folder</span>流程演示</h2>
					</div>
					<div class="accordionContent">
						<ul class="tree">
							<li><a href="newPage1.html" target="dialog" rel="dlg_page">列表</a></li>
							<li><a href="newPage1.html" target="dialog" rel="dlg_page2">列表</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- leftside end -->
		
		<noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
				</div>
			</noscript>
		
		
		<!-- container begin  -->
		<div id="container">
			<div id="navTab" class="tabsPage">
				<div class="tabsPageHeader">
					<div class="tabsPageHeaderContent"><!-- 显示左右控制时添加 class="tabsPageHeaderMargin" -->
						<ul class="navTab-tab">
							<li tabid="main" class="main"><a href="javascript:;"><span><span class="home_icon">我的主页</span></span></a></li>
						</ul>
					</div>
					<div class="tabsLeft">left</div><!-- 禁用只需要添加一个样式 class="tabsLeft tabsLeftDisabled" -->
					<div class="tabsRight">right</div><!-- 禁用只需要添加一个样式 class="tabsRight tabsRightDisabled" -->
					<div class="tabsMore">more</div>
				</div>
				<ul class="tabsMoreList">
					<li><a href="javascript:;">我的主页</a></li>
				</ul>
				<div class="navTab-panel tabsPageContent layoutBox">
					<div class="page unitBox">
						<div class="accountInfo">
							<div class="alertInfo">
								<h2><a href="doc/dwz-user-guide.pdf" target="_blank">DWZ框架使用手册(PDF)</a></h2>
								<a href="doc/dwz-user-guide.swf" target="_blank">DWZ框架演示视频</a>
							</div>
							<div class="right">
								<p><a href="doc/dwz-user-guide.zip" target="_blank" style="line-height:19px">DWZ框架使用手册(CHM)</a></p>
								<p><a href="doc/dwz-ajax-develop.swf" target="_blank" style="line-height:19px">DWZ框架Ajax开发视频教材</a></p>
							</div>
							<p>DWZ富客户端框架</p>
							<p>DWZ官方微博:<a href="http://weibo.com/dwzui" target="_blank">http://weibo.com/dwzui</a></p>
						</div>
						<div class="pageFormContent" layoutH="80" style="margin-right:230px">
							
							<p style="color:red">DWZ官方微博 <a href="http://weibo.com/dwzui" target="_blank">http://weibo.com/dwzui</a></p>
							<p style="color:red">DWZ官方微群 <a href="http://q.weibo.com/587328/invitation=11TGXSt-148c2" target="_blank">http://q.weibo.com/587328/invitation=11TGXSt-148c2</a></p>

<div class="divider"></div>
<h2>dwz v1.2视频教程:</h2>
<p><a href="http://www.u-training.com/thread-57-1-1.html" target="_blank">http://www.u-training.com/thread-57-1-1.html</a></p>

<div class="divider"></div>
<h2>DWZ系列开源项目:</h2>
<div class="unit"><a href="http://code.google.com/p/dwz/" target="_blank">dwz富客户端框架 - jUI</a></div>
<div class="unit"><a href="http://code.google.com/p/dwz4j" target="_blank">dwz4j(Java Web)快速开发框架 + jUI整合应用</a></div>
<div class="unit"><a href="http://code.google.com/p/dwz4php" target="_blank">ThinkPHP + jUI整合应用</a></div>
<div class="unit"><a href="http://code.google.com/p/dwz4php" target="_blank">Zend Framework + jUI整合应用</a></div>
<div class="unit"><a href="http://www.yiiframework.com/extension/dwzinterface/" target="_blank">YII + jUI整合应用</a></div>

<div class="divider"></div>
<h2>常见问题及解决:</h2>
<pre style="margin:5px;line-height:1.4em">
Error loading XML document: dwz.frag.xml
直接用IE打开index.html弹出一个对话框：Error loading XML document: dwz.frag.xml
原因：没有加载成功dwz.frag.xml。IE ajax laod本地文件有限制, 是ie安全级别的问题, 不是框架的问题。
解决方法：部署到apache 等 Web容器下。
</pre>

<div class="divider"></div>
<h2>有偿服务请联系:</h2>
<pre style="margin:5px;line-height:1.4em;">
定制化开发，公司培训，技术支持
合作电话：010-52897073
邮箱：support@dwzjs.com
</pre>
						</div>
						
						<div style="width:230px;position: absolute;top:60px;right:0" layoutH="80">
							<iframe width="100%" height="430" class="share_self"  frameborder="0" scrolling="no" src="http://widget.weibo.com/weiboshow/index.php?width=0&height=430&fansRow=2&ptype=1&skin=1&isTitle=0&noborder=1&isWeibo=1&isFans=0&uid=1739071261&verifier=c683dfe7"></iframe>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		<!-- container end -->
	</div>

	<div id="footer">Copyright &copy; 2010 <a href="demo_page2.html" target="dialog">DWZ团队</a> 京ICP备05019125号-10</div>


	<!-- external javascript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	
	<!-- =====================jUI  js======================== -->
	
<script src="${base}/juijs/jquery-1.7.2.js" type="text/javascript"></script>
<script src="${base}/juijs/jquery.cookie.js" type="text/javascript"></script>
<script src="${base}/juijs/jquery.validate.js" type="text/javascript"></script>
<script src="${base}/juijs/jquery.bgiframe.js" type="text/javascript"></script>
<script src="${base}/juixheditor/xheditor-1.2.1.min.js" type="text/javascript"></script>
<script src="${base}/juixheditor/xheditor_lang/zh-cn.js" type="text/javascript"></script>
<script src="${base}/juiuploadify/scripts/jquery.uploadify.js" type="text/javascript"></script>

<!-- svg图表  supports Firefox 3.0+, Safari 3.0+, Chrome 5.0+, Opera 9.5+ and Internet Explorer 6.0+ -->
<script type="text/javascript" src="${base}/juichart/raphael.js"></script>
<script type="text/javascript" src="${base}/juichart/g.raphael.js"></script>
<script type="text/javascript" src="${base}/juichart/g.bar.js"></script>
<script type="text/javascript" src="${base}/juichart/g.line.js"></script>
<script type="text/javascript" src="${base}/juichart/g.pie.js"></script>
<script type="text/javascript" src="${base}/juichart/g.dot.js"></script>

<script src="${base}/juijs/dwz.core.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.util.date.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.validate.method.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.regional.zh.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.barDrag.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.drag.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.tree.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.accordion.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.ui.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.theme.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.switchEnv.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.alertMsg.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.contextmenu.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.navTab.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.tab.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.resize.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.dialog.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.dialogDrag.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.sortDrag.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.cssTable.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.stable.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.taskBar.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.ajax.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.pagination.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.database.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.datepicker.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.effects.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.panel.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.checkbox.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.history.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.combox.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.print.js" type="text/javascript"></script>
<!--
<script src="${base}/juibin/dwz.min.js" type="text/javascript"></script>
-->
<script src="${base}/juijs/dwz.regional.zh.js" type="text/javascript"></script>

<script type="text/javascript">
$(function(){
	DWZ.init("dwz.frag.xml", {
		loginUrl:"login_dialog.html", loginTitle:"登录",	// 弹出登录对话框
//		loginUrl:"login.html",	// 跳到登录页面
		statusCode:{ok:200, error:300, timeout:301}, //【可选】
		pageInfo:{pageNum:"pageNum", numPerPage:"numPerPage", orderField:"orderField", orderDirection:"orderDirection"}, //【可选】
		debug:false,	// 调试模式 【true|false】
		callback:function(){
			initEnv();
			$("#themeList").theme({themeBase:"themes"}); // themeBase 相对于index页面的主题base路径
		}
	});
});

</script>
	
	
	
	<!-- =====================bootstrap js======================= -->
	<!-- jQuery 
	<script src="${base }/js/jquery-1.7.2.min.js"></script>
	-->
	<!-- library for cookie management 
	<script src="${base }/js/jquery.cookie.js"></script>
	-->

	<!-- jQuery UI -->
	<script src="${base }/js/jquery-ui-1.8.21.custom.min.js"></script>
	<!-- transition / effect library -->
	<script src="${base }/js/bootstrap-transition.js"></script>
	<!-- alert enhancer library -->
	<script src="${base }/js/bootstrap-alert.js"></script>
	<!-- modal / dialog library -->
	<script src="${base }/js/bootstrap-modal.js"></script>
	<!-- custom dropdown library -->
	<script src="${base }/js/bootstrap-dropdown.js"></script>
	<!-- scrolspy library -->
	<script src="${base }/js/bootstrap-scrollspy.js"></script>
	<!-- library for creating tabs -->
	<script src="${base }/js/bootstrap-tab.js"></script>
	<!-- library for advanced tooltip -->
	<script src="${base }/js/bootstrap-tooltip.js"></script>
	<!-- popover effect library -->
	<script src="${base }/js/bootstrap-popover.js"></script>
	<!-- button enhancer library -->
	<script src="${base }/js/bootstrap-button.js"></script>
	<!-- accordion library (optional, not used in demo) -->
	<script src="${base }/js/bootstrap-collapse.js"></script>
	<!-- carousel slideshow library (optional, not used in demo) -->
	<script src="${base }/js/bootstrap-carousel.js"></script>
	<!-- autocomplete library -->
	<script src="${base }/js/bootstrap-typeahead.js"></script>
	<!-- tour library -->
	<script src="${base }/js/bootstrap-tour.js"></script>

	<!-- calander plugin -->
	<script src='${base }js/fullcalendar.min.js'></script>
	<!-- data table plugin -->
	<script src='${base }js/jquery.dataTables.min.js'></script>

	<!-- chart libraries start -->
	<script src="${base }/js/excanvas.js"></script>
	<script src="${base }/js/jquery.flot.min.js"></script>
	<script src="${base }/js/jquery.flot.pie.min.js"></script>
	<script src="${base }/js/jquery.flot.stack.js"></script>
	<script src="${base }/js/jquery.flot.resize.min.js"></script>
	<!-- chart libraries end -->

	<!-- select or dropdown enhancer -->
	<script src="${base }/js/jquery.chosen.min.js"></script>
	<!-- checkbox, radio, and file input styler -->
	<script src="${base }/js/jquery.uniform.min.js"></script>
	<!-- plugin for gallery image view -->
	<script src="${base }/js/jquery.colorbox.min.js"></script>
	<!-- rich text editor library -->
	<script src="${base }/js/jquery.cleditor.min.js"></script>
	<!-- notification plugin -->
	<script src="${base }/js/jquery.noty.js"></script>
	<!-- file manager library -->
	<script src="${base }/js/jquery.elfinder.min.js"></script>
	<!-- star rating plugin -->
	<script src="${base }/js/jquery.raty.min.js"></script>
	<!-- for iOS style toggle switch -->
	<script src="${base }/js/jquery.iphone.toggle.js"></script>
	<!-- autogrowing textarea plugin -->
	<script src="${base }/js/jquery.autogrow-textarea.js"></script>
	<!-- multiple file upload plugin -->
	<script src="${base }/js/jquery.uploadify-3.1.min.js"></script>
	<!-- history.js for cross-browser state change on ajax -->
	<script src="${base }/js/jquery.history.js"></script>
	<!-- application script for Charisma demo -->
	<script src="${base }/js/charisma.js"></script>


</body>
</html>
