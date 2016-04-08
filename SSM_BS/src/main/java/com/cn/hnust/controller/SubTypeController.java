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
		//�����ж��Ƿ��ɾ��ҳ����ת����
				String deleted=(String) session.getAttribute("subTypeDeleted");
				//System.out.println("ɾ��״̬��"+deleted);
				if(deleted!=null){
					model.addAttribute("subTypeDeleted", deleted);
					session.removeAttribute("subTypeDeleted");
				}
				String deleted1=(String) session.getAttribute("typeDeleted");
				//System.out.println("ɾ��״̬��"+deleted);
				if(deleted1!=null){
					model.addAttribute("typeDeleted", deleted1);
					session.removeAttribute("typeDeleted");
				}
        return "manager/type"; 
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

}
