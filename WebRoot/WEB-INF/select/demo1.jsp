<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>jQuery 三级地市级联菜单_http://www.codefans.net</title>
 <style>
  #test select{
    width:100px;
    margin-left:20px;
  }
  </style>
  
  <script type="text/javascript" src="${base}/js/jquery-1.7.2.min.js"></script>
  <script type="text/javascript" src="${base}/selectjs/jquery.provincesCity.js" ></script>
  <script type="text/javascript" src="${base}/selectjs/provincesdata.js" ></script>
  <script type="text/javascript">
  //调用插件
  $(function(){
    $("#test").ProvinceCity();
  });
  </script>
</head>
<body>
  <div id="test"></div>

	
	<a href="${base }/">首页</a>
	
</body>
</html>