package com.cn.hnust.controller;

import java.util.*;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

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
    public String toIndex(HttpServletRequest request,Model model,Notice notice) throws ParseException{  
		Date date=new Date();
		DateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date time=dateFormat.parse(dateFormat.format(date));
		notice.setDate(time);
		noticeService.insert(notice);
        return "show"; 
    }  
}
