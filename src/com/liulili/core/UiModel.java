package com.liulili.core;

import java.util.Collection;
import java.util.Date;

import dwz.constants.BeanManagerKey;
import dwz.framework.constants.user.Title;
import dwz.framework.context.AppContextHolder;
import dwz.framework.user.Role;
import dwz.framework.user.RoleManager;

public class UiModel extends BaseUiModel {

	// SEO
	// header 标签中的 三个用于 SEO 的关键字。
	private String title;
	private String metaKeywords;
	private String metaDescription;

	public Date getNow() {
		return new Date();
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getMetaKeywords() {
		return metaKeywords;
	}

	public void setMetaKeywords(String metaKeywords) {
		this.metaKeywords = metaKeywords;
	}

	public String getMetaDescription() {
		return metaDescription;
	}

	public void setMetaDescription(String metaDescription) {
		this.metaDescription = metaDescription;
	}

	public Title[] getTitles() {
		return Title.values();
	}

	
	/**
	 * 获取当前用户所有的角色
	 * @return
	 */
	public Collection<Role> getRolesByUser() {
		RoleManager manager = bf.getManager(BeanManagerKey.roleManager);
		Collection<Role> roles = manager
				.listRoles(AppContextHolder.getContext().getUser());
		return roles;
	}

	public Collection<Role> getAllRoles() {
		RoleManager roleManager = bf.getManager(BeanManagerKey.roleManager);
		return roleManager.listAllRoles();
	}
	
}
