<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/taglibs.jsp"%>

<div class="pageContent">
<!-- onsubmit="return validateCallback(this, navTabAjaxDone);" -->
<!-- onsubmit="return validateCallback(this, dialogAjaxDone)" -->
<form method="post" action="${base }/demo3_addok" class="required-validate pageForm">
	<div class="pageFormContent" layouth="57">
		<p>
			<label>姓名</label>
			<input type="text" name="username" class="required"/>
		</p>
		<p>
			<label>电话</label>
			<input type="text" name="userphone" class="required" />
		</p>
	</div>
	<div class="formBar">
		<ul>
			<li><div class="buttonActive"><div class="buttonContent"><button type="submit">Save</button></div></div></li>
			<li><div class="button"><div class="buttonContent"><button type="button" class="close" >Close</button></div></div></li>
		</ul>
	</div>
</form>
</div>