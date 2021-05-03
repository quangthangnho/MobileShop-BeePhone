package com.poly.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.Service.IProductService;
import com.poly.dao.CategoryDAO;
import com.poly.dao.ProductDAO;
import com.poly.entity.CategoryEntity;
import com.poly.entity.NewEntity;
import com.poly.entity.ProductEntity;
import com.poly.model.AccountModel;
import com.poly.utils.CookieUtil;
import com.poly.utils.SessionUtil;

@Controller
public class ProductController {
	
	@Autowired
	IProductService productService;
	
	@Autowired
	CategoryDAO cdao;
	@Autowired
	HttpServletRequest request;
//	@Autowired
//	httpService http;
	
	@RequestMapping("/product/list")
	public String product(Model model, @RequestParam(value = "page", required = false) Integer pagee) {//sanpham
	AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
	if (accountModel != null) {
		model.addAttribute("userLogin", accountModel.getUsername());
		model.addAttribute("role", accountModel.getRole());
	}
	if(pagee == null) {
		pagee = 1;
	}
	//pageable
	Page<ProductEntity> pageProduct =productService.findAllProduct(PageRequest.of(pagee-1, 6));
	model.addAttribute("pageProduct", pageProduct);
		return "product/list";
	}
	
	
	
	@RequestMapping("/layout/category")
	public String index(Model model) {// hiện danh mục trang sản phẩm 
		
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if (accountModel != null) {
			model.addAttribute("userLogin", accountModel.getUsername());
			model.addAttribute("role", accountModel.getRole());
		}
		model.addAttribute("cates", cdao.fillAllCategoryStatus1() );
		return "user/layout/category"; 
	}
	
	
	
	//lấy sản phẩm theo id
	@RequestMapping("/product/list-by-category/{id}")
	public String list(Model model, @PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer pagee) {
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if (accountModel != null) {
			model.addAttribute("userLogin", accountModel.getUsername());
			model.addAttribute("role", accountModel.getRole());
		}
		if(pagee == null) {
			pagee = 1;
		}
		CategoryEntity ct = cdao.findById(id).orElse(null);
		Page<ProductEntity> pageProduct = pdao.findBycategoryProduct(ct, PageRequest.of(pagee-1, 6));
		model.addAttribute("pageProduct", pageProduct);
		model.addAttribute("idp", id);
		return "product/listById";
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
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if (accountModel != null) {
			model.addAttribute("userLogin", accountModel.getUsername());
			model.addAttribute("role", accountModel.getRole());
		}
		ProductEntity product = pdao.getOne(id);
		
		product.setCount(product.getCount() + 1);	/*tăng số lương count*/
		pdao.save(product);
		
		model.addAttribute("prod", product);
		return "product/detail";
	}
	
	

}
