package dwz.business.website;

import dwz.framework.core.business.BusinessObject;

public interface Website extends BusinessObject {

	String getTitle();
	String getMetaTitle();
	String getMetaKeyword();
	String getMetaDescription();
	String getIcp();
	Template getTemplate();
	String getTemplateName();
	Layout getLayout();
	String getLayoutName();

	void setTitle(String title);
	void setMetaTitle(String metaTitle);
	void setMetaKeyword(String metaKeyword);
	void setMetaDescription(String metaDescription);
	void setIcp(String icp);
	void setTemplateName(String templateName);
	void setLayoutName(String layoutName);

	Theme getTheme();

	String getThemeName();

	void setThemeName(String themeName);

	String getImageUrl();

	void setImageUrl(String imageUrl);

	String getThemeUrl();

	void setThemeUrl(String themeUrl);

	String getAreaHeader();

	void setAreaHeader(String areaHeader);

	String getAreaBanner();

	void setAreaBanner(String areaBanner);

	String getAreaFooter();

	void setAreaFooter(String areaFooter);

	String getAreaSidebar();

	void setAreaSidebar(String areaSidebar);

	String getLogo();

	void setLogo(String logo);

}
