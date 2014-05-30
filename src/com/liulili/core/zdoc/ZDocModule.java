package com.liulili.core.zdoc;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.nutz.dao.Cnd;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Strings;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;

import com.liulili.core.bean.User;

/**
 * 作为接受页面请求的控制器
 * @author lililiu
 *
 */
//@IocBean
@At("/zdoc")
public class ZDocModule {

	private static final Log log = Logs.get();
	
	@At
	@Ok("jsp:zdoc.index")
	public void index() {
	}
	
	/**
	 * @Ok  >> 外部重定向;->内部重定向; / 根;
	 * @param session
	 */
	@At
	@Ok(">>:/")
	public void logout(){
		
	}
	
	/**
	 * 项目启动时的验证，搭建项目框架使用，返回当前系统时间
	 * @return
	 */
	@At("/ping") 
	public Object ping(){
		return new Date();
	}
	
	
}
