<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jQuery
	三级地市级联菜单_http://blog.csdn.net/yanhui_wei/article/details/7937367</title>


<script type="text/javascript" src="${base}/js/jquery-1.7.2.min.js"></script>

<script type="text/javascript">
	//调用插件
	$(document).ready(function() {
		province_list();//加载省份下拉菜单  
		$("#province_select").change(function() {//省份选项发生改变时  
			var province = $("#province_select").val();
			$("#pre-address").html(province);
			showcity(province);//省份发生变化时，城市下拉菜单也要随之变化  
			$("#postcode_add").attr('value', '');//在选择town项时，会自动获取邮政编码  
		})
	})

	//省份下拉菜单  
	function province_list() {
		$.getJSON('${base}/getprovince', {}, function(data) {
			alert("data ="+data);
			$("#province_select").append("");
			$.each(data, function(i, k) {
				if (i == 0) {
					$("#province_select").append(
							"<option selected>请选择</option><option value='"+k.local_name+"' >"
									+ k.local_name + "</option>");
					showcity(k.local_name);
				} else {
					$("#province_select").append(
							"<option value='"+k.local_name+"'>" + k.local_name
									+ "</option>");
				}
			})
		});
	}
	//显示城市下拉菜单  
	function showcity(province) {
		$.getJSON('${base}/?c=addr&a=getcity',{province : province},
						function(data) {
							$("#city_select_poss").html("");
							$("#town_select_poss").html("");
							if (data) {
								$("#city_select_poss")
										.html(
												"<select id='city_select' name='city' onChange='city_select_function();'></select>");
							}
							$("#city_select").html("");
							$.each(data, function(i, k) {
								if (i == 0) {
									$("#city_select").append(
											"<option  selected>请选择</option><option value='"+k.local_name+"'>"
													+ k.local_name
													+ "</option>");
									var addr = province + k.local_name;
									//$("#pre-address").html(addr);  
									showtown(k.local_name);
								} else {
									$("#city_select").append(
											"<option value='"+k.local_name+"'>"
													+ k.local_name
													+ "</option>");
								}
							})
						})
	}

	//显示城乡下拉菜单  
	function showtown(city) {
		$.getJSON('${base}/?c=addr&a=gettown',{city : city},
						function(data) {
							if (data) {
								$("#town_select_poss").html(
												"<select id='town_select' name='town' onchange='town_select_function();'></select>");
							} else {
								$("#town_select_poss").html("");
							}
							$("#town_select").html("");
							$.each(data, function(i, k) {
								if (i == 0) {
									$("#town_select").append(
											"<option selected>请选择</option><option value='"+k.local_name+"'>"
													+ k.local_name
													+ "</option>");
								} else {
									$("#town_select").append(
											"<option value='"+k.local_name+"'>"
													+ k.local_name
													+ "</option>");
								}
							})
						})
	}
	//获取邮政编码  
	function getPostCode(town, city, province, id) {
		$.get('${base}/?c=addr&a=getpost', {
			town : town,
			city : city,
			province : province
		}, function(data) {
			if (data > 0) {
				if (id == "" || id == undefined) {
					$("#postcode_add").attr('value', data);
				} else {
					$("#" + id + "postcode_add").attr('value', data);
				}
			} else {
				//$("#postcode_add").attr('value', '');  
				if (id == "" || id == undefined) {
					$("#postcode_add").attr('value', '');
				} else {
					$("#" + id + "postcode_add").attr('value', '');
				}
			}
		})
	}

	//城市选项发生改变时，触发此函数  
	function city_select_function() {
		var province = $("#province_select").find("option:selected").text();
		var city = $("#city_select").find("option:selected").text();
		var addr = province + city;
		$("#pre-address").html(addr);
		showtown(city);
		var town = $("#town_select").find("option:selected").text();
		getPostCode(town, city, province);
	}

	//城乡选项发生变化时，触发此函数  
	function town_select_function() {
		var province = $("#province_select").find("option:selected").text();
		var city = $("#city_select").find("option:selected").text();
		var town = $("#town_select").find("option:selected").text();
		var addr = province + city + town;
		$("#pre-address").html(addr);
		getPostCode(town, city, province);
	}
</script>
</head>
<body>
	<ul>
		<li><span class="receiving">所在地区：</span> 
		    <span id="addr_select">
				<select id='province_select' name='province'></select> 
				<span id="city_select_poss" class="ssq"></span> 
				<span id="town_select_poss" class="ssq"></span> 
			</span> <font color="#FF0000">*</font>
		</li>
		<li><span class="receiving">街道地址：</span>
			<span id="pre-address"></span>
			<input type="text" id="add_addr_input" name="address" value="" style="width: 180px;" /> 
			<font color="#FF0000"> *</font>
			<em id="add_addr_input_info"></em>
		</li>
		<li><span class="receiving">邮政编码：</span> 
			<input type="text" value="" id="postcode_add" name="postcode" style="width: 180px;" />
			<font color="#FF0000"> </font>
		</li>
	</ul>


	<a href="${base }/">首页</a>

</body>
</html>