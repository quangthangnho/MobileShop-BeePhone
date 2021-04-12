package com.poly.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.poly.dao.ReportDAO;
import com.poly.entity.Report;
import com.poly.model.AccountModel;
import com.poly.utils.SessionUtil;

@Controller
public class ReportAController {
	@Autowired
	ReportDAO rdao;
	@Autowired
	HttpServletRequest request;
	
	//quản lý admin
	@RequestMapping("/admin/report/index")
	public String index(Model model) {
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if (accountModel != null) {
			model.addAttribute("userLogin", accountModel.getUsername());
			model.addAttribute("role", accountModel.getRole());
		}
		return "admin/report/index";
	}
	
	@GetMapping("/admin/report/inventory-by-category")
	public String inventoryByCategory(Model model){
		model.addAttribute("items", rdao.inventoryByCategory());
		return "admin/report/inventory-by-category";
	}
	
	@GetMapping("/admin/report/revenue-by-category") // theo loại 
	public String revenueByCategory(Model model){
		model.addAttribute("items", rdao.revenueByCategory());
		return "admin/report/revenue-by-category";
	}
	
	@GetMapping("/admin/report/revenue-by-month") // theo tháng
	public String revenueByMonth(Model model){
		model.addAttribute("items", rdao.revenueByMonth());
		return "admin/report/revenue-by-month";
	}
	
	@ResponseBody
	@GetMapping("/admin/report/top10") // theo tháng
	public List<Report> top10(Model model){
		
//		model.addAttribute("items", rdao.revenueByMonth());
		return rdao.revenueTOP10Customer(PageRequest.of(0, 10));
	}
	
	@GetMapping("/admin/report/revenue-by-customer") // khách hàng thân thiết
	public String revenueByCustomer(Model model){
		Pageable first10 = PageRequest.of(0, 10);
		model.addAttribute("items", rdao.revenueTOP10Customer(first10));
		return "admin/report/revenue-by-customer";
	}
	

}
