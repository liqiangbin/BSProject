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
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.hnust.pojo.Order;
import com.cn.hnust.pojo.OrderDetial;
import com.cn.hnust.pojo.Page;
import com.cn.hnust.service.OrderDetialService;
import com.cn.hnust.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Resource
	private OrderService orderService;
	@Resource
	private OrderDetialService orderDetialService;
	@RequestMapping("/getOrderByPage")
	public String getOrderByPage(HttpServletRequest request, Model model,
			Order order, HttpSession session) {
		List<Order> orderList = new ArrayList<Order>();
		List<Order> orderList1 = new ArrayList<Order>();
		int counts;// ��ҳ��¼����
		String pageNow = request.getParameter("pageNow");
		String countString=request.getParameter("allcount");
		Page page = null;
		// �жϷ�ҳ����
		Order orderParams = (Order) session.getAttribute("orderParams");
		if (countString != null) {
			counts = Integer.parseInt(countString);
			order=orderParams;
		} else {
			counts = orderService.getCounts(order);
			
		}
		 // ���Ӳ�ѯ����
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("id", order.getId());
		condition.put("customerid", order.getCustomerid());
		condition.put("orderid", order.getOrderid());
		condition.put("orderdate", order.getOrderdate());
		condition.put("phone", order.getPhone());
		condition.put("status", order.getStatus());
		if (pageNow != null && pageNow != "") {
			page = new Page(counts, Integer.parseInt(pageNow));
		} else {
			page = new Page(counts, 1);
		}
		condition.put("startPos", page.getStartPos());
		condition.put("pageSize", page.getPageSize());
		orderList = this.orderService.getOrderByPage(condition);
		orderList1=this.orderService.getOrderNoPage(condition);
		model.addAttribute("orderList", orderList);
		model.addAttribute("page", page);
		model.addAttribute("orderParams", order);
		session.setAttribute("orderParams", order);
		model.addAttribute("url", "/order/getOrderByPage");
		//��ѯ��ʾ�������
		int orderTotal=0;
		int ordersuccess=0;
		double ordermoney=0;
		
		for (Order order2 : orderList1) {
			if(order2.getStatus()==0){
				ordersuccess++;
				ordermoney+=order2.getTotalmoney();
			}
			orderTotal++;
		}
		model.addAttribute("orderTotal", orderTotal);
		model.addAttribute("ordersuccess", ordersuccess);
		model.addAttribute("ordermoney", ordermoney);
		return "order/orderList";
	}
	@RequestMapping("/orderDetial")
	public String orderDetial(HttpServletRequest request, Model model,
			HttpSession session) {
		String  orderid = request.getParameter("orderid");
		List<Order> orderList=new ArrayList<Order>();
		List<OrderDetial> orderDetialList=new ArrayList<OrderDetial>();
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("orderid", orderid);
		orderList=orderService.getOrderNoPage(condition);
		//detial ��ѯ����
		Map<String, Object> detialCondition = new HashMap<String, Object>();
		detialCondition.put("orderid", orderid);
		orderDetialList=orderDetialService.getOrderDetialNoPage(condition);
        //��ֵ��ҳ��
		Order order=orderList.get(0);
		model.addAttribute("order", order);
		model.addAttribute("orderDetialList", orderDetialList);
		return "order/orderDetial";
	}
	@RequestMapping("/orderUpdate")
	public String orderUpdate(HttpServletRequest request, Model model,
			Order order) {
		int  id = Integer.parseInt(request.getParameter("id"));
		int   status =Integer.parseInt(request.getParameter("status"));
		order.setId(id);
		order.setStatus(status);
		int xx=orderService.updateByPrimaryKeySelective(order);
		System.out.println(xx);
		return "redirect:/order/getOrderByPage";
	}
	

}