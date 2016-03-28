package com.cn.hnust.controller;

import java.sql.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.hnust.pojo.Notice;
import com.cn.hnust.service.NoticeService;

@Controller  
@RequestMapping("/notice")  
public class NoticeController {
	@Resource 
    private NoticeService noticeService; 
	@RequestMapping("/insertNotice")  
    public String toIndex(HttpServletRequest request,Model model,Notice notice){  
        //model.addAttribute("user", user); 
		String s=request.getParameter("title");
		System.out.println(s);
		System.out.println("notice��"+notice.getType()+"-"+notice.getTitle()+notice.getContent());
		noticeService.insert(notice);
        return "show";  
    }  
}