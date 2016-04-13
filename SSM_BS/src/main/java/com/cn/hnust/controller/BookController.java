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

import com.cn.hnust.pojo.Book;
import com.cn.hnust.pojo.Page;
import com.cn.hnust.pojo.Subtype;
import com.cn.hnust.pojo.Type;
import com.cn.hnust.service.BookService;
import com.cn.hnust.service.ReadFreeService;
import com.cn.hnust.service.SubTypeService;
import com.cn.hnust.service.TypeService;

@Controller
@RequestMapping("/book")
public class BookController {
	@Resource
	private BookService bookService;
	@Resource
	private ReadFreeService readFreeService;
	@Resource
	private TypeService typeService;
	@Resource
	private SubTypeService subTypeService;
/**
 * 
 * @param request
 * @param model
 * @param book
 * @param session
 * @param type
 * @param sub
 * @return
 */
	@RequestMapping("/getBookByPage")
	public String getBookByPage(HttpServletRequest request, Model model,
			Book book, HttpSession session, Type type, Subtype sub) {
		List<Book> bookList = new ArrayList<Book>();
		int counts;// ��ҳ��¼����
		String pageNow = request.getParameter("pageNow");
		String countString = request.getParameter("allcount");
		Page page = null;
		// �жϷ�ҳ����
		Book bookParams = (Book) session.getAttribute("bookParams");
		if (countString != null) {
			counts = Integer.parseInt(countString);
			book = bookParams;
		} else {
			counts = bookService.getCounts(book);

		}
		// ���Ӳ�ѯ����id name author publish type subtype
		//System.out.println(book.getName() + "|" + book.getAuthor() + "|"
			//	+ book.getPublish() + "|" + book.getType() + "|"
				//+ book.getSubtype());
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("id", book.getId());
		condition.put("name", book.getName());
		condition.put("publish", book.getPublish());
		condition.put("type", book.getType());
		condition.put("subtype", book.getSubtype());
		if (pageNow != null && pageNow != "") {
			page = new Page(counts, Integer.parseInt(pageNow));
		} else {
			page = new Page(counts, 1);
		}
		condition.put("startPos", page.getStartPos());
		condition.put("pageSize", page.getPageSize());
		bookList = this.bookService.getBookByPage(condition);
		System.out.println("list.size():" + bookList.size());
		model.addAttribute("bookList", bookList);
		model.addAttribute("page", page);
		model.addAttribute("bookParams", book);
		session.setAttribute("bookParams", book);
		model.addAttribute("url", "/book/getBookByPage");
		// �����ж��Ƿ��ɾ��ҳ����ת����
		String deleted = (String) session.getAttribute("bookDeleted");
		if (deleted != null) {
			model.addAttribute("bookDeleted", deleted);
			session.removeAttribute("bookDeleted");
		}
		//�����ж��Ƿ�ɹ��޸�
		String update = (String) session.getAttribute("bookUpdate");
		if (update != null) {
			if(update.equals("success")){
				model.addAttribute("bookUpdate", "�޸ĳɹ�");
			}else{
				model.addAttribute("bookUpdate", "�޸�ʧ�ܣ������ԣ�");
			}
			session.removeAttribute("bookUpdate");
		}
		// ��ȡͼ��������Ϣ
		Type type1 = new Type();
		Subtype sub1 = new Subtype();
		List<Type> typeList = typeService.getByParams(type1);
		//System.out.println(typeList.size() + "type");
		model.addAttribute("typeList", typeList);
		List<Subtype> subList = subTypeService.getAllSelect(sub1);
		System.out.println(subList.size() + "tsubListype");
		model.addAttribute("subList", subList);
		return "book/list";
	}
/**
 * 
 * @param request
 * @param model
 * @param book
 * @param session
 * @return
 */
	@RequestMapping("/deleteById")
	public String deleteById(HttpServletRequest request, Model model,
			Book book, HttpSession session) {
		int Id = Integer.parseInt(request.getParameter("id"));
		int xx = bookService.deleteById(Id);
		int yy = readFreeService.deleteByBookId(Id);
		if (xx != 0 && yy != 0) {
			session.setAttribute("bookDeleted", "success");
		}
		return "redirect:/book/getBookByPage";
	}
	/**
	 * 
	 * @param request
	 * @param model
	 * @param book
	 * @param session
	 * @return
	 */
	@RequestMapping("/updateStock")
	public String updateStock(HttpServletRequest request, Model model,
			Book book, HttpSession session) {
		//int Id = Integer.parseInt(request.getParameter("id"));
		int xx = bookService.updateByPrimaryKeySelective(book);
		//System.out.println("xx:"+xx+"stock:"+ book.getStock()+"ID:"+book.getId());
		if (xx != 0) {
			session.setAttribute("bookUpdate", "success");
		}else{
			session.setAttribute("bookUpdate", "failed");
		}
		return "redirect:/book/getBookByPage";
	}


}