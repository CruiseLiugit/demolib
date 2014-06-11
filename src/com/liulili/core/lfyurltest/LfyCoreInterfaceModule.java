package com.liulili.core.lfyurltest;

import java.util.Date;

import org.nutz.dao.Cnd;
import org.nutz.dao.Dao; //配置好的 基础 Dao
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.json.Json;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.At;

import com.liulili.common.Constants;
import com.liulili.common.IPAddressUtil;
import com.liulili.core.bean.User;
import com.liulili.core.map.HttpService;
import com.liulili.core.map.jsonbean.Geocoding;
import com.liulili.core.map.jsonbean.IPAddress;

/**
 * 测试留夫鸭核心接口的控制器
 * 
 * @author lililiu
 * 
 */
@IocBean
public class LfyCoreInterfaceModule {

	private static final Log log = Logs.get();

	// ioc 注入
	// 填写注入类的 名称，类名首字母小写
	@Inject("refer:httpService")
	HttpService httpService;

	/**
	 * Demo 1 案例一，调用接口
	 * http://localhost:8080/lfyinterface/searchStoreByStreet?cityName=上海&areaName=徐汇
	 * 
	 * @param shopaddr
	 * @param customeraddr
	 * @param request
	 * @return
	 */
	@At("/interface1")
	public void searchStores() {
		String url = "http://115.29.12.128:8080/lfyinterface/searchStoreByStreet?cityName=上海&areaName=徐汇";

		// 这里不需要转码，也可以访问后台的
		// String covUrl = URLEncoder.encode(url, "UTF-8");
		// log.debug("url ="+covUrl);
		
		String jsonStr = httpService.doGet(url);
		log.debug("json =" + jsonStr);

	}
	
	@At("/interface2")
	public void searchMemberAddress() {
		String url = "http://api.map.baidu.com/place/v2/search?&query=上海市闸北区延长中路快乐家苑&location=31.280707117986,121.46783870671&radius=3000&output=json&ak=66K99NkKszXrvpuhQWctW0o1";

		// 这里不需要转码，也可以访问后台的
		// String covUrl = URLEncoder.encode(url, "UTF-8");
		// log.debug("url ="+covUrl);
		
		String jsonStr = httpService.doGet(url);
		log.debug("json =" + jsonStr);

	}
	

	/**
	 * 项目启动时的验证，搭建项目框架使用，返回当前系统时间
	 * 
	 * @return
	 */
	@At("/ping")
	public Object ping() {
		// log.debug("====>dao ="+dao);
		return new Date();
	}

}
