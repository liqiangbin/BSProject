package com.cn.hnust.controller;  
  
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSONObject;
import com.cn.hnust.pojo.Manager;
import com.cn.hnust.service.ManagerService;
  
@Controller  
@RequestMapping("/manager")  
public class ManagerController {  
    @Resource  
    private ManagerService managerService;  
    private String responseJson;
    private String oldPassword;
    private int managerId;
    private final String JSON_JSP = "/api/TransSummary/jsondata.jsp";
   
	public int getManagerId() {
		return managerId;
	}
	public void setManagerId(int managerId) {
		this.managerId = managerId;
	}
	public String getOldPassword() {
		return oldPassword;
	}
	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}
	public String getResponseJson() {
		return responseJson;
	}
	public void setResponseJson(String responseJson) {
		this.responseJson = responseJson;
	}
	@RequestMapping("/showManager")  
    public String toIndex(HttpServletRequest request,Model model){  
        int managerId = Integer.parseInt(request.getParameter("id"));  
        Manager  manager=this.managerService.getManagerById(managerId);
        model.addAttribute("manager", manager );  
        return "showManager";  
    }  
    @RequestMapping("/passwordEdit")  
    public String passwordEdit(HttpServletRequest request,Model model,Manager manager){  
    	int xx=this.managerService.updateByPrimaryKeySelective(manager);
        if(xx!=0){
        	model.addAttribute("passwordEditInfo", "密码修改成功，下次请通过新密码登录！");  
        }else{
        	model.addAttribute("passwordEditInfo", "密码修改失败，请重新修改！");  
        }
    	return "manager/passwordEdit";  
    }  
    @RequestMapping("/getOldPassword")  
    public String getOldPassword(HttpServletRequest request,Model model,Manager manager){  
    	System.out.println(manager.getId()+"+"+oldPassword);
    	Map<String, Object> condition= new HashMap<String,Object>();
		condition.put("Id",manager.getId());
		//condition.put("password",oldPassword);
    	List<Manager> managers= managerService.getManager(condition);
    	JSONObject data = new JSONObject();
    	if(managers.size()>0){
    		data.put("hasOldPassword", "true");
    	}else{
    		data.put("hasOldPassword", "false");
    	}
    	 responseJson = data.toString();
   		 System.out.println("json:"+responseJson);
    	return "manager/passwordEdit";  
    }  
}  