package com.cn.hnust.controller;

import java.util.ArrayList;
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

import com.alibaba.fastjson.JSONObject;
import com.cn.hnust.pojo.Manager;
import com.cn.hnust.pojo.Page;
import com.cn.hnust.service.ManagerService;

@Controller
@RequestMapping("/manager")
@SessionAttributes("managerParams")
public class ManagerController {
	@Resource
	private ManagerService managerService;
	private String responseJson;
	private String oldPassword;
	private int managerId;
	private final String JSON_JSP = "commons/jsondata";


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
/**
 * 根据id查询manager
 * @param request
 * @param model
 * @return  编辑页面
 */
	@RequestMapping("/showManager")
	public String toIndex(HttpServletRequest request, Model model) {
		int managerId = Integer.parseInt(request.getParameter("id"));
		Manager manager = this.managerService.getManagerById(managerId);
		model.addAttribute("manager", manager);
		return "manager/managerEdit";
	}
/**
 * 修改密码
 * @param request
 * @param model
 * @param manager
 * @return
 */
	@RequestMapping("/passwordEdit")
	public String passwordEdit(HttpServletRequest request, Model model,
			Manager manager) {
		int xx = this.managerService.updateByPrimaryKeySelective(manager);
		//System.out.println(manager.getPassword()+manager.getId());
		if (xx != 0) {
			model.addAttribute("passwordEditInfo", "密码修改成功，下次请通过新密码登录！");
		} else {
			model.addAttribute("passwordEditInfo", "密码修改失败，请重新修改！");
		}
		return "manager/passwordEdit";
	}
/**
 * 获取旧密码
 * @param request
 * @param model
 * @param manager
 * @return
 */
	@RequestMapping("/getOldPassword")
	public String getOldPassword(HttpServletRequest request, Model model,
			Manager manager) {
		//System.out.println(manager.getId() + "+" + oldPassword);
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("Id", manager.getId());
		List<Manager> managers = managerService.getManager(condition);
		JSONObject data = new JSONObject();
		if (managers.size() > 0) {
			data.put("hasOldPassword", "true");
		} else {
			data.put("hasOldPassword", "false");
		}
		responseJson = data.toString();
		//System.out.println("json:" + responseJson);
		return "manager/passwordEdit";
	}
/**
 * 根据分页信息查询manager
 * @param request
 * @param model
 * @param manager
 * @param session
 * @return
 */
	@RequestMapping("/getManagerByPage")
	public String getManagerByPage(HttpServletRequest request, Model model,
			Manager manager, HttpSession session) {
		List<Manager> managerList = new ArrayList<Manager>();
		int counts;// 分页记录总数
		String pageNow = request.getParameter("pageNow");
		String countString=request.getParameter("allcount");
		Page page = null;
		// 判断分页参数
		Manager managerParams = (Manager) session.getAttribute("managerParams");
		if (countString != null) {
			counts = Integer.parseInt(countString);
			manager=managerParams;
		} else {
			counts = managerService.getCounts(manager);
		}
		 // 添加查询条件
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("id", manager.getId());
		condition.put("loginname", manager.getLoginname());
		condition.put("password", manager.getPassword());
		condition.put("name", manager.getName());
		condition.put("status", manager.getStatus());
		condition.put("role", manager.getRole());
		if (pageNow != null && pageNow != "") {
			page = new Page(counts, Integer.parseInt(pageNow));
		} else {
			page = new Page(counts, 1);
		}
		condition.put("startPos", page.getStartPos());
		condition.put("pageSize", page.getPageSize());
		managerList = this.managerService.getManagerByPage(condition);
		model.addAttribute("managerList", managerList);
		model.addAttribute("page", page);
		model.addAttribute("managerParams", manager);
		session.setAttribute("managerParams", manager);
		model.addAttribute("url", "/manager/getManagerByPage");
		//下面判断是否从删除页面跳转过来
		String deleted=(String) session.getAttribute("deleted");
		//System.out.println("删除状态："+deleted);
		if(deleted!=null){
			model.addAttribute("deleted", deleted);
			session.removeAttribute("deleted");
		}
		return "manager/manager";
	}
	/**
	 * 添加manager
	 * @param request
	 * @param model
	 * @param manager
	 * @return
	 */
	@RequestMapping("/addManager")
	public String addManager(HttpServletRequest request, Model model,Manager manager) {
		int success=managerService.insertManager(manager);
		if(success!=1){
			model.addAttribute("manager",manager);
			model.addAttribute("success","保存失败，请重试！");
			return "manager/managerAdd";
		}else{
		return "redirect:/manager/getManagerByPage";
		}
	}
	/**
	 * 编辑管理员信息
	 * @param request
	 * @param model
	 * @param manager
	 * @return 编辑页面
	 */
	@RequestMapping("/managerEdit")
	public String managerEdit(HttpServletRequest request, Model model,
			Manager manager) {
		int xx = this.managerService.updateByPrimaryKeySelective(manager);
		//System.out.println(xx);
		if (xx != 0) {
			model.addAttribute("manager", manager);
			model.addAttribute("managerEditInfo", "管理员信息修改成功!");
		} else {
			model.addAttribute("manager", manager);
			model.addAttribute("managerEditInfo", "管理员信息修改失败！");
		}
		return "manager/managerEdit";
	}
	/**
	 * 
	 * @param request
	 * @param model
	 * @param manager
	 * @param session
	 * @return
	 */
	@RequestMapping("/deleteById")
	public String deleteById(HttpServletRequest request, Model model,
			Manager manager,HttpSession session) {
		int managerId = Integer.parseInt(request.getParameter("id"));
		int xx=managerService.deleteByPrimaryKey(managerId);
		if (xx != 0) {
		    session.setAttribute("deleted", "success");
			//System.out.println(xx);
		} 
		return "redirect:/manager/getManagerByPage";
	}
	

}