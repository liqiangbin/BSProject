package com.cn.hnust.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.hnust.pojo.Manager;
import com.cn.hnust.pojo.Notice;
import com.cn.hnust.pojo.Page;
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
        return "redirect:/notice/getNoticeByPage"; 
    }  
	@RequestMapping("/getNoticeByPage")
	public String getManagerByPage(HttpServletRequest request, Model model,
			Notice notice, HttpSession session){
		List<Notice> noticeList = new ArrayList<Notice>();
		int counts;// 分页记录总数
		String pageNow = request.getParameter("pageNow");
		String countString=request.getParameter("allcount");
		Page page = null;
		// 判断分页参数
		Notice noticeParams = (Notice) session.getAttribute("noticeParams");
		if (countString != null) {
			counts = Integer.parseInt(countString);
			notice=noticeParams;
		} else {
			counts = noticeService.getCounts(notice);
		}
		 // 添加查询条件
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("id", notice.getId());
		condition.put("date", notice.getDate());
		condition.put("title", notice.getTitle());
		condition.put("content", notice.getContent());
		condition.put("authorname", notice.getAuthorname());
		condition.put("type",notice.getType());
		if (pageNow != null && pageNow != "") {
			page = new Page(counts, Integer.parseInt(pageNow));
		} else {
			page = new Page(counts, 1);
		}
		condition.put("startPos", page.getStartPos());
		condition.put("pageSize", page.getPageSize());
		//System.out.println("startPos:"+ page.getStartPos());
		//System.out.println("pageSize:"+page.getPageSize());
		noticeList = this.noticeService.getNoticeByPage(condition);
		//将数据库获取的时间戳转换成普通时间格式
		/*Date dateStr=noticeList.get(0).getDate();
		SimpleDateFormat outFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		for(int i=0;i<noticeList.size();i++){
			String s1=outFormat.format(noticeList.get(i).getDate());
			System.out.println("s1:"+s1);
			Date s;
			try {
				s = outFormat.parse(outFormat.format(s1));
				System.out.println(s);
				noticeList.get(i).setDate(s);
				System.out.println("改变没--》"+noticeList.get(i).getDate());
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}*/
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("page", page);
		model.addAttribute("noticeParams", notice);
		
		
		session.setAttribute("noticeParams", notice);
		model.addAttribute("url", "/notice/getNoticeByPage");
		//下面判断是否从删除页面跳转过来
		String deleted=(String) session.getAttribute("noticeDeleted");
		//System.out.println("删除状态："+deleted);
		if(deleted!=null){
			model.addAttribute("noticeDeleted", deleted);
			session.removeAttribute("noticeDeleted");
		}
		return "manager/notice";
	}
	/**
	 */
	@RequestMapping("/deleteById")
	public String deleteById(HttpServletRequest request, Model model,
			Notice notice,HttpSession session) {
		int noticeId = Integer.parseInt(request.getParameter("id"));
		int xx=noticeService.deleteById(noticeId);
		if (xx != 0) {
		    session.setAttribute("noticeDeleted", "success");
		} 
		return "redirect:/notice/getNoticeByPage";
	}
}
