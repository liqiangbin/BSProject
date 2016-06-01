package com.cn.hnust.controller;  
  
import java.math.BigDecimal;
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

import com.cn.hnust.pojo.Assess;
import com.cn.hnust.pojo.Book;
import com.cn.hnust.pojo.Customer;
import com.cn.hnust.pojo.Interest;
import com.cn.hnust.pojo.Notice;
import com.cn.hnust.pojo.Order;
import com.cn.hnust.pojo.OrderDetial;
import com.cn.hnust.pojo.Searchinfo;
import com.cn.hnust.pojo.ShopCar;
import com.cn.hnust.pojo.Subtype;
import com.cn.hnust.pojo.Suggest;
import com.cn.hnust.pojo.Type;
import com.cn.hnust.service.AssessService;
import com.cn.hnust.service.BookService;
import com.cn.hnust.service.CustomerService;
import com.cn.hnust.service.InterestService;
import com.cn.hnust.service.NoticeService;
import com.cn.hnust.service.OrderDetialService;
import com.cn.hnust.service.OrderService;
import com.cn.hnust.service.SearchInfoService;
import com.cn.hnust.service.ShopCarService;
import com.cn.hnust.service.SubTypeService;
import com.cn.hnust.service.SuggestService;
import com.cn.hnust.service.TypeService;
  
@Controller  

@RequestMapping("/customer")  
public class CustomerController { 
	
	private static String zhuzuo="50";
	private static String keji="10";
	private static String jiaoyu="20";
	private static String shenghuo="30";
	private static String zhengzhi="40";
	//推荐常量赋值
	private static final int INTEREST_WAY=3;
	private static final int SALED_WAY=1;
	private static final int SEARCH_WAY=2;
	private static final int ASSESS_WAY=4;
	
	//老用户根据检索关键字推荐数量常量
	private static final int bookNUmber=4;
	//数据库中用户id
	private static String oldCus="1";
	private static String newCus="2";
	private static String visitor="3";
    @Resource  
    private CustomerService customerService;  
    @Resource  
    private TypeService typeService;  
    @Resource  
    private SubTypeService subTypeService; 
    @Resource 
    private NoticeService noticeService; 
    @Resource 
    private BookService bookService; 
    @Resource 
    private SearchInfoService searchInfoService;
    @Resource 
    private SuggestService suggestService;
    @Resource 
    private InterestService interestService;
    @Resource 
    private AssessService assessService;
    @Resource
	private ShopCarService shopCarService;
    @Resource
   	private OrderService orderService;
    @Resource
   	private OrderDetialService orderDetialService;
  
