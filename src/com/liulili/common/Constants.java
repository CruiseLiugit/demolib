package com.liulili.common;

/**
 * 所有常量定义在这里
 * @author SDJG
 *
 */
public final class Constants {
	
	//-----------------------------------------------------------
	//http://developer.baidu.com/map/webservice-placeapi.htm
	
	//百度地图Place API服务地址
	//5.Place区域检索POI服务  Place POI
	//http://api.map.baidu.com/place/v2/search?ak=您的密钥&output=json&query=银行&page_size=10&page_num=0&scope=1&region=北京
	
	
	//3）圆形区域检索参数
	//圆形区域检索示例(返回xml数据)：
	//http://api.map.baidu.com/place/v2/search?&query=银行&location=39.915,116.404&radius=2000&output=xml&ak=66K99NkKszXrvpuhQWctW0o1
	//http://api.map.baidu.com/place/v2/search?&query=银行&location=39.915,116.404&radius=2000&output=json&ak=66K99NkKszXrvpuhQWctW0o1
	public static final String RADIUSSEARCH_URL="http://api.map.baidu.com/place/v2/search";
	public static final String RADIUS="3000";  //默认搜索半径 3公里
	
	//-----------------------------------------------------------
	// 百度地图Geocoding API
	// 通用接口参数
	//百度地图Geocoding API服务地址
	public static final String GEBASEURL = "http://api.map.baidu.com/geocoder/v2/";
	//output  非必须，默认 xml, 	json或xml 	输出格式为json或者xml
	public static final String OUTPUT = "json";
	//ak      必须，用户申请注册的key，自v2开始参数修改为“ak”，之前版本参数为“key”
	public static final String AK = "66K99NkKszXrvpuhQWctW0o1";
	
	//地理编码服务，需要用户从页面输入，不能定位常量
	//参数	   是否必须	默认值	 格式举例	                          含义
	//address 	是 	     无   	北京市海淀区上地十街10号 	根据指定地址进行坐标的反定向解析
	//city 	    否 	   “北京市” 	“广州市”              	地址所在的城市名
	
	//设置 IP 白名单，可以不需要 sn   callback 参数
	//0.0.0.0/0
	//http://api.map.baidu.com/geocoder/v2/?ak=您的密钥&callback=renderOption&output=json&address=百度大厦&city=北京市
	//无回调函数
	public static final String GEURL = GEBASEURL+"?ak="+AK+"&output="+OUTPUT+"&";
	
	
	//-----------------------------------------------------------
	//Route Matrix API是一套以HTTP形式提供的批量线路查询接口，用于返回多个起点和多个终点间的线路距离和行驶时间
	//该接口适用于仅获取线路距离和时间，无需获取详细线路信息或者需要同时获取多起点、多终点线路距离等的情况。
	//如根据用户输入地址为唯一起点，获取周边 留夫鸭门店 为多个终点的，线路信息
	//使用限制
    //	起终点个数最多为5个，即每个请求串最多能查询25条线路信息；
    //	每个ak每天最多查询10万次。
	//http://api.map.baidu.com/direction/v1/routematrix
	//http://api.map.baidu.com/direction/v1/routematrix?output=json&origins=起点1|起点2&destinations=终点1|终点2&ak=E4805d16520de693a3fe707cdc962045  
	//origins=origin1|orgin2为请求的起点，destinations=destination1|destination2为请求的终点：
	//起点、终点使用名称
	//http://api.map.baidu.com/direction/v1/routematrix?output=json&origins=上海东方明珠&destinations=上海南京东路|上海中山公园&ak=66K99NkKszXrvpuhQWctW0o1
	//起点、终点使用经纬度坐标
	//http://api.map.baidu.com/direction/v1/routematrix?output=json&origins=40.056878,116.30815&destinations=39.915285,116.403857&ak=66K99NkKszXrvpuhQWctW0o1
	
	/*
	 {
  "status" : 0,
  "message" : "ok",
  "info" : {
    "copyright" : {
      "text" : "@2014 Baidu - Data",
      "imageUrl" : "http:\/\/api.map.baidu.com\/images\/copyright_logo.png"
    }
  },
  "result" : {
    "elements" : [
      {
        "distance" : {
          "value" : 6247,
          "text" : "6.2公里"
        },
        "duration" : {
          "value" : 1106,
          "text" : "18分钟"
        }
      },
      {
        "distance" : {
          "value" : 12170,
          "text" : "12.2公里"
        },
        "duration" : {
          "value" : 1562,
          "text" : "26分钟"
        }
      }
    ]
  }
}
	*/
	public static final String  RouteMatrixUrl = "http://api.map.baidu.com/direction/v1/routematrix?output=json"; 
	
	
	//-----------------------------------------------------------
		//IP定位 API是一个根据IP返回对应位置信息的http形式位置服务接口,支持多种语言调用，如C# 、C++、Java等，即通过发送http请求，返回json格式的位置数据（包括坐标值、省份、城市、百度城市代码等）。
		//1.获取指定IP的位置信息：指定IP值，返回该IP对应的位置信息；
		//以城市为分类的应用或网站：根据用户当前IP来提供对应城市的服务
		//限制
		//每个key每天支持100万次调用，超过限制不返回数据。
		//IP定位的结果精度较差，主要应用获取省份或者城市的位置信息
		//URL：http://api.map.baidu.com/location/ip
		//实例
		//http://api.map.baidu.com/location/ip?ak=E4805d16520de693a3fe707cdc962045&
		//ip=202.198.16.3&
		//coor=bd09ll
		//返回值
		/*
		 {
	  "address" : "CN|吉林|长春|None|CERNET|1|None",
	  "content" : {
	    "address" : "吉林省长春市",
	    "point" : {
	      "x" : "125.31364243",
	      "y" : "43.89833761"
	    },
	    "address_detail" : {
	      "district" : "",
	      "street_number" : "",
	      "province" : "吉林省",
	      "city" : "长春市",
	      "city_code" : 53,
	      "street" : ""
	    }
	  },
	  "status" : 0
	}
		 */
		//ip 	ip地址 	string 	可选，ip不出现，或者出现且为空字符串的情况下，会使用当前访问者的IP地址作为定位参数
		//ak 	用户密钥 	string 	必选，在lbs云官网注册的access key，作为访问的依据	
		//sn 	用户的权限签名 	string 	可选，若用户所用ak的校验方式为sn校验时该参数必须。（sn生成算法）
		//coor 	输出的坐标格式 	string 	可选，coor不出现时，默认为百度墨卡托坐标；coor=bd09ll时，返回为百度经纬度坐标
		public static final String IPURL = "http://api.map.baidu.com/location/ip";
		//output  非必须，默认 xml, 	json或xml 	输出格式为json或者xml
		//输出坐标格式，才有 百度经纬度坐标
		public static final String COOR = "bd09ll";
			
		//接口
		//http://localhost:8080/demolib/map/searchByIP?ip=202.198.16.3
	
	
	//-----------------------------------------------------------
	//百度地图 Place suggestion API ，后台增加门店时使用
	//Place suggestion API 是一套以HTTP形式提供的匹配用户输入关键字辅助信息、提示接口，可返回json或xml格式的一组建议词条的数据。
	//配合Place API使用：使用本接口请求，可调出匹配用户输入的关键字的建议列表，用户选择列表中确定的一条，结合Place API返回查询的结果。
	
	
	
	
	
	


	
	

}
