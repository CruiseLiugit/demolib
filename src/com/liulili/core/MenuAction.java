package com.liulili.core;

import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;

/**
 * 首页，主菜单控制器
 * 
 * @author lililiu
 * 
 */
@IocBean
public class MenuAction {

	private static final Log log = Logs.get();

	// 首页
	@At("/")
	@Ok("jsp:jsp.index")
	public void index() {
		// 仅仅跳转
	}

	// ---------------------------------------------
	// 百度地图的例子
	@At("/map1")
	@Ok("jsp:map.geocoding1")
	public void mapdemo1() {
		// 仅仅跳转
	}

	@At("/map2")
	@Ok("jsp:map.geocoding2")
	public void mapdemo2() {
		// 仅仅跳转
	}

	@At("/map3")
	@Ok("jsp:map.geocoding3")
	public void mapdemo3() {
		// 仅仅跳转
	}
	
	@At("/map4")
	@Ok("jsp:map.geocoding4")
	public void mapdemo4() {
		// 仅仅跳转
	}
	
	// ---------------------------------------------
	// UI 框架的例子
	/**
	 * 纯粹的 bootstrap 页面例子
	 */
	@At("/bootstrap_ui1")
	@Ok("jsp:uiusman.index")
	public void bootstrap_ui1() {
		// 仅仅跳转
	}

	/**
	 * 纯粹的 DWZ jui 页面例子
	 */
	@At("/jui_ui1")
	@Ok("jsp:uijui.index_jui")
	public void jui_ui1() {
		// 仅仅跳转
	}

	// --------------------------
	/**
	 * 单独使用 DWZ jui 页面，完成与后台交互请求的例子
	 */
	@At("/jui_ui2")
	@Ok("jsp:uijui.index")
	public void jui_ui2() {
		// 仅仅跳转
	}

	// -------------Demo1 begin--------------
	/**
	 * 登录验证 uijui 目录中，index.jsp 页面中 DWZ.init(); 加载时，跳转到 login.jsp 页面
	 */
	@At("/demo1login")
	@Ok("jsp:uijui.loginDialog")
	public void demo1login() {
		// 仅仅跳转
	}

	/**
	 * 真正在弹出页面中，完成登录功能
	 */
	@At("/demo1_dologin")
	@Ok("jsp:uijui.index")
	// @Ok("json")
	public String demo1_dologin(@Param("app_username") String username,
			@Param("app_password") String password) {
		log.info("name = " + username + " , password =" + password);

		return "{\"statusCode\":\"200\", \"message\":\"Login OK!\",\"callbackType\":\"closeCurrent\",\"navTabId\":\"main\"}";
	}

	// -------------Demo2 begin--------------
	@At("/demo2")
	@Ok("jsp:uijui.add")
	public void demo2() {
		// 仅仅跳转
	}

	/**
	 * 真正在弹出页面中，完成登录功能
	 */
	@At("/demo2_addok")
	@Ok("jsp:uijui.index")
	// @Ok("json")
	public void demo2_addok(@Param("username") String username,
			@Param("userphone") String userphone) {
		log.info("name = " + username + " , userphone =" + userphone);
		// {"statusCode":"200", "message":"操作成功", "navTabId":"navNewsLi",
		// "forwardUrl":"", "callbackType":"closeCurrent", "rel"."xxxId"}
		// return
		// "{\"statusCode\":\"200\", \"message\":\"Login OK!\",\"callbackType\":\"closeCurrent\",\"navTabId\":\"pageadd\"}";
	}

	// -------------Demo2 end--------------

	// -------------Demo3 begin-------------
	@At("/demo3")
	@Ok("jsp:uijui.adddialog")
	public void demo3() {
		// 仅仅跳转
	}

	/**
	 * 真正在弹出页面中，完成登录功能
	 */
	@At("/demo3_addok")
	@Ok("jsp:uijui.index")
	// @Ok("json")
	public void demo3_addok(@Param("username") String username,
			@Param("userphone") String userphone) {
		log.info("name = " + username + " , userphone =" + userphone);
		// {"statusCode":"200", "message":"操作成功", "navTabId":"navNewsLi",
		// "forwardUrl":"", "callbackType":"closeCurrent", "rel"."xxxId"}
		// return
		// "{\"statusCode\":\"200\", \"message\":\"Login OK!\",\"callbackType\":\"closeCurrent\",\"navTabId\":\"pageadd\"}";
	}

	// -------------Demo3 end--------------

	// -------------Demo4 begin-------------
	// NewsAction.java 类实现  list()
	// -------------Demo4 end-------------

	/**
	 * 综合使用 bootstrap 和 DWZ jui 页面例子
	 */
	@At("/bootstrap_jui1")
	@Ok("jsp:uiboth.index")
	public void bootstrap_jui1() {
		// 仅仅跳转
	}

}
