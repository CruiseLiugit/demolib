package com.liulili.core;

import org.nutz.dao.Dao;
import org.nutz.dao.entity.annotation.Table;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.NutConfig;
import org.nutz.mvc.Setup;
import org.nutz.resource.Scans;

import com.liulili.core.bean.User;


/**
 * 初试执行的方法
 * 这样的类，都需要在 MainModule 中进行配置
 * 
 * @author lililiu
 *
 */
public class LiuSetup implements Setup {

	private static final Log log = Logs.get();
	
	public void init(NutConfig config) {
		//验证启动时是否能够拿到 ioc 容器对象
		log.debug("====>ioc ="+config.getIoc());
		
		////////////////////////////////////////////
		//启动时，根据注解 @Table ，通过 ioc 自动创建表//
		////////////////////////////////////////////
		//通过 ioc 得到 基础 dao 类对象
		Dao dao = config.getIoc().get(Dao.class);
		for (Class<?> klass : Scans.me().scanPackage("com.liulili.core")) {
			if (null != klass.getAnnotation(Table.class)) {
				//自动创建表，false 表示如果已创建，不删除
				dao.create(klass, false);
			}
		}
		
		////////////////////////////////////////
		//表创建好后，在数据库中初始化一些数据//
		/////////////////////////////////////
		//统计 数据库中 user 表中数据数量
		if (dao.count(User.class) == 0) {
			User admin = new User();
			admin.setName("admin");
			admin.setPasswd("admin");
			dao.insert(admin);
		}
		
		
	}

	public void destroy(NutConfig config) {
		// TODO Auto-generated method stub

	}

}
