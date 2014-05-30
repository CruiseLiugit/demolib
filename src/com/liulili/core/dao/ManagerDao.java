package com.liulili.core.dao;

import org.nutz.dao.Cnd;

import com.liulili.core.bean.User;



/**
 * 管理员数据库访问
 * 
 * @author lililiu
 *
 */
public class ManagerDao extends BasicDao {

	/**
	 * 管理员登录
	 * @param username
	 * @param password
	 * @return
	 */
	public User login(String username,String password){

		Cnd condition = Cnd.where("name", "=", username)
							.and("passwd", "=", password)
							.and("status", "=", "1");
		
		return  findByCondition(User.class,condition);
	}
	
}
