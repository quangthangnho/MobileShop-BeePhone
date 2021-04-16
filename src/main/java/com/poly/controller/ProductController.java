package com.poly.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.dao.CategoryDAO;
import com.poly.dao.ProductDAO;
import com.poly.entity.ProductEntity;
import com.poly.model.AccountModel;
import com.poly.utils.CookieUtil;
import com.poly.utils.SessionUtil;

@Controller
public class ProductController {
	
	@Autowired
	CategoryDAO cdao;
	@Autowired
	HttpServletRequest request;
//	@Autowired
//	httpService http;
	
	@RequestMapping("/product/list")
	public String product(Model model) {//sanpham
	AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
	if (accountModel != null) {
		model.addAttribute("userLogin", accountModel.getUsername());
		model.addAttribute("role", accountModel.getRole());
	}
	model.addAttribute("list", pdao.findAll());
		return "product/list";
	}
	
	
	
	@RequestMapping("/layout/category")
	public String index(Model model) {// hiện danh mục trang sản phẩm 
		
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if (accountModel != null) {
			model.addAttribute("userLogin", accountModel.getUsername());
			model.addAttribute("role", accountModel.getRole());
		}
		model.addAttribute("cates", cdao.findAll());
		return "user/layout/category"; 
	}
	
	
	
	//lấy sản phẩm theo id
	@RequestMapping("/product/list-by-category/{id}")
	public String list(Model model, @PathVariable("id") Long id) {
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if (accountModel != null) {
			model.addAttribute("userLogin", accountModel.getUsername());
			model.addAttribute("role", accountModel.getRole());
		}
		List<ProductEntity> list = cdao.getOne(id).getProducts();
		model.addAttribute("list", list);
		return "product/list";
	}
	
	
//	 thanh tìm kiếm
	@Autowired
	ProductDAO pdao;
	
	@RequestMapping("/product/list-by-keywords")
	public String list(Model model,
			@RequestParam("keywords") String keywords) {
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if (accountModel != null) {
			model.addAttribute("userLogin", accountModel.getUsername());
			model.addAttribute("role", accountModel.getRole());
		}
		List<ProductEntity> list = pdao.findByKeywords(keywords);
		model.addAttribute("list", list);
		return "product/list";
		
	}

	// chuyển sang trang product detail
	@RequestMapping("/product/detail/{id}")
	public String detail(Model model, @PathVariable("id") Long id) {
		/**/
//		String ids = http.getCookieValue("clicks", id.toString());
//		if(!ids.contains(id.toString())) {
//			ids = ids + "," +id;
//		}
//		http.creatCookie("clicks", ids, 30);
//		List<ProductEntity> list = pdao.findById(ids);
		
		/**/
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if (accountModel != null) {
			model.addAttribute("userLogin", accountModel.getUsername());
			model.addAttribute("role", accountModel.getRole());
		}
		ProductEntity product = pdao.getOne(id);
		model.addAttribute("prod", product);
		return "product/detail";
	}
	
	

}
