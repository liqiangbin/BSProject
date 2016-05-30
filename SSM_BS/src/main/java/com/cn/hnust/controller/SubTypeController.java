package com.cn.hnust.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.hnust.pojo.Notice;
import com.cn.hnust.pojo.Subtype;
import com.cn.hnust.pojo.Type;
import com.cn.hnust.service.SubTypeService;
import com.cn.hnust.service.TypeService;

@Controller  
@RequestMapping("/subType")  
public class SubTypeController {
	@Resource 
    private SubTypeService subTypeService; 
	@Resource 
    private TypeService typeService; 
	/**
	 * 
	 * @param request
	 * @param model
	 * @param subtype
	 * @param type
	 * @return
	 */
	@RequestMapping("/SellectByParams")  
    public String toIndex(HttpServletRequest request,Model model,Subtype subtype,Type type,HttpSession session){ 
		type.setId(null);
		//System.out.println("---"+subtype.getId()+"--"+subtype.getTypenumber());
        List<Subtype> subList=this.subTypeService.getAllSelect(subtype);
        //System.out.println("type==="+type.getTypenumber()+"id:"+subtype.getId());
        //System.out.println("subtype==="+type.getTypenumber()+"id:"+subtype.getId());
        List<Type> typeList=this.typeService.getByParams(type);
       // System.out.println("typeList"+typeList.size());
        List<Subtype> subAll=this.subTypeService.selectAll();
        List<Type> typeAll=this.typeService.selectAll();
        model.addAttribute("subAll",subAll);
		model.addAttribute("typeAll",typeAll);
		model.addAttribute("subList",subList);
		model.addAttribute("typeList",typeList);
		model.addAttribute("subtypeParams",subtype);
		//System.out.println("TypeList:"+typeList.size()+typeList.get(0).getTypedescn());
		//System.out.println("subList:"+subList.size());
		//下面判断是否从删除页面跳转过来
				String deleted=(String) session.getAttribute("subTypeDeleted");
				//System.out.println("删除状态："+deleted);
				if(deleted!=null){
					model.addAttribute("subTypeDeleted", deleted);
					session.removeAttribute("subTypeDeleted");
				}
				String deleted1=(String) session.getAttribute("typeDeleted");
				//System.out.println("删除状态："+deleted);
				if(deleted1!=null){
					model.addAttribute("typeDeleted", deleted1);
					session.removeAttribute("typeDeleted");
				}
        return "bookType/type"; 
    } 
	/**
	 * 
	 * @param request
	 * @param model
	 * @param type
	 * @param session
	 * @return
	 */
	@RequestMapping("/deleteType")
	public String deleteTypeById(HttpServletRequest request, Model model,
			Type type,HttpSession session) {
		int typenumber = Integer.parseInt(request.getParameter("typeNumber"));
		int xx=typeService.deleteByTypeNumber(typenumber);
		if (xx != 0) {
		    session.setAttribute("typeDeleted", "success");
		} 
		return "redirect:/subType/SellectByParams";
	}
	@RequestMapping("/deleteSubtype")
	public String deleteSubById(HttpServletRequest request, Model model,
			Subtype type,HttpSession session) {
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		int xx=subTypeService.deleteById(id);
		System.out.println(xx);
		if (xx != 0) {
		    session.setAttribute("subTypeDeleted", "success");
		} 
		return "redirect:/subType/SellectByParams";
	}
	/**
	 * 
	 * @param request
	 * @param model
	 * @param type
	 * @param session
	 * @return
	 */
	@RequestMapping("/insertType")
	public String insertType(HttpServletRequest request, Model model,
			Type type,HttpSession session) {
		typeService.insert(type);
		return "redirect:/subType/SellectByParams";
	}
	/**
	 * 
	 * @param request
	 * @param model
	 * @param type
	 * @param session
	 * @return
	 */
	@RequestMapping("/insertSubtype")
	public String insertSubtype(HttpServletRequest request, Model model,
			Subtype type,HttpSession session) {
		subTypeService.insert(type);
		return "redirect:/subType/SellectByParams";
	}
	/**
	 * 
	 * @param request
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping("/addSubtype")
	public String addSubtype(HttpServletRequest request, Model model,
			HttpSession session) {
		List<Type> typeList=typeService.selectAll();
		model.addAttribute("typeList", typeList);
		return "bookType/subtypeAdd";
	}
	/**
	 * 返回细类页面
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/editSubtype")
	public String editSubtype(HttpServletRequest request, Model model) {
		List<Type> typeList=typeService.selectAll();
		model.addAttribute("typeList", typeList);
		int id = Integer.parseInt(request.getParameter("id"));
		Subtype sub=new Subtype();
		sub.setId(id);
		Subtype subtype=subTypeService.getAllSelect(sub).get(0);
		model.addAttribute("subtype", subtype);
		return "bookType/subtypeEdit";
	}
	/**
	 * 返回大类页面
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/editType")
	public String editType(HttpServletRequest request, Model model) {
		int id = Integer.parseInt(request.getParameter("id"));
		Type typ=new Type();
		typ.setId(id);
		Type type=typeService.getByParams(typ).get(0);
		model.addAttribute("type", type);
		return "bookType/typeEdit";
	}
	/**
	 * 编辑大类
	 * @param request
	 * @param model
	 * @param type
	 * @param session
	 * @return
	 */
	@RequestMapping("/updateType")
	public String updateType(HttpServletRequest request, Model model,
			Type type,HttpSession session) {
		int xx=typeService.update(type);
		return "redirect:/subType/SellectByParams";
	}
	/**
	 * 编辑细类
	 * @param request
	 * @param model
	 * @param type
	 * @param session
	 * @return
	 */
	@RequestMapping("/updateSubtype")
	public String updateSubtype(HttpServletRequest request, Model model,
			Subtype type,HttpSession session) {
		int xx=subTypeService.update(type);
		return "redirect:/subType/SellectByParams";
	}

}
