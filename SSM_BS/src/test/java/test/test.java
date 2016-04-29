package test;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.cn.hnust.pojo.Order;
import com.cn.hnust.pojo.User;
import com.cn.hnust.service.IUserService;
import com.cn.hnust.service.OrderService;
  
@RunWith(SpringJUnit4ClassRunner.class)     //��ʾ�̳���SpringJUnit4ClassRunner��  
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})  
  
public class test {  
    private static Logger logger = Logger.getLogger(test.class);  
//  private ApplicationContext ac = null;  
    @Resource  
    private  IUserService userService = null;
    @Resource  
    private OrderService orderService = null; 
//  @Before  
//  public void before() {  
//      ac = new ClassPathXmlApplicationContext("applicationContext.xml");  
//      userService = (IUserService) ac.getBean("userService");  
//  } 
    @Test  
    public void test1() {  
    	System.out.println("first");
        User user = userService.getUserById(2);  
        logger.info("ֵ用户名："+user.getUserName());  
        logger.info(JSON.toJSONString(user));  
    }  
    @Test  
    public void test2() {  
    	System.out.println("first");
       // User user = userService.getUserById(2);  
    	User user=new User();
    	user.setId(3);
    	user.setAge(12);
    	user.setUserName("ssss");
    	user.setPassword("111111");
       // System.out.println("second");
        // System.out.println("***********8"+user.getUserName());  
//         logger.info("ֵ��"+user.getUserName());  
//        logger.info(JSON.toJSONString(user)); 
    	
    	userService.insert(user);
    } 
   
    /**
     * 测试按月查询订单
     */
    
    @Test
    public void countTest(){
    	List<Order> list=orderService.findByMonth("2016-04-28%");
    	System.out.println("listsize()"+list.size());
    	String s="2016-04-28";
    	String m=s.substring(8, 10);
    	System.out.println(m);
    }
}