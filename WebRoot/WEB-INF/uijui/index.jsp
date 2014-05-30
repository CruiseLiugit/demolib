<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/taglibs.jsp"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>简单实用国产jQuery UI框架 - DWZ富客户端框架(J-UI.com)</title>

<link href="${base}/juithemes/default/style.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="${base}/juithemes/css/core.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="${base}/juithemes/css/print.css" rel="stylesheet" type="text/css" media="print"/>
<link href="${base}/juiuploadify/css/uploadify.css" rel="stylesheet" type="text/css" media="screen"/>
<!--[if IE]>
<link href="${base}/juithemes/css/ieHack.css" rel="stylesheet" type="text/css" media="screen"/>
<![endif]-->

<!--[if lte IE 9]>
<script src="${base}/juijs/speedup.js" type="text/javascript"></script>
<![endif]-->

<script src="${base}/juijs/jquery-1.7.2.js" type="text/javascript"></script>
<script src="${base}/juijs/jquery.cookie.js" type="text/javascript"></script>
<script src="${base}/juijs/jquery.validate.js" type="text/javascript"></script>
<script src="${base}/juijs/jquery.bgiframe.js" type="text/javascript"></script>
<script src="${base}/juixheditor/xheditor-1.2.1.min.js" type="text/javascript"></script>
<script src="${base}/juixheditor/xheditor_lang/zh-cn.js" type="text/javascript"></script>
<script src="${base}/juiuploadify/scripts/jquery.uploadify.js" type="text/javascript"></script>

<!-- svg图表  supports Firefox 3.0+, Safari 3.0+, Chrome 5.0+, Opera 9.5+ and Internet Explorer 6.0+ 
<script type="text/javascript" src="${base}/juichart/raphael.js"></script>
<script type="text/javascript" src="${base}/juichart/g.raphael.js"></script>
<script type="text/javascript" src="${base}/juichart/g.bar.js"></script>
<script type="text/javascript" src="${base}/juichart/g.line.js"></script>
<script type="text/javascript" src="${base}/juichart/g.pie.js"></script>
<script type="text/javascript" src="${base}/juichart/g.dot.js"></script>
-->

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
<!-- -->
<script src="${base}/juibin/dwz.min.js" type="text/javascript"></script>
<script src="${base}/juijs/dwz.regional.zh.js" type="text/javascript"></script>

<script type="text/javascript">
/*
$(function(){	
	DWZ.init("/styles/management/dwz.frag.xml", {
		//loginUrl:"/management/index!login.do", loginTitle:"Login",	// 弹出登录对话框
		loginUrl:"/index!login.do",	// 跳到登录页面
		debug:false,	// 调试模式 【true|false】
		callback:function(){
			initEnv();
			$("#themeList").theme({themeBase:"/styles/management/themes"});
		}
	});
});
*/
</script>

<script type="text/javascript">
$(function(){
	//加载时提示信息的配置文件
	DWZ.init("dwz.frag.xml", {
		loginUrl:"/demo1login", loginTitle:"登录",// 弹出登录对话框，也可以login_dialog.html
		//loginUrl:"/demo1login",	// 直接跳到登录页面
		//statusCode:{ok:200, error:300, timeout:301}, //【可选】
		//pageInfo:{pageNum:"pageNum", numPerPage:"numPerPage", orderField:"orderField", orderDirection:"orderDirection"}, //【可选】
		debug:false,	// 调试模式 【true|false】
		callback:function(){
			initEnv();
			$("#themeList").theme({themeBase:"juithemes"}); // themeBase 相对于index页面的主题base路径
		}
	});
});

</script>
</head>

<body scroll="no">
	<div id="layout">
	
		<!-- 1 顶部header -->
		<div id="header">
			<div class="headerNav">
				<a class="logo" href="http://j-ui.com">标志</a>
				<!-- 城市切换 -->
				<ul class="nav">
					<li id="switchEnvBox"><a href="javascript:">（<span>北京</span>）切换城市</a>
						<ul>
							<li><a href="sidebar_1.html">北京</a></li>
							<li><a href="sidebar_2.html">上海</a></li>
						</ul>
					</li>
					<li><a href="${base }/demo1login" target="dialog" width="600" title="用户登录">登录</a></li>
					<li><a href="#">退出</a></li>
				</ul>
				
				<!-- 背景模版切换 -->
				<ul class="themeList" id="themeList">
					<li theme="default"><div class="selected">蓝色</div></li>
					<li theme="green"><div>绿色</div></li>
					<li theme="purple"><div>紫色</div></li>
					<li theme="silver"><div>银色</div></li>
					<li theme="azure"><div>天蓝</div></li>
				</ul>
				
			</div>
			<!-- headerNav -->
			
		</div>

		<!-- 2 左侧菜单 -->
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
									<!-- a 标签中的 target="navTab" ，指定在页面打开 -->
									<li><a href="${base }/demo2" target="navTab" rel="pageadd">navTab页面增加数据到后台</a></li>
									<li><a href="${base }/demo3" target="dialog" width="600" rel="pageadd">dialog页面增加数据到后台</a></li>
									<li><a href="${base }/demo4" target="navTab" rel="pagelist">显示后台列表数据页面</a></li>
									<!-- 
									<li><a href="http://www.baidu.com" target="navTab" rel="page1">页面一(外部页面)</a></li>
									<li><a href="demo_page2.html" target="navTab" rel="external" external="true">iframe navTab页面</a></li>
									<li><a href="demo_page1.html" target="navTab" rel="page1" fresh="false">替换页面一</a></li>
									<li><a href="demo_page2.html" target="navTab" rel="page2">页面二</a></li>
									 -->
								</ul>
							</li>
			
						</ul>
					</div>
					
				</div>
			</div>
		</div>
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
							<p><span>DWZ富客户端框架</span></p>
							<p>DWZ官方微博:<a href="http://weibo.com/dwzui" target="_blank">http://weibo.com/dwzui</a></p>
						</div>
					
					</div>
					
				</div>
			</div>
		</div>

	</div>

	<div id="footer">Copyright &copy; 2010 <a href="demo_page2.html" target="dialog">DWZ团队</a> 京ICP备05019125号-10</div>

</body>
</html>