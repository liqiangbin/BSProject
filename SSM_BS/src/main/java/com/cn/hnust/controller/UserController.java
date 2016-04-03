package com.cn.hnust.controller;  
  
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cn.hnust.pojo.User;
import com.cn.hnust.service.IUserService;
  
@Controller  

@RequestMapping("/user")  
@SessionAttributes("mm")
public class UserController {  
    @Resource  
    private IUserService userService;  
      
    @RequestMapping("/showUser")  
    public String toIndex(HttpServletRequest request,Model model){  
        int userId = Integer.parseInt(request.getParameter("id"));  
        User user = this.userService.getUserById(userId);  
        model.addAttribute("user", user); 
        model.addAttribute("mm","mm1");
        return "jsp/showUser";  
    }  
}  