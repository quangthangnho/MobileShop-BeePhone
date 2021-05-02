//package com.poly.controller;
//
//import javax.servlet.http.HttpServletRequest;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import com.poly.dao.OrderDAO;
//import com.poly.entity.OrderEntity;
//import com.poly.model.AccountModel;
//import com.poly.utils.SessionUtil;
//
//@Controller
//public class PaymentController {
//	@Autowired
//	OrderDAO odao;
//	
//	@Autowired
//	HttpServletRequest request;
//	
//	@GetMapping("/order/checkout")
//	public String indexOrderCheckout(){
//		return "order/checkout";
//	}
//	
//	@PostMapping("/order/checkout")
//	public String pay(OrderEntity orentity){
//		if(orentity.setPayment('2') == "") {
//			
//		}
//		
//		return "redirect:/";
//	}
//}
