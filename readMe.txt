该项目主要用于记录每个项目中需要使用的实验性质的案例：
记录每天修改的细节：



//----------------------------------------------
//2014-05-21   
今天只查看了百度 API 确定了要在项目中使用
1、IP 定位。功能实现，遇到一个问题。无法获取用户真实的 IP 地址，估计是本机无法获取
2、半径搜索，功能实现。但是关键词只能是百度收集到的。估计会有更新比较慢的问题
3、尝试直接比较两个位置的 经纬度坐标的间距
  使用 Route Matrix API是一套以HTTP形式提供的批量线路查询接口，用于返回多个起点和多个(5个)终点间的线路距离和行驶时间。

//----------------------------------------------
//2014-05-16   
1、今天研究了一天的DWZ框架，发现有些人说这个框架代码公开，但是修改东西比较
麻烦。所以找到了他们写的 SSH DEMO 。研究
2、实现两个功能：
   a、登录，实现弹出层 ajax 请求
   b、navTab 页面，发出请求 ajax 
   c、表格显示结果，分页
   d、表格显示结果，加搜索结果的
3、实现，
   修改  WebRoot/WEB-INF/jsp/index.jsp 页面，增加一个 jUI 使用案例 
   点击链接后，经过 MenuAction.java 控制器，跳转到 WebRoot/WEB-INF/uijui/index.jsp
   打开 WebRoot/WEB-INF/uijui/index.jsp 页面，修改左侧菜单。
4、   
      
小节：
1、链接标签直接打开，target="navTab"表示在当前页面框架中，新开一个 navTab
   <a href="tabsPage.html" target="navTab">主框架面板</a>      
2、链接 get 请求到后台，返回后的结果在当前页面框架中，新开一个 navTab
   <a href="${base }/demo1" target="navTab" rel="main">第一个例子</a> 
3、rel="main" 对应页面上  tabid="main"
  <li tabid="main" class="main"><a href="javascript:;"><span class="home_icon">我的主页</span></a></li>
  
  rel="main" 会把首页内容替换掉。
  
4、控制页面用弹出框样式显示
   <li><a href="${base }/demo1login" target="dialog" width="600" rel="page1">第一个例子</a></li>  	
	


<h2 class="contentTitle"></h2> 页面标题样式
(1). 新建Tab窗口：target="navTab" <br />
(2). 选择Tab窗口：每个Tab都有一个唯一的Id，通过打开方式中的 rel="" 对Tab定义<br />
(3). 自己定义Tab标签的名称：title=""<br />
<a class="button" href="newPage1.html" target="navTab" rel="newPage"><span>新建一个Tab窗口</span></a>

        


//----------------------------------------------
//2014-05-14   
//更换富客户端框架
//考虑到目前使用的后台页面偏重与页面样式、组件的美化，不方便开发
//为了提高开发效率，查找 open-open.com ，确定了一个国产前端框架
//DWZ  jUI 框架
//在这个项目中，进行实验
1、导入 后台Bootstrap 样式框架
2、导入 jUI 框架
3、在 页面中进行调用两个框架，完成一个 index.html 欢迎页面

    WEB-INF/uiusman
    WEB-INF/uijui
    WEB-INF/uiboth   //发现两个的 juithemes 模版 css 会相互影响
                     //解决方案，不使用 juithemes 模版，改用 bootstrap 的 themes
    
4、接下来，确定后台要使用 jui ，那么要先看看官方文档教程。
5、修改 WEB-INF/uiboth/index.jsp 页面，把里面修改成一个空的页面框架
    
    


//----------------------------------------------
//2014-05-13   
今天只查看了百度 API 确定了要在项目中使用的几个 接口
com.liulili.common.Constants.java 类中说明


//----------------------------------------------
//2014-05-12   
今天下午开始正式做门店地理位置搜索的功能了。
1、回顾上次的 流程和代码
2、增加了一个 WEB-INF/index.jsp 作为首页。里面通过菜单可以进入各个案例
  


//----------------------------------------------
//2014-04-15   Demo3 
1、今天没有时间慢慢研究 ZDoc 。今天的主要目标是，研究百度地图的使用
   由于暂时不需要在浏览器端调用地图，主要使用两种 Web服务API 
   1)Place API v2.0 
     支持城市、矩形及圆形区域关键字检索POI，返回json/xml格式的POI数据。
   2)Geocoding API v2.0 
     通过地址获取坐标值或通过坐标点获取详细地址信息描述服务。
     
2、新建 
       src/com.liulili.common.Constants.java 定义常用百度API URL
       src/com.liulili.core.map.jsonbean     定义百度API 返回的 JSON 封装对象
       src/com.liulili.core.map.
       WebRoot/WEB-INF/map/gecoding1.jsp
       
       导入网络请求的库文件为
       commons-logging-1.1.1.jar
       httpclient-4.2.3.jar
       httpclient-cache-4.2.3.jar
       httpcore-4.2.3.jar
       
       
3、登录百度后台，生成一个应用，获取AppKey。我申请的是一个 服务器端 应用
  应用ID   2540679
  应用名称  liufuya	
  访问Key	66K99NkKszXrvpuhQWctW0o1     (SN校验)
4、使用了 百度云存储，可视化工具。获得如下提示
   开发者提示：
   1)当前状态:
      当前是id为27285的图层信息
   2) POST请求URL:
	  	http://api.map.baidu.com/geodata/poi
	  POST请求Field:
		method=list&databox_id=27285&ak=yourak 
