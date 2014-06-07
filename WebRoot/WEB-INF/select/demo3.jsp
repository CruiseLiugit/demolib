<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jQuery
	三级地市级联菜单_http://lvmax.iteye.com/blog/940134</title>


<script type="text/javascript" src="${base}/js/jquery-1.7.2.min.js"></script>

    <script type="text/javascript">  
            $(document).ready(function(){  
            		//方法addSelOption : 为匹配对象添加一项"请选择"， jq ： jQuery对象
                var addSelOption = function(jq)   
                {  
                    //创建option对象，并设置文本为"请选择"，value值为-1  
                    var opt = $("<option/>").text("请选择").attr("value", "-1");  
                    //将option对象添加到select中  
                    jq.append(opt);  
                }  
                //添加span节点并添加loadding的gif图片  
                var loadImg = function(br){  
                    $("#loaddingImg").find("img").remove();  
                    var oSpan = $("<span id='loaddingImg'><img src='/TheOneHRWeb/images/loadding_indicator.gif' /></span>");  
                    br.after(oSpan);  
                }  
                var requestUrl = "${base}/GetBranchOne";  
                $.ajax({  
                    //type : "get", //默认为get  
                    dataType : "json",  
                    url : requestUrl,  
                    success : function(json){  
                        $(json).each(function(){  
                            var opt = $("<option/>").text(this.branchName).attr("value", this.branchID);  
                            $("#branchOne").append(opt);  
                        });  
                        $("#branchOne").change(function(){  
                            var branchId = $(this).val();  
                            if(branchId != "-1"){  
                                var requestUrl = "${base}/GetBranchTwo";  
                                $.ajax({  
                                    dataType : "json",  
                                    url : requestUrl,  
                                    //传入的参数  
                                    data : "branchID=" + branchId,  
                                    //发送请求前加载loadding的gif图片  
                                    beforeSend : loadImg($("#branchOne")),  
                                    success : function(json){  
                                        //删除gif图片的span节点  
                                        $("#loaddingImg").remove();  
                                        $("#branchTwo").empty();  
                                        addSelOption($("#branchTwo"));  
                                        $(json).each(function(){  
                                            var opt = $("<option/>").text(this.branchName).attr("value", this.branchID);  
                                            $("#branchTwo").append(opt);  
                                        });  
                                    }  
                                });  
                            }  
                            else{  
                                $("#branchTwo").empty();  
                                addSelOption($("#branchTwo"));  
                                $("#branchThree").empty();  
                                addSelOption($("#branchThree"));  
                            }  
                        });  
                        $("#branchTwo").change(function(){  
                            var branchId = $(this).val();  
                            if(branchId != "-1"){  
                                var requestUrl = "${base}/GetBranchThird.aspx";  
                                $.ajax({  
                                    dataType : "json",  
                                    url : requestUrl,  
                                    data : "branchID=" + branchId,  
                                    beforeSend : loadImg($("#branchTwo")),  
                                    success : function(json){  
                                        $("#loaddingImg").remove();  
                                        $("#branchThree").empty();  
                                        addSelOption($("#branchThree"));  
                                        $(json).each(function(){  
                                            var opt = $("<option/>").text(this.branchName).attr("value", this.branchID);  
                                            $("#branchThree").append(opt);  
                                        });  
                                    }  
                                });  
                            }  
                            else{  
                                $("#branchThree").empty();  
                                addSelOption($("#branchThree"));  
                            }  
                        });  
                    }  
                });  
            });  
        </script>  
</head>
<body>
	<div>
		    I级机构: <select id="branchOne">  
                            <option selected="selected" value="-1">请选择</option>  
                        </select>  
            II级机构:<select id="branchTwo">  
                                <option selected="selected" value="-1">请选择</option>  
                            </select>  
             III级机构:<select id="branchThree">  
                                <option selected="selected" value="-1">请选择</option>  
                            </select>  
	</div>


	<a href="${base }/">首页</a>

</body>
</html>