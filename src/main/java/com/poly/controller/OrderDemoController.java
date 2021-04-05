package com.poly.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.OrderDAO;
import com.poly.entity.OrderEntity;
import com.poly.model.AccountModel;
import com.poly.utils.SessionUtil;

@Controller
public class OrderDemoController {
	@Autowired
	OrderDAO odao;
	@Autowired
	HttpServletRequest request;
	
	@GetMapping("/order/choxacnhan")
	public String listchuahoanthanh(Model model) {
		AccountModel user = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if (user != null) {
			model.addAttribute("userLogin", user.getUsername());
			model.addAttribute("role", user.getRole());
		}
		List<OrderEntity> order = odao.choXacnhanh(user.getId());// tìm dơn hàng chờ xác nhận
		model.addAttribute("orders", order);// chuyển order ra giao hiện hiển thị ra		
		return  "order/choxacnhan";
	}
	
	@GetMapping("/order/cholayhang")
	public String listcholayhang(Model model) {
		AccountModel user = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if (user != null) {
			model.addAttribute("userLogin", user.getUsername());
			model.addAttribute("role", user.getRole());
		}
		List<OrderEntity> order = odao.choLayHang(user.getId());// tìm dơn chờ lấy hàng
		model.addAttribute("orders", order);// chuyển order ra giao hiện hiển thị ra		
		return  "order/cholayhang";
	}
	
	@GetMapping("/order/danggiao")
	public String listdanggiao(Model model) {
		AccountModel user = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if (user != null) {
			model.addAttribute("userLogin", user.getUsername());
			model.addAttribute("role", user.getRole());
		}
		List<OrderEntity> order = odao.dangGiao(user.getId());// tìm dơn đang giao
		model.addAttribute("orders", order);// chuyển order ra giao hiện hiển thị ra
		
		return  "order/danggiao";
	}
	
	@GetMapping("/order/dagiao")
	public String listdagiao(Model model) {
		AccountModel user = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if (user != null) {
			model.addAttribute("userLogin", user.getUsername());
			model.addAttribute("role", user.getRole());
		}
		List<OrderEntity> order = odao.daGiao(user.getId());// tìm dơn đã giao
//		if(odao.daGiao(user.getId()) == null ) {
//			model.addAttribute("message", "Đơn hàng không tồn tại!");
//		}
		
		model.addAttribute("orders", order);// chuyển order ra giao hiện hiển thị ra
		
		return  "order/dagiao";
	}
	
	@GetMapping("/order/dahuy")
	public String listdahuy(Model model) {
		AccountModel user = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if (user != null) {
			model.addAttribute("userLogin", user.getUsername());
			model.addAttribute("role", user.getRole());
		}
		List<OrderEntity> order = odao.daHuy(user.getId());// tìm dơn đa huy
		model.addAttribute("orders", order);// chuyển order ra giao hiện hiển thị ra	
		return  "order/dahuy";
	}

}
