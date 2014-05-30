package com.liulili.core;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.log.Log;
import org.nutz.log.Logs;

/*
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionProxy;
import com.opensymphony.xwork2.ActionSupport;

import dwz.framework.config.Configuration;
*/
import dwz.framework.constants.Constants;
import dwz.framework.context.AppContext;
import dwz.framework.context.AppContextHolder;
import dwz.framework.core.factory.BusinessFactory;
import dwz.framework.el.ServerInfo;
import dwz.framework.user.User;
import dwz.framework.utils.StringUtils;

/**
 * 这里作为 新添加的 基础 Action，后续所有的命名还是用  Action
 * 
 * @author lililiu
 *
 */
@IocBean
public class BaseAction{

	private static final long serialVersionUID = 2655416150684435458L;

	private static final Log log = Logs.get();

	protected static BusinessFactory bf;          //创建 business 的工厂类
	//protected static Configuration appConfig;

	//操作完成，说明
	protected static final String OPERATION_DONE = "operationDone";
	
	//private ActionProxy proxy;

	private int statusCode = 200;        //默认状态
	private String message = null;       //默认提示消息
	private String forwardUrl = null;    //默认失败后的，跳转路径

	private boolean skipVC = false;      //是否跳过 控制器
	private String validationCode;       // 验证码
	private UiModel model = new UiModel(); //SEO 推荐关键字 head 标签中的

	// 分页查询需要使用的字段，对应页面上的隐藏表单
	/*
<form id="pagerForm" method="post" action="demo_page1.html">
	<input type="hidden" name="status" value="${param.status}">
	<input type="hidden" name="keywords" value="${param.keywords}" />
	<input type="hidden" name="pageNum" value="1" />
	<input type="hidden" name="numPerPage" value="${model.numPerPage}" />
	<input type="hidden" name="orderField" value="${param.orderField}" />
</form>

///////////////////////////////////////////////////
<div class="panelBar">
		<div class="pages">
			<span>显示</span>
			<select class="combox" name="numPerPage" onchange="navTabPageBreak({numPerPage:this.value})">
				<option value="20">20</option>
				<option value="50">50</option>
				<option value="100">100</option>
				<option value="200">200</option>
			</select>
			<span>条，共${totalCount}条</span>
		</div>
		
		<div class="pagination" targetType="navTab" totalCount="200" numPerPage="20" pageNumShown="10" currentPage="1"></div>

	</div>
	 * */
	// search form fields
	public final static int PAGE_SHOW_COUNT = 20;  //页面默认显示数据条数
	private int pageNum = 1;
	private int numPerPage = 0;
	private String orderField;
	private String orderDirection;
	private String keywords;
	private int totalCount = 0;


	static {
		bf = BusinessFactory.getFactory();
		//appConfig = bf.retrieveConfiguration();
	}

		
	

	public BaseAction() {
		super();
		//proxy = ActionContext.getContext().getActionInvocation().getProxy();
	}

	

	protected boolean verifyValidationCode(
			String validationCode) {

		boolean enableVerify = true;
				//appConfig.getBoolean("validation-code.validation-code-enable");

		if (enableVerify) {
			if (validationCode == null)
				return false;
			
			//随机生成验证码
			String randomCode = null;
			try {
				//取出随机验证码
				//randomCode = (String) ActionContext.getContext().getSession().get(Constants.VALIDATION_CODE);
				System.out.println("取出Session 中保存的，名为 validation_code 的验证码:"+randomCode + " : " + validationCode);
			} catch (Exception e) {
				log.error(e);
			}

			if (randomCode == null)
				return false;
			else if (!randomCode.equalsIgnoreCase(validationCode.trim()))
				return false;
		}
		return true;
	}

	protected boolean uploadFile(File file, String filePath) {

		boolean retCode = false;
		byte[] buffer = new byte[1024];
		FileOutputStream fos = null;
		InputStream is = null;
		try {
			is = new FileInputStream(file);

			fos = new FileOutputStream(new File(filePath));

			int n = -1;
			while ((n = is.read(buffer, 0, buffer.length)) != -1) {
				fos.write(buffer, 0, n);
			}

			retCode = true;
			System.out.println("upload file success...");
		} catch (FileNotFoundException fnfe) {
			System.out.println("fnfe:" + fnfe);
		} catch (IOException ioe) {
			System.out.println("ioe:" + ioe);
		} finally {
			if (fos != null) {
				try {
					fos.close();
					fos = null;
				} catch (IOException e) {
					log.error(e);
				}
			}
			if (is != null) {
				try {
					is.close();
					is = null;
				} catch (IOException e) {
					log.error(e);
				}

			}
		}

		return retCode;
	}

	protected AppContext getAppContext() {
		return AppContextHolder.getContext();
	}

	public User getContextUser() {
		AppContext context = getAppContext();

		if (context != null)
			return context.getUser();
		return null;
	}

	public int getStatusCode() {
		return statusCode;
	}

	public void setStatusCode(int statusCode){
		this.statusCode = statusCode;
	}
	
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getForwardUrl() {
		return forwardUrl;
	}

	public void setForwardUrl(String forwardUrl) {
		this.forwardUrl = forwardUrl;
	}

	protected void margeForwardUrl(String target, String replacement) {
		if (StringUtils.notEmpty(forwardUrl) && target != null
				&& replacement != null) {
			forwardUrl = forwardUrl.replace(target, replacement);
		}
	}

	public String getOperationDone(HttpServletRequest request) {
		if (ServerInfo.isAjax(request) || request.getParameter("ajax") != null)
			return "ajaxDone";
		else
			return "alert";
	}
	
	private String ajaxForward(int statusCode) {
		this.statusCode = statusCode;
		return OPERATION_DONE;
	}
	protected String ajaxForwardSuccess(String message) {
		this.message = message;
		return ajaxForward(200);
	}
	protected String ajaxForwardError(String message) {
		this.message = message;
		return ajaxForward(300);
	}

	public boolean isSkipVC() {
		return skipVC;
	}

	public void setSkipVC(boolean skipVC) {
		this.skipVC = skipVC;
	}

	public String getValidationCode() {
		return validationCode;
	}

	public void setValidationCode(String validationCode) {
		this.validationCode = validationCode;
	}

	public UiModel getModel() {
		return model;
	}

	public void setModel(UiModel model) {
		this.model = model;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public String getKeywords() {
		return keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getNumPerPage() {
		return numPerPage > 0 ? numPerPage : PAGE_SHOW_COUNT;
	}

	public void setNumPerPage(int numPerPage) {
		this.numPerPage = numPerPage;
	}

	public String getOrderField() {
		return orderField;
	}

	public void setOrderField(String orderField) {
		this.orderField = orderField;
	}

	public String getOrderDirection() {
		return orderDirection;
	}

	public void setOrderDirection(String orderDirection) {
		this.orderDirection = orderDirection;
	}

	public String realOrderField(){
		if ("desc".equalsIgnoreCase(orderDirection))
			return orderField+"_DESC";
		return orderField;
	}
}