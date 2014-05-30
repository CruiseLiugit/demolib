<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/taglibs.jsp"%>

<!-- 独立页面写法.不需要标题，添加标题后，影响底部按钮 -->
<div class="pageContent">
	<!-- onsubmit="return validateCallback(this, dialogAjaxDone)" -->
	<form method="post" action="${base }/demo1_dologin" class="pageForm required-validate">

		<div class="pageFormContent" layoutH="58">
			<p>
				<label>Username：</label>
				<input type="text" name="app_username" size="20" class="login_input" />
			</p>
			<p>
				<label>Password：</label>
				<input type="password" name="app_password" size="20" class="login_input" />
			</p>
			<div class="unit">
				<label>用户手机：</label>
				<input  size="30" minlength="11" maxlength="11" class="required" type="text" id="userphone"  name="phone" value="${sessionScope.CURRENT_LOGIN_USER.userPhone }">
			</div>
			
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">提交</button></div></div></li>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
			</ul>
		</div>
		
	</form>
	
</div>