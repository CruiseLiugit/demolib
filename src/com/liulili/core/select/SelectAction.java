package com.liulili.core.select;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.json.Json;
import org.nutz.lang.Strings;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;

import com.liulili.core.map.BaiduMapBiz;
import com.liulili.core.map.jsonbean.Geocoding;

/**
 * 作为接受页面请求的控制器
 * @author lililiu
 *
 */
@IocBean
public class SelectAction {

	private static final Log log = Logs.get();
	
	//ioc 注入
	// 填写注入类的 名称，类名首字母小写  
	@Inject("refer:baiduMapBiz")
	//private BaiduMapBiz baidu;
	
	//@Inject
	//private Dao dao;
	
	@At("/selectdemo1")
	@Ok("jsp:select.demo1")
	public void demo1(){
	}
	
	@At("/selectdemo2")
	@Ok("jsp:select.demo2")
	public void demo2(){
	}
	
	@At("/selectdemo3")
	@Ok("jsp:select.demo3")
	public void demo3(){
	}
	
	@At("/selectdemo4")
	@Ok("jsp:select.demo4")
	public void demo4(){
	}
	
	
	//--------------------------------------------
	private static List<Province> provinces = new ArrayList<Province>();  
    
    static{  
    		Province province = null;   
        for(int i=0;i<10;i++){  
        		province = new Province();  
        		province.setId(i);  
        		province.setName("省份【"+i+"】");  
        		 
        		provinces.add(province);  
        }  
    }  
	/**
	 * Demo 2 ajax 异步请求
	 * 	      默认返回 json 字符串
	 * @param shopaddr
	 * @param customeraddr
	 * @param request
	 * @return
	 */
	@At("/getprovince")
	public String getprovince(){
		return Json.toJson(provinces);
	}
	
	//----------------------------------------------
	/**
	 * Demo 3 案例一，输入地址，直接搜索一个经纬度
	 * 	      默认返回 json 字符串
	 * @param shopaddr
	 * @param customeraddr
	 * @param request
	 * @return
	 */
	@At("/GetBranchOne")
	public String GetBranchOne(@Param("shopaddr")String shopaddr,@Param("customeraddr")String customeraddr,HttpServletRequest request){
		
		return "";
	}
	
	
	//------------------------------------
	private static List<Teacher> teachers = new ArrayList<Teacher>();  
    private static List<Student> students = new ArrayList<Student>();  
    private int tid;  
    static{  
        Teacher teacher = null;   
        Student student = null;  
        for(int i=0;i<10;i++){  
            teacher = new Teacher();  
            teacher.setId(i);  
            teacher.setName("教师【"+i+"】");  
            for(int j=0;j<10;j++){  
                student = new Student();  
                student.setId(j);  
                student.setName(teacher.getName()+"的学生【"+i+"|"+j+"】");  
                student.setTeacher(teacher);  
                students.add(student);  
            }  
            teachers.add(teacher);  
        }  
    }  
      
	
	/**
	 * Demo 4 请求一，获取教师信息
	 * 	      默认返回 json 字符串
	 * @param shopaddr
	 * @param customeraddr
	 * @param request
	 * @return
	 */
	@At("/demo4ParentSelect")
	public String demo4ParentSelect(){
		return Json.toJson(teachers);
	}
	
}
