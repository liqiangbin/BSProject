package com.cn.hnust.controller;  
  
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.hnust.pojo.Manager;
import com.cn.hnust.pojo.User;
import com.cn.hnust.service.ManagerService;
  
@Controller  
@RequestMapping("/manager")  
public class ManagerController {  
    @Resource  
    private ManagerService managerService;  
      
    @RequestMapping("/showManager")  
    public String toIndex(HttpServletRequest request,Model model){  
        int managerId = Integer.parseInt(request.getParameter("id"));  
        Manager  manager=this.managerService.getManagerById(managerId);
        model.addAttribute("manager", manager );  
        return "showManager";  
    }  
}  