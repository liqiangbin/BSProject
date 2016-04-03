package com.cn.hnust.controller;

import java.text.ParseException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cn.hnust.pojo.Manager;
import com.cn.hnust.service.ManagerService;

@Controller  
@RequestMapping("/login")  
public class LoginController {
	@Resource  
    private ManagerService managerService;
	@RequestMapping("/turnIndex")  
	 public String toIndex(HttpServletRequest request,Model model,Manager manager,HttpSession session) throws ParseException{  
		int error=0;
		Map<String, String> condition= new HashMap<String, String>();
		condition.put("loginName",manager.getLoginname());
		condition.put("password",manager.getPassword());
		List<Manager> managers= managerService.getManager(condition);
		if(managers.size()!=1){
        	 error=1;
        	 model.addAttribute("error", error);
        	return "login"; 
        }
		//���ӵ�¼��session��Ϣ
		 session.setAttribute("managerId", managers.get(0).getId());
		 session.setAttribute("managerLoginname", managers.get(0).getLoginname());
		 session.setAttribute("managerPassword", managers.get(0).getPassword());
		 session.setAttribute("managerName", managers.get(0).getName());
		 session.setAttribute("managerRole", managers.get(0).getRole());
        return "manager/index"; 
    }  

}