5、先完成 Geocoding Demo
   步骤一 完成基本页面数据提交：
   1)在 geocoding1.jsp 页面中，通过 Ajax 请求，发送到 MapModule.java
   2)遇到乱码问题，解决方法：
     在 MainModule 中，添加字符过滤器(见 com.liulili.core.filter.ChrsetFilter , MainModule @Filters({@By(type=ChrsetFilter.class)})) ；
     在 ajax 请求中，使用 post 方法 (解决字符问题的关键)； 
   步骤二 后台调用 百度 Map API：		
  	 	 

6、在做的过程中，遇到了一个 Nutz IOC 依赖注入的问题，查询资料
   需要把类声明为 @IocBean
				public class BaiduMapBiz {} 
   需要在注入的对象前声明，引用名
                @Inject("refer:httpService")
				HttpService httpService; 

7、通过 com.liulili.core.map 中的
  MapModule.java      处理页面请求
  BaiduMapBiz.java    封装参数为不同的 URL 请求
  HttpService.java    处理 HTTP POST GET 请求
  
  遇到问题：报错 org.apache.commons.log 错误，类找不到。发现缺少  commons-logging-1.1.1.jar
  
8、调用百度接口，总是返回 状态为 2 或者 234
   解决方法：http://developer.baidu.com/map/lbs-develop-1.htm
   增加应用时，选择 IP 白名单方式。设置 IP 为 0.0.0.0/0  允许所有 IP 访问
   不需要 SK 。不用计算 SN 直接使用 get 或 post 方法请求都可以获取
   不需要 callback 
   MapModule.java 类中search() 方法，可以切换查询请求的提交方法,建议使用post
   ---------------------------------------------------------
   a.服务器端，我们允许开发者对这一类ak进行IP白名单设置，只有被设置白名单的IP才有访问接口的权限；
     如果开发者没有设置IP白名单，表示默认所有IP具有接口访问权限。
   ---------------------------------------------------------
   json ={"status":0,"result":{"location":{"lng":121.48499616229,"lat":31.245146390378},"precise":1,"confidence":80,"level":"\u5546\u52a1\u5927\u53a6"}}
   json ={"status":0,"result":{"location":{"lng":121.48499616229,"lat":31.245146390378},"precise":1,"confidence":80,"level":"\u5546\u52a1\u5927\u53a6"}}

9、后台返回了地址的 JSON 数据。然后需要前台解析并显示 JSON 数据
  解决方法：不用全部返回，只需要返回一个   经纬度信息。在后台，重新组织生成一个简单的 JSON 字符串，传递到前台
  


//----------------------------------------------
//2014-04-14   Demo2 
3、晚上添加一个 关于 WIKI 文档编写的 zDOC ，通过这个库希望能够很好很方便的管理文档  
   导入库文件
   WebRoot/WEB-INF/lib/nutzdoc-1.18.jar  
4、参考官方网站的 Demo https://github.com/nutzam/nutzam
   进行实现
5、按照文档，设定顶级工作目录   http://nutzam.com/zdoc/pages.html
   在 WEB-INF/zdoc/目录下新建各个目录
6、设置项目启动访问路径。能够看到 zdoc index.jsp 首页了。但是不是我想要的效果
7、尝试运行 zDoc 的测试类。导入 测试框架 jUnit4
  测试 *.html  *.zdoc 格式的简单转化，但是具体如何使用，还需要研究
  test/com.liulili.core.zdoc.html.HtmlDocRenderTest.java
  配套被转化的两个文件
  test/com.liulili.core.zdoc.html.t1.expect.html  | src.zdoc

  
//----------------------------------------------
//2014-04-14 Demo1
1、新建工程，导入 Nutz 框架库和 HTTPRequesClient 库(为了访问百度接口)
   数据库连接池所需要的 jar (建议必须)
   commons-dbcp-1.4.jar
   commons-pool-1.5.5.jar
   
2、新增之前做过的 MVC demo 代码分别在
   WebRoot/testlogin.jsp
   src/com.liulili.core.MainModule.java
   src/com.liulili.core.LiuSetup.java
   src/com.liulili.core.bean.User.java
   src/com.liulili.core.dao.UserModule.java
   
   完成一个用户数据库表的创建，数据库插入数据初始化。
   并通过 UserModule.java 实现用户登录。
 
   
   
//-----------------------------------------------
ajax方法做了默认处理了,post方法回调json必须eval
jQuery.ajax({  
        type:"post",  
        url:"addComment!comment.action",  
        dataType:"json",  
        success: function aa(data) {  
              alert(data[0].userId);  
              alert(data[0].userName);  
        }  
    });     

  



  function test(){
   $.ajax({
            //提交数据的类型 POST GET
            type:"POST",
            //提交的网址
            "testLogin.aspx",
            //提交的数据
            data:{Name:"sanmao",Password:"sanmaoword"},
            //返回数据的格式
            datatype: "html",//"xml", "html", "script", "json", "jsonp", "text".
            //在请求之前调用的函数
            beforeSend:function(){$("#msg").html("logining");},
            //成功返回之后调用的函数            
            success:function(data){
           $("#msg").html(decodeURI(data));           
            }   ,
            //调用执行后调用的函数
            complete: function(XMLHttpRequest, textStatus){
               alert(XMLHttpRequest.responseText);
               alert(textStatus);
                //HideLoading();
            },
            //调用出错执行的函数
            error: function(){
                //请求出错处理
            }        
         });

  }  
  
  
  