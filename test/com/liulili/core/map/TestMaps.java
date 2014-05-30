package com.liulili.core.map;

import org.junit.Before;
import org.junit.Test;
import org.nutz.log.Log;
import org.nutz.log.Logs;

import com.liulili.core.map.jsonbean.Geocoding;

import static org.junit.Assert.*;

public class TestMaps {

	private static final Log log = Logs.get();
	
	
	private BaiduMapBiz map;
	
	@Before
	public void createObj(){
		map= new BaiduMapBiz();	
	}
	
	/**
	 * 测试输入城市、地址，查询出经纬度
	 */
	@Test
	public void testGeMap(){
		assertNotNull(map);
		try {
			Geocoding ge = map.getMapByGet("百度大厦", "北京市");
			assertNotNull(ge);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
}
