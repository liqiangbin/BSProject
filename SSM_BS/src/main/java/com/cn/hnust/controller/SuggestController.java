package com.cn.hnust.controller;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.hnust.pojo.Manager;
import com.cn.hnust.pojo.Suggest;
import com.cn.hnust.service.SuggestService;

@Controller  
@RequestMapping("/suggest")  
public class SuggestController {
	@Resource  
    private SuggestService suggestService ;
	@RequestMapping("/editSuggest")  
	 public String editSuggest(HttpServletRequest request,Model model,HttpSession session) throws ParseException{  
		List<Suggest> suggestList=suggestService.sellectAll();
		Suggest suggest0=suggestList.get(0);
		Suggest suggest1=suggestList.get(1);
		Suggest suggest2=suggestList.get(2);
		List<Suggest> allList=new ArrayList<Suggest>();
		for(int i=3;i<suggestList.size();i++){
			allList.add(suggestList.get(i));
		}
		model.addAttribute("suggest0", suggest0);
		model.addAttribute("suggest1", suggest1);
		model.addAttribute("suggest2", suggest2);
		model.addAttribute("allList", allList);
		//判断更新情况
		String status= (String) session.getAttribute("update");
		if(status!=null){
				model.addAttribute("updated", status);
		}
		return "/manager/suggest";
    } 
	@RequestMapping("/updateSuggest")  
	 public String updateSuggest(HttpServletRequest request,Model model,String suggestParam0,String suggestParam1,String suggestParam2,HttpSession session) throws ParseException{  
		Suggest suggest0 = new Suggest();
		Suggest suggest1 = new Suggest();
		Suggest suggest2 = new Suggest();
		suggest0.setId(1);
		suggest1.setId(2);
		suggest2.setId(3);
		List<Suggest> suggestList=suggestService.sellectAll();
		for(int i=3;i<suggestList.size();i++){
			if(Integer.parseInt(suggestParam0)==suggestList.get(i).getChoosenumber()){
				suggest0.setChoosenumber(suggestList.get(i).getChoosenumber());
				suggest0.setChoosedescn(suggestList.get(i).getChoosedescn());
			}
			if(Integer.parseInt(suggestParam1)==suggestList.get(i).getChoosenumber()){
				suggest1.setChoosenumber(suggestList.get(i).getChoosenumber());
				suggest1.setChoosedescn(suggestList.get(i).getChoosedescn());
			}
			if(Integer.parseInt(suggestParam2)==suggestList.get(i).getChoosenumber()){
				suggest2.setChoosenumber(suggestList.get(i).getChoosenumber());
				suggest2.setChoosedescn(suggestList.get(i).getChoosedescn());
			}
		}
		List<Suggest> list=new ArrayList<Suggest>();
		list.add(suggest0);
		list.add(suggest1);
		list.add(suggest2);
		int m=suggestService.update(list);
		if(m==1){
			session.setAttribute("update", "更新成功！");
		}else{
			session.setAttribute("update", "更新失败，请重试！");
		}
		return "redirect:/suggest/editSuggest";
   } 

}
