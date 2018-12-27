package com.yidu.test;

import java.util.HashMap;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.yidu.lrh.bean.Delivery;
import com.yidu.lrh.dao.DeliveryMapper;

/**
 * 
 * <p>Title：TestDemo</p>
 * <p>Description：</p>
 * <p>Company：www.yiduedu.com</p>
 * @author LWJ
 * @date 2018-12-11 上午9:37:24
 * @version 1.0
 * 
 */
public class TestDemo {
	public static void main(String[] args) {
		/*SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		System.out.println(sdf.format(new Date()));*/
		new TestDemo().demo();
	}
	
	public void demo() {
		@SuppressWarnings("resource")
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		//StorageMapper必须小写
		DeliveryMapper bean = ac.getBean("deliveryMapper",DeliveryMapper.class);
		Map<String, Object> maps=new HashMap<String, Object>();
		maps.put("page", (1-1)*5);
		maps.put("row", 5);
		for (Delivery Sto : bean.selectLimit(maps)) {
			System.out.println(Sto.toString());
		}
	}
	
}
