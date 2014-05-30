package com.liulili.core.dwz.action;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;

import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;

import dwz.business.constants.info.NewsSearchFieldsDB;
import dwz.business.constants.info.NewsType;
import dwz.business.info.News;
import dwz.business.info.NewsManager;
import dwz.constants.BeanManagerKey;
import dwz.present.BaseAction;

/**
 *  练习使用DWZ 分页的Action
 * @author lililiu
 *
 */
@IocBean
public class NewsAction extends BaseAction {
	
	private static final Log log = Logs.get();
	
	private int newsId;
	private String type;

	private NewsManager manager = bf.getManager(BeanManagerKey.newsManager);
	private News news = manager.newNews();
	private Collection<News> newsList;

	// -------------Demo4 begin-------------
	//WEB-INF/uijui/index.jsp
	@At("/demo4")
	@Ok("jsp:uijui.listdemo4")
	public void list() {
		//分页
		int pageNum = this.getPageNum() > 0 ? this.getPageNum() - 1 : 0;
		int startIndex = pageNum * this.getNumPerPage();

		Map<NewsSearchFieldsDB, String> criterias = new HashMap<NewsSearchFieldsDB, String>();
		if (this.getType() != null && this.getType().length() > 0) {
			criterias.put(NewsSearchFieldsDB.TYPE, this.getType());
		}

		if (this.getKeywords() != null
				&& this.getKeywords().trim().length() > 0) {
			criterias.put(NewsSearchFieldsDB.KEYWORDS, this.getKeywords()
					.trim());
		}

		setNewsList(manager.searchNewsFromDB(criterias, startIndex,
				getNumPerPage()));
		setTotalCount(manager.searchNewsFromDBNum(criterias));

		if (criterias != null) {
			criterias.clear();
			criterias = null;
		}
	}

	public int getNewsId() {
		return newsId;
	}

	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}

	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
	}

	public Collection<News> getNewsList() {
		return newsList;
	}

	public void setNewsList(Collection<News> newsList) {
		this.newsList = newsList;
	}

	public NewsType[] getNewsTypes() {
		return NewsType.values();
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	
	private Map<String, String> attr = new TreeMap<String, String>();

	public Map<String, String> getAttr() {
		return attr;
	}

	public void setAttr(Map<String, String> attr) {
		this.attr = attr;
	}
	
	private String [] strs = new String [10];

	public String[] getStrs() {
		return strs;
	}

	public void setStrs(String[] strs) {
		this.strs = strs;
	}

}