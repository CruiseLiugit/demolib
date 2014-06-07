<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jQuery
	三级地市级联菜单_http://zywang.iteye.com/blog/860683</title>


<script type="text/javascript" src="${base}/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript">  
function changChild(tid){  
    $.post("childSelect",{"tid":tid},function(json){  
        $(".child").html("");//清空学生下拉框  
        for(var i=0;i<json.length;i++){  
            //添加一个学生  
            $(".child").append("<option value='"+json[i].id+"'>"+json[i].name+"</option>");  
        }  
    },'json');  
}  
$(function(){  
    //初始化教师下拉框  
    $.post("${base}/demo4ParentSelect",null,function(json){ 
    		alert("初始化教师下拉框 json = "+json);
    		var jj = jQuery.parseJSON(json);
    		alert("jj ="+jj);
        for(var i=0;i<json.length;i++){
        		alert("111  i="+i);
            //添加一个教师  
            $(".parent").append("<option value='"+json[i].id+"'>"+json[i].name+"</option>");  
        }  
        changChild($(".parent").val());  
    },'json');  
    //注册教师下拉框事件  
    $(".parent").change(function(){  
        changChild($(this).val());  
    });  
});  
</script>  
</head>  
<body>  
<h3>使用JQuery进行下拉框的联动</h3>  
<p>  
    改变教师下拉框，发送AJAX请求，根据返回的JSON数据重新填充学生下拉框。  
</p>  
<hr/>  
<select class="parent"></select>  
<select class="child"></select>  


	<a href="${base }/">首页</a>

</body>
</html>