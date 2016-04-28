package com.cn.hnust.controller;

import java.io.File;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cn.hnust.pojo.Book;
import com.cn.hnust.pojo.Page;
import com.cn.hnust.pojo.ReadFree;
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
		int counts;// 分页记录总数
		String pageNow = request.getParameter("pageNow");
		String countString = request.getParameter("allcount");
		Page page = null;
		// 判断分页参数
		Book bookParams = (Book) session.getAttribute("bookParams");
		if (countString != null) {
			counts = Integer.parseInt(countString);
			book = bookParams;
		} else {
			counts = bookService.getCounts(book);

		}
		// 添加查询条件id name author publish type subtype
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
		//System.out.println("list.size():" + bookList.size());
		model.addAttribute("bookList", bookList);
		model.addAttribute("page", page);
		model.addAttribute("bookParams", book);
		session.setAttribute("bookParams", book);
		model.addAttribute("url", "/book/getBookByPage");
		// 下面判断是否从删除页面跳转过来
		String deleted = (String) session.getAttribute("bookDeleted");
		//System.out.println(deleted);
		if(deleted!=null){
			model.addAttribute("bookDeleted", deleted);
			session.removeAttribute("bookDeleted");
		}
		
		//下面判断是否成功修改
		String update = (String) session.getAttribute("bookUpdate");
		if (update != null) {
			if(update.equals("success")){
				model.addAttribute("bookUpdate", "修改成功");
			}else{
				model.addAttribute("bookUpdate", "修改失败，请重试！");
			}
			session.removeAttribute("bookUpdate");
		}
		//判断添加和修改状态
		String bookMessage=(String) session.getAttribute("bookMessage");
		if(bookMessage!=null){
			if(bookMessage.equals("saved")){
				model.addAttribute("bookMessage", "保存成功");
			}
			if(bookMessage.equals("updated")){
				model.addAttribute("bookMessage", "修改成功");
			}else{
				model.addAttribute("bookMessage", "失败，请重试！");
			}
		}
		// 获取图书类型信息
		Type type1 = new Type();
		Subtype sub1 = new Subtype();
		List<Type> typeList = typeService.getByParams(type1);
		model.addAttribute("typeList", typeList);
		List<Subtype> subList = subTypeService.getAllSelect(sub1);
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
		else{
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
		int xx = bookService.updateByPrimaryKeySelective(book);
		if (xx != 0) {
			session.setAttribute("bookUpdate", "success");
		}else{
			session.setAttribute("bookUpdate", "failed");
		}
		return "redirect:/book/getBookByPage";
	}
	/**
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/bookDetial")
	public String bookDetial(HttpServletRequest request, Model model) {
		int Id = Integer.parseInt(request.getParameter("id"));
		Book book=bookService.selectById(Id);
	    List<ReadFree> readFreeList=readFreeService.selectByBookId(Id);
	    model.addAttribute("readFreeList", readFreeList);
	   // System.out.println("readFreeList:"+readFreeList.size());
	 // 获取图书类型信息
	 		Type type1 = new Type();
	 		Subtype sub1 = new Subtype();
	 		List<Type> typeList = typeService.getByParams(type1);
	 		//System.out.println(typeList.size() + "type");
	 		model.addAttribute("typeList", typeList);
	 		List<Subtype> subList = subTypeService.getAllSelect(sub1);
	 		//System.out.println(subList.size() + "tsubListype");
	 		model.addAttribute("subList", subList);
	 		model.addAttribute("book", book);
		return "book/detial";
	}
	
	@RequestMapping("/bookAdd")
	public String bookAdd(HttpServletRequest request, Model model) {
	 // 获取图书类型信息
	 		Type type1 = new Type();
	 		Subtype sub1 = new Subtype();
	 		List<Type> typeList = typeService.getByParams(type1);
	 		//System.out.println(typeList.size() + "type");
	 		model.addAttribute("typeList", typeList);
	 		List<Subtype> subList = subTypeService.getAllSelect(sub1);
	 		model.addAttribute("subList", subList);
		return "/book/add";
	}
	/**
	 * 
	 * @param request
	 * @param model
	 * @param book
	 * @param readFreeName
	 * @param session
	 * @return
	 */
	@RequestMapping("/bookSave")
	public String bookSave(HttpServletRequest request, Model model,Book book,String[] readFreeName,HttpSession session) {
		//System.out.println("size()"+readFree.length);
		//System.out.println("ddddddd");
		//System.out.println("size()"+readFree[0]);
		System.out.println("img1:"+book.getImg1());
		System.out.println();
			int xxx=bookService.insert(book);
			System.out.println(xxx);
		ReadFree  readfree=new ReadFree();
		if(readFreeName.length>1&&xxx>0){
			int yema=1;
			for(int i=0;i<=readFreeName.length-2;i++){
				readfree.setBookId(book.getId());
				readfree.setNumber(yema);
				readfree.setSrc(readFreeName[i]);
				System.out.println("readfreeimgname:"+readFreeName[i]);
				readFreeService.saveOrUpdate(readfree);
				yema++;
			}
		}	
		session.setAttribute("bookMessage", "saved");
	//System.out.println(book.getName()+"|"+book.getIntroduce()+"|"+book.getMainimg()+"|"+book.getImg1()+"|"+book.getImg2()+"|"+"|");
	return "redirect:/book/getBookByPage";
	}
	
	@RequestMapping("/bookEdit")
	public String bookEdit(HttpServletRequest request, Model model) {
	 // 获取图书类型信息
	 		Type type1 = new Type();
	 		Subtype sub1 = new Subtype();
	 		int Id = Integer.parseInt(request.getParameter("id"));
	 		Book book=bookService.selectById(Id);
	 		model.addAttribute("book",book);
	 		List<Type> typeList = typeService.getByParams(type1);
	 		model.addAttribute("typeList", typeList);
	 		List<Subtype> subList = subTypeService.getAllSelect(sub1);
	 		model.addAttribute("subList", subList);
	 		List<ReadFree> readFreeList=readFreeService.selectByBookId(Id);
	 	for (ReadFree readFree : readFreeList) {
			System.out.println(readFree.getNumber());
		}
	 	    model.addAttribute("readFreeList", readFreeList);
		return "/book/edit";
	}
	@RequestMapping("/bookUpdate")
	public String bookUpdate(HttpServletRequest request, Model model,Book book,String[] readFreeName,String[] readFreeBookId,String[] readFreeId,String[] readFreeNumber, HttpSession session) {
		System.out.println("img1:"+book.getImg1());
		System.out.println();
			int xxx=bookService.updateByPrimaryKeySelective(book);
			System.out.println(xxx);
		//List<ReadFree> readFreeList=readFreeService.selectByBookId(book.getId());
		if(readFreeName.length>1&&xxx>0){
			System.out.println(readFreeId.length);
			for(int j=0;j<readFreeId.length;j++){
				ReadFree  readfree=new ReadFree();
				readfree.setBookId(book.getId());
				readfree.setId(Integer.parseInt(readFreeId[j]));
				readfree.setNumber((Integer.parseInt(readFreeNumber[j])));
				readfree.setSrc(readFreeName[j]);
				System.out.println(readfree.getId()+"|"+readfree.getBookId()+"|"+readfree.getNumber());
				readFreeService.saveOrUpdate(readfree);
			}
			System.out.println("readFreeIDlength:"+readFreeId.length);
			System.out.println("readFreeNamelength:"+readFreeName.length);
			if(readFreeName.length-readFreeId.length>=2){
				for(int i=readFreeId.length-1;i<=readFreeName.length-2;i++){
					ReadFree  readfree=new ReadFree();
					readfree.setBookId(book.getId());
					//readfree.setId(Integer.parseInt(readFreeId[i]));
					//readfree.setNumber((Integer.parseInt(readFreeNumber[i])));
					readfree.setSrc(readFreeName[i]);
					System.out.println(readfree.getId()+"|"+readfree.getBookId()+"|"+readfree.getNumber());
					readFreeService.saveOrUpdate(readfree);
				}
			}
		}	
		session.setAttribute("bookMessage", "updated");
	System.out.println(book.getName()+"|"+book.getIntroduce()+"|"+book.getMainimg()+"|"+book.getImg1()+"|"+book.getImg2()+"|"+"|");
		return "redirect:/book/getBookByPage";
	}

}
