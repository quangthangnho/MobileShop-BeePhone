package com.poly.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.Service.IAccountService;
import com.poly.Service.IProductService;
import com.poly.dao.CategoryDAO;
import com.poly.dao.ProductDAO;
import com.poly.entity.CategoryEntity;
import com.poly.entity.ProductEntity;
import com.poly.model.AccountModel;
import com.poly.model.ProductModel;
import com.poly.utils.CookieUtil;
import com.poly.utils.SessionUtil;

@Controller
public class HomeController {
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	IProductService productService;
private final IAccountService accountService;

	public HomeController(IAccountService accountService) {
		this.accountService = accountService;
	}

	// *******customer**********///
	@RequestMapping("/home/index")
	public String indexcustomer(Model model, HttpServletRequest request) {
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		String username = CookieUtil.checkCookie(request);
		if (accountModel != null) {
			model.addAttribute("userLogin", accountModel.getUsername());
			model.addAttribute("role", accountModel.getRole());
		}
		
		List<ProductModel> pr = productService.listProduct(1l);
		model.addAttribute("listIphone", pr);
		System.out.println(""+pr.get(0).getImage());
		return "home/index";
	}

	@RequestMapping("/home/about") // gioithieu
	public String about(HttpServletRequest request, Model model) {
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if (accountModel != null) {
			model.addAttribute("userLogin", accountModel.getUsername());
			model.addAttribute("role", accountModel.getRole());
		}
		
		return "home/about";
	}

//	@RequestMapping("/home/product")//sanpham
//	public String product() {
//		return "home/product";
//	}

//	@RequestMapping("/home/product-detail")//chi tiet sanpham
//	public String productDetail() {
//		return "home/product-detail";
//	}

	@RequestMapping("/home/news") // tintuc
	public String news(Model model, HttpServletRequest request) {
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		String username = CookieUtil.checkCookie(request);
		if (accountModel != null) {
			model.addAttribute("userLogin", accountModel.getUsername());
			model.addAttribute("role", accountModel.getRole());
		}

		return "home/news";
	}

	@RequestMapping("/home/new-detail") // new sanpham
	public String newDetail(HttpServletRequest request, Model model) {
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		String username = CookieUtil.checkCookie(request);
		if (accountModel != null) {
			model.addAttribute("userLogin", accountModel.getUsername());
			model.addAttribute("role", accountModel.getRole());
		}

		return "home/new-detail";
	}

	@RequestMapping("/home/policy") // chính sach
	public String policy(HttpServletRequest request, Model model) {
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		String username = CookieUtil.checkCookie(request);
		if (accountModel != null) {
			model.addAttribute("userLogin", accountModel.getUsername());
			model.addAttribute("role", accountModel.getRole());
		}

		return "home/policy";
	}

	@RequestMapping("/home/contact") // lienhe
	public String contact(Model model, HttpServletRequest request) {
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		String username = CookieUtil.checkCookie(request);
		if (accountModel != null) {
			model.addAttribute("userLogin", accountModel.getUsername());
			model.addAttribute("role", accountModel.getRole());
		}

		return "home/contact";
	}

	
//	@RequestMapping("/home/login")//dang nhap 
//	public String login() {
//		return "home/login";
//	}
//	
//	@RequestMapping("/home/registration")//dang ky 
//	public String registration() {
//		return "home/registration";
//	}
	
	
//	@RequestMapping("/order/checkout")//checkout thanh toán
//	public String checkout() {
//		return "order/checkout";
//	}



	@RequestMapping("/home/checkout") // checkout thanh toán
	public String checkout() {
		return "home/checkout";
	}

	@RequestMapping("/home/hdanDatHang") //
	public String hddathang() {
		return "home/hdanDatHang";
	}

	@RequestMapping("/home/cart") // cart chitietdathang
	public String cart() {
		return "home/cart";
	}


	

	// *******admin**********///
	@RequestMapping("/admin/layout")
	public String index() {
		return "admin/layout";
	}

	
//	//trang tổng quan
//	@RequestMapping("/admin/home/index-a")
//	public String index2() {
//		return "admin/home/index-a";
//	}
	
	//quản lý admin


	// trang tổng quan
	@RequestMapping("/admin/home/index-a")
	public String index2() {
		return "admin/home/index-a";
	}

	// quản lý admin

	@RequestMapping("/admin/master/index")
	public String admin() {
		return "admin/master/index";
	}

	// quản lý khách hàng
	@RequestMapping("/admin/customer/index")
	public String customer() {
		return "admin/customer/index";
	}

	// quản lý sản phẩm
//	@RequestMapping("/admin/product/index")
//	public String listProduct() {
//		return "admin/product/index";
//	}
//		
	// dơn hàng
//	@RequestMapping("/admin/order/index")
//	public String order() {
//		return "admin/order/index";
//	}

	// quản lý bản tin
	@RequestMapping("/admin/news/index")
	public String category() {
		return "admin/news/index";
	}

	// quản lý demo
	@RequestMapping("/admin/demo/index")
	public String demo() {
		return "admin/demo/index";
	}

}