package com.poly.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.OrderDAO;
import com.poly.entity.OrderEntity;
import com.poly.model.AccountModel;
import com.poly.utils.SessionUtil;

@Controller
public class OrderAControllerDemo {
	@Autowired
	OrderDAO odao;
	@Autowired
	HttpServletRequest request;
	
	
	public void USER_LOGIN(Model model) {
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if (accountModel != null) {
			model.addAttribute("userLogin", accountModel.getUsername());
			model.addAttribute("role", accountModel.getRole());
		}
	}
	
	@RequestMapping("/admin/order/choxacnhan")
	public String Achoxacnhan(Model model) {
		USER_LOGIN(model);
		model.addAttribute("form", new OrderEntity());
		model.addAttribute("listchoxacnhan", odao.AchoXacNhan());
		return "admin/order/choxacnhan";
	}
	
	@RequestMapping("/admin/order/cholayhang")
	public String Acholayhang(Model model) {
		USER_LOGIN(model);
		model.addAttribute("form", new OrderEntity());
		model.addAttribute("listcholayhang", odao.AchoLayHang());
		return "admin/order/cholayhang";
	}
	
	@RequestMapping("/admin/order/danggiao")
	public String Adanggiao(Model model) {
		USER_LOGIN(model);
		model.addAttribute("form", new OrderEntity());
		model.addAttribute("listdanggiao", odao.AdangGiao());
		return "admin/order/danggiao";
	}
	
	@RequestMapping("/admin/order/dagiao")
	public String Adagiao(Model model) {
		USER_LOGIN(model);
		model.addAttribute("form", new OrderEntity());
		model.addAttribute("listdagiao", odao.AdaGiao());
		return "admin/order/dagiao";
	}
	
	@RequestMapping("/admin/order/dahuy")
	public String Adahuy(Model model) {
		USER_LOGIN(model);
		model.addAttribute("form", new OrderEntity());
		model.addAttribute("listdahuy", odao.Adahuy());
		return "admin/order/dahuy";
	}
	/*update/ delete*/
	

	@RequestMapping("edit/{id}")
	public String edit(Model model, @PathVariable("id") Long id) {
		model.addAttribute("form", odao.getOne(id));
		model.addAttribute("list", odao.findAll());
		return "admin/order/cholayhang";
	}
	
	
	
	/**/

	
	
	

	
}