    @RequestMapping("/toRegeist")  
    public String toRegeist(HttpServletRequest request,Model model,HttpSession session){ 
    	List<Subtype> list=subTypeService.selectAll();
    	model.addAttribute("list", list);
    	String s=(String) session.getAttribute("regeistMessage");
    	if(s!=null){
    		session.removeAttribute("regeistMessage");
        	model.addAttribute("regeistMessage", s);	
    	}
    	
    	return "customer/regeist";  
    }  
    @RequestMapping("/regeist")  
    public String toIndex(HttpServletRequest request,Customer customer,Model model,String[] checkbox,HttpSession session){ 
    	
    	List<Customer> cusList=customerService.sellectAllCus();
    	int status=0;
    	for (Customer cus : cusList) {
		if(cus.getLoginname().equals(customer.getLoginname())){
			status=1;
			break;
		}
		}
    	int s=0;
    	if(status==0){
    		s=customerService.insert(customer);
    	}
    	model.addAttribute("cusList", cusList);
    	int size=0;
    	try {
    		size=checkbox.length;
		} catch (Exception e) {
			session.setAttribute("regeistMessage", "注册失败！没有选取兴趣项，请核对！");
    		return "redirect:/customer/toRegeist"; 
		}
    	
    		if(s==1&&size!=0){
    		model.addAttribute("regeistMessage", "注册成功！请登录");
    		String interest="";
        	size=checkbox.length;
        	if(size>3){
        		size=3;
        	}
        	for (int i = 0; i < size; i++) {
        		if(i<size-1){
        			interest+=checkbox[i]+"&";
        		}else{
        			interest+=checkbox[i];
        		}
    		}
        	List<Customer> cusList1=customerService.sellectAllCus();
        	Interest interest2=new Interest();
        	interest2.setCustomerid(cusList1.get(0).getId());
        	interest2.setInterestedsubtypeid(interest);
        	interestService.insert(interest2);
        	
    	}else{
    		session.setAttribute("regeistMessage", "注册失败！用户名已存在，请核对！");
    		return "redirect:/customer/toRegeist"; 
    	}
    	return "customer/login";  
    }  
    @RequestMapping("/update")  
    public String update(HttpServletRequest request,Customer customer,Model model){  
       
    	int s=customerService.updateById(customer);
    	if(s==1){
    		model.addAttribute("updateMessage", "修改成功");
    	}else{  
    		model.addAttribute("updateMessage", "修改失败");
    	}
    	return "update";  
    }  
    @RequestMapping("/index")  
    public String index(HttpServletRequest request,Customer customer,Model model,Type type,Subtype sub1,HttpSession session){  
    	//查询图书分类信息
    	List<Type> workList=new ArrayList();
    	List<Type> lifeList=new ArrayList();
    	List<Type> scienceList=new ArrayList();
    	List<Type> educateList=new ArrayList();
    	List<Type> otherList=new ArrayList();
    	List<Type> politicList=new ArrayList();
    	List<Type> typeList = typeService.getByParams(type);
 		List<Subtype> subList = subTypeService.getAllSelect(sub1);
 		for (Type type1 : typeList) {
 			String s=type1.getTypenumber().toString().substring(0, 2);
 			if(s.equals(CustomerController.zhuzuo)){
 				workList.add(type1);
 			}
 			else if(s.equals(CustomerController.keji)){
 				scienceList.add(type1);
 			}
 			else if(s.equals(CustomerController.jiaoyu)){
 				educateList.add(type1);
 			}
 			else if(s.equals(CustomerController.shenghuo)){
 				lifeList.add(type1);
 			}else if(s.equals(CustomerController.zhengzhi)){
 				politicList.add(type1);
 			}else{
 				otherList.add(type1);
 			}
		}
 		session.setAttribute("workList", workList);
 		session.setAttribute("scienceList", scienceList);
 		session.setAttribute("educateList", educateList);
 		session.setAttribute("lifeList", lifeList);
 		session.setAttribute("politicList", politicList);
 		session.setAttribute("otherList", otherList);
 		session.setAttribute("subList", subList);
       //查询最新优惠信息
    	List<Notice> AllList=noticeService.SellectAll();
    	List<Notice> allActivityList=new ArrayList();
    	List<Notice> top3ActivityList=new ArrayList();
    	int top=0;
    	for (Notice notice : AllList) {
			if(notice.getType()==1){
				allActivityList.add(notice);
				if(top<3){
				top3ActivityList.add(notice);
				top++;
				}
			}
			
		}
    	model.addAttribute("top3ActivityList",top3ActivityList);
       //查询图书销量排行
    	List<Book> bookList=bookService.getBySaled();
    	List<Book> top3BbookList=new ArrayList();
    	int top1=0;
    	for (Book book : bookList) {
			if(top1<4){
				top3BbookList.add(book);
				top1++;
				}else{
					break;
				}
		}
    	model.addAttribute("top3BbookList",top3BbookList);
      //查询新书上架
    	List<Book> newbookList=bookService.getBookByIdDesc();
    	List<Book> newBookTop3=new ArrayList<Book>();
    	int topNumber=4;
    	if(newbookList.size()<topNumber){
    		topNumber=newbookList.size();
    	}
    	//System.out.println("top4list。size()"+newBookTop3.size());
    	for(int i=0;i<topNumber;i++){
    		newBookTop3.add(newbookList.get(i));
    	}
    	model.addAttribute("newBookTop3",newBookTop3);
    	
      //查询智能推荐
    List<Book> suggestTop5=new ArrayList<Book>();
    List<Suggest> allSuggest=suggestService.sellectAll();
//    System.out.println("suggest.size()"+allSuggest.size());
    Suggest oldCusWay=new Suggest();
    Suggest newCusWay=new Suggest();
    Suggest otherCusWay=new Suggest();
    for (Suggest suggest : allSuggest) {
		if(suggest.getId()==1){
			oldCusWay=suggest;
//			System.out.println("Id:"+suggest.getId());
		}
		if(suggest.getId()==2){
			newCusWay=suggest;
		}
		if(suggest.getId()==3){
			otherCusWay=suggest;
		}
	}
    //获取评分最高的图书列表
    List<Assess> assessList=new ArrayList<Assess>();
    List<Book> assessBookList=new ArrayList<Book>();
    assessList=assessService.getByRankDesc();
     int top4Rank=4;
     if(assessList.size()<4){
    	 top4Rank=assessList.size();
     }
     for(int i=0;i<top4Rank;i++){
    	Book book=bookService.selectById(assessList.get(i).getBookid());
    	assessBookList.add(book);
    	//System.out.println("评分排行："+book.getName());
     }
    //获取登录session
    Customer cus=(Customer) session.getAttribute("loginCustomer");
    //判断用户是否登录
    if(null!=cus){
    	//获取注册提交的兴趣项并且查询图书列表
    	Interest CusInterest=interestService.selectByCusId(cus.getId());
    	Map<String, Object> condition = new HashMap<String, Object>();
		int intere1=0,intere2=0,intere3=0;
		String[] s;
		s=CusInterest.getInterestedsubtypeid().split("&");
		for (int i = 0; i < s.length; i++) {
//			System.out.println(s);
			if(i==0)
				intere1=Integer.parseInt(s[i]);
			if(i==1){
				intere2=Integer.parseInt(s[i]);
			}
			if(i==2){
				intere3=Integer.parseInt(s[i]);
			}
		}
		condition.put("typeparam1", intere1);
		condition.put("typeparam2", intere2);
		condition.put("typeparam3", intere3);
		List<Book> allIntereList=bookService.getBookBySubSql(condition);
		List<Book> jspIntereList=new ArrayList<Book>();
		if(allIntereList.size()<=CustomerController.bookNUmber){
			jspIntereList=allIntereList;
		}else{
			int[] m=CustomerController.randomCommon(0, allIntereList.size(), 4);
			for (int i : m) {
				jspIntereList.add(allIntereList.get(i));
			}
		}
		
    	//判断用户为新用户还是老用户
    	List<Searchinfo> searchList=searchInfoService.selectByCusId(cus.getId());
    	System.out.println("搜索记录为几条，4条以上就是老用户:"+searchList.size());
    	if(searchList.size()<4){
    		//新用户推荐方式  
    		int way=newCusWay.getChoosenumber();
    		System.out.println("way:"+way);
    	switch (way) {
		case CustomerController.INTEREST_WAY:
			suggestTop5=jspIntereList;
			if(suggestTop5.size()>0)
			break;
        case CustomerController.SALED_WAY:
        	suggestTop5=top3BbookList;
        	if(suggestTop5.size()>0)
			break;
        case CustomerController.ASSESS_WAY:
        	suggestTop5=assessBookList;
        	if(suggestTop5.size()>0)
			break;

		}
    		
    		
    	}else{
    		//老用户推荐方式
    		
    		//根据关键字查询结果并随机取值
    		List<Searchinfo> infoList=searchInfoService.selectByCusId(cus.getId());
    		//查询结果图书列表
    		List<Book> searchBookList=new ArrayList<Book>();
    		//筛选结果图书列表
    		List<Book> searchChooseList=new ArrayList<Book>();
    		String param1 = null,param2=null,param3=null,param4=null;
    		for(int i=0;i<infoList.size();i++){
    			switch (i) {
				case 0:
					param1=infoList.get(i).getSearchwords();
					System.out.println(param1);
					break;
                case 1:
                	param2=infoList.get(i).getSearchwords();
                	System.out.println(param2);
					break;
				case 2:
					param3=infoList.get(i).getSearchwords();	
					break;
                case 3:
                	param4=infoList.get(i).getSearchwords();
					break;
				}
    			
    		}
    		Map<String, Object> condition1 = new HashMap<String, Object>();
    		condition1.put("param1", param1);
    		condition1.put("param2",param2 );
    		condition1.put("param3",param3);
    		condition1.put("param4",param4 );
    		searchBookList=bookService.getBookBySql(condition1);
    		if(searchBookList.size()<=CustomerController.bookNUmber){
    			searchChooseList=searchBookList;
    		}else{
    			int[] m=CustomerController.randomCommon(0, searchBookList.size(), 4);
    			for (int i : m) {
					searchChooseList.add(searchBookList.get(i));
				}
    		}
    		
    		int way=oldCusWay.getChoosenumber();
    		switch (way) {
    		case CustomerController.INTEREST_WAY:
    			System.out.println("老用户 兴趣推荐");
    			suggestTop5=jspIntereList;
    			break;
            case CustomerController.SALED_WAY:
            	System.out.println("老用户 销量推荐");
            	suggestTop5=top3BbookList;
    			break;
            case CustomerController.SEARCH_WAY:
            	System.out.println("老搜索搜索推荐");
            	suggestTop5=searchChooseList;
    			break;
            case CustomerController.ASSESS_WAY:
            	System.out.println("老用户 评价推荐");
            	suggestTop5=assessBookList;
    			break;

    		}
    	}
    }else{
    	//根据普通游客推荐方式为游客推荐  只有销量排行推荐
    	int way=otherCusWay.getChoosenumber();
    	switch (way) {
        case CustomerController.SALED_WAY:
        	suggestTop5=top3BbookList;
			break;
        case CustomerController.ASSESS_WAY:
        	suggestTop5=assessBookList;
			break;

		}
    	
    }
    model.addAttribute("suggestTop5",suggestTop5);
    	return "/customer/index";  
    }
    @RequestMapping("/myShopCar")
	public String myShopCar(HttpServletRequest request, Model model, HttpSession session) {
		Customer cus=(Customer) session.getAttribute("loginCustomer");
		List<ShopCar> myShopCar=shopCarService.selectByCusId(cus.getId());
		int size=0;
		int shopCarSize=myShopCar.size();
		double totalMoney=0;
	for (ShopCar shopCar2 : myShopCar) {
		BigDecimal   xx   =   new   BigDecimal(shopCar2.getPrice()*shopCar2.getDiscount()/10);  
		double   discountMoney   =   xx.setScale(2,   BigDecimal.ROUND_HALF_UP).doubleValue();  
		size+=shopCar2.getQuantity();
		shopCar2.setDiscountedPrice(discountMoney);
		Book book=bookService.selectById(shopCar2.getBookid());
		shopCar2.setImgSrc(book.getMainimg());
		totalMoney+=shopCar2.getQuantity()*shopCar2.getDiscountedPrice();
	}
	//保留两位小数
	BigDecimal   b   =   new   BigDecimal(totalMoney);  
	double   totalMoney1   =   b.setScale(2,   BigDecimal.ROUND_HALF_UP).doubleValue();  
	model.addAttribute("size",size);
	model.addAttribute("shopCarSize",shopCarSize);
	model.addAttribute("totalMoney",totalMoney1);
	model.addAttribute("myShopCar",myShopCar);
		return "/customer/shopCar";
	}
    /**
     *  根据id 删除购物车中一项
     * @param request
     * @param model
     * @param shopCar
     * @param session
     * @return
     */
    @RequestMapping("/deleteShopCar")
	public String deleteShopCar(HttpServletRequest request, Model model,ShopCar shopCar, HttpSession session) {
			shopCarService.deleteById(shopCar.getId());
			Customer cus=(Customer) session.getAttribute("loginCustomer");
			List<ShopCar> shopCarList=shopCarService.selectByCusId(cus.getId());
			session.setAttribute("shopCarCount", shopCarList.size());
	return "redirect:/customer/myShopCar";
	}
	@RequestMapping("/myOrder")
	public String myOrder(HttpServletRequest request, Model model,ShopCar shopCar, HttpSession session) {
		Customer cus=(Customer) session.getAttribute("loginCustomer");
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("customerid",cus.getId());
		List<Order> myOrderList=orderService.getOrderNoPage(condition);
		List<OrderDetial> orderDetial=new ArrayList();
		for (Order order : myOrderList) {
			Map<String, Object> condition1 = new HashMap<String, Object>();
			condition1.put("orderid",order.getOrderid());
			List<OrderDetial> detial=orderDetialService.getOrderDetialNoPage(condition1);
			order.setDetialNumber(detial.size()+1);
			for (OrderDetial ord : detial) {
				Book book=bookService.selectById(ord.getBookid());
				ord.setImgSrc(book.getMainimg());
				orderDetial.add(ord);
			}
		}	
		model.addAttribute("size", myOrderList.size());
		model.addAttribute("myOrderList",myOrderList);
		model.addAttribute("orderDetial",orderDetial);
	return "/customer/myOrder";
	}
    /** 
     * 随机指定范围内N个不重复的数 
     * 最简单最基本的方法 
     * @param min 指定范围最小值 
     * @param max 指定范围最大值 
     * @param n 随机数个数 
     */  
    public static int[] randomCommon(int min, int max, int n){  
        if (n > (max - min + 1) || max < min) {  
               return null;  
           }  
        int[] result = new int[n];  
        int count = 0;  
        while(count < n) {  
            int num = (int) (Math.random() * (max - min)) + min;  
            boolean flag = true;  
            for (int j = 0; j < n; j++) {  
                if(num == result[j]){  
                    flag = false;  
                    break;  
                }  
            }  
            if(flag){  
                result[count] = num;  
                count++;  
            }  
        }  
        return result;  
    }  
}  