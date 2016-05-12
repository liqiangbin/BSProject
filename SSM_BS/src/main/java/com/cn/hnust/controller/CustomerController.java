package com.cn.hnust.controller;  
  
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.hnust.pojo.Book;
import com.cn.hnust.pojo.Customer;
import com.cn.hnust.pojo.Notice;
import com.cn.hnust.pojo.Subtype;
import com.cn.hnust.pojo.Type;
import com.cn.hnust.service.BookService;
import com.cn.hnust.service.CustomerService;
import com.cn.hnust.service.NoticeService;
import com.cn.hnust.service.SubTypeService;
import com.cn.hnust.service.TypeService;
  
@Controller  

@RequestMapping("/customer")  
public class CustomerController {  
	private static String zhuzuo="00";
	private static String keji="10";
	private static String jiaoyu="20";
	private static String shenghuo="30";
	private static String zhengzhi="40";
	
    @Resource  
    private CustomerService customerService;  
    @Resource  
    private TypeService typeService;  
    @Resource  
    private SubTypeService subTypeService; 
    @Resource 
    private NoticeService noticeService; 
    @Resource 
    private BookService bookService; 
      
    @RequestMapping("/regeist")  
    public String toIndex(HttpServletRequest request,Customer customer,Model model){  
       System.out.println("zhuce");
    	int s=customerService.insert(customer);
    	if(s==1){
    		model.addAttribute("regeistMessage", "注册成功！请登录");
    	}else{
    		model.addAttribute("regeistMessage", "注册失败！请重试");
    	}
    	return "customer/login";  
    }  
    @RequestMapping("/update")  
    public String update(HttpServletRequest request,Customer customer,Model model){  
       
    	int s=customerService.updateById(customer);
    	if(s==1){
    		model.addAttribute("updateMessage", "修改成功");
    	}else{  
    		model.addAttribute("updateMessage", "修改失败");
    	}
    	return "update";  
    }  
    @RequestMapping("/index")  
    public String index(HttpServletRequest request,Customer customer,Model model,Type type,Subtype sub1,HttpSession session){  
    	//查询图书分类信息
    	List<Type> workList=new ArrayList();
    	List<Type> lifeList=new ArrayList();
    	List<Type> scienceList=new ArrayList();
    	List<Type> educateList=new ArrayList();
    	List<Type> otherList=new ArrayList();
    	List<Type> politicList=new ArrayList();
    	List<Type> typeList = typeService.getByParams(type);
 		List<Subtype> subList = subTypeService.getAllSelect(sub1);
 		for (Type type1 : typeList) {
 			String s=type1.getTypenumber().toString().substring(0, 2);
 			if(s.equals(CustomerController.zhuzuo)){
 				workList.add(type1);
 			}
 			else if(s.equals(CustomerController.keji)){
 				scienceList.add(type1);
 			}
 			else if(s.equals(CustomerController.jiaoyu)){
 				educateList.add(type1);
 			}
 			else if(s.equals(CustomerController.shenghuo)){
 				lifeList.add(type1);
 			}else if(s.equals(CustomerController.zhengzhi)){
 				politicList.add(type1);
 			}else{
 				otherList.add(type1);
 			}
		}
 		session.setAttribute("workList", workList);
 		session.setAttribute("scienceList", scienceList);
 		session.setAttribute("educateList", educateList);
 		session.setAttribute("lifeList", lifeList);
 		session.setAttribute("politicList", politicList);
 		session.setAttribute("otherList", otherList);
 		session.setAttribute("subList", subList);
       //查询最新优惠信息
    	List<Notice> AllList=noticeService.SellectAll();
    	List<Notice> allActivityList=new ArrayList();
    	List<Notice> top3ActivityList=new ArrayList();
    	int top=0;
    	for (Notice notice : AllList) {
			if(notice.getType()==1){
				allActivityList.add(notice);
				if(top<3){
				top3ActivityList.add(notice);
				top++;
				}
			}
			
		}
    	model.addAttribute("top3ActivityList",top3ActivityList);
       //查询图书销量排行
    	List<Book> bookList=bookService.getBySaled();
    	List<Book> top3BbookList=new ArrayList();
    	int top1=0;
    	for (Book book : bookList) {
			if(top1<3){
				top3BbookList.add(book);
				top1++;
				}else{
					break;
				}
		}
    	model.addAttribute("top3BbookList",top3BbookList);
      //查询新书上架
    	
    	//查询智能推荐
    
    	return "/customer/index";  
    }
}  