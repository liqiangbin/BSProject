package com.cn.hnust.controller;  
  
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.hnust.pojo.Customer;
import com.cn.hnust.service.CustomerService;
  
@Controller  

@RequestMapping("/customer")  
public class CustomerController {  
    @Resource  
    private CustomerService customerService;  
      
    @RequestMapping("/regeist")  
    public String toIndex(HttpServletRequest request,Customer customer,Model model){  
       
    	int s=customerService.insert(customer);
    	if(s==1){
    		model.addAttribute("regeistMessage", "×¢²á³É¹¦£¡ÇëµÇÂ¼");
    	}else{
    		model.addAttribute("regeistMessage", "×¢²áÊ§°Ü£¡ÇëÖØÊÔ");
    	}
    	return "login";  
    }  
    @RequestMapping("/update")  
    public String update(HttpServletRequest request,Customer customer,Model model){  
       
    	int s=customerService.updateById(customer);
    	if(s==1){
    		model.addAttribute("updateMessage", "ÐÞ¸Ä³É¹¦");
    	}else{  
    		
    		model.addAttribute("updateMessage", "ÐÞ¸ÄÊ§°Ü");
    	}
    	return "update";  
    }  
}  