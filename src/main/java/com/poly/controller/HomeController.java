package com.poly.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.Service.IAccountService;
import com.poly.Service.INewService;
import com.poly.Service.IProductService;
import com.poly.dao.CategoryDAO;
import com.poly.dao.NewDAO;
import com.poly.dao.ProductDAO;
import com.poly.entity.CategoryEntity;
import com.poly.entity.NewEntity;
import com.poly.entity.ProductEntity;
import com.poly.model.AccountModel;
import com.poly.model.NewModel;
import com.poly.model.ProductModel;
import com.poly.utils.CookieUtil;
import com.poly.utils.SessionUtil;

@Controller
public class HomeController {

	@Autowired
	INewService newService;

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

		// get danh sach dien thoai ra index.
		List<ProductModel> listIphone = productService.listProduct(1l);
		List<ProductModel> listSamsung = productService.listProduct(2l);
		List<ProductModel> listXiaomi = productService.listProduct(3l);
		List<ProductModel> listOppo = productService.listProduct(4l);
		List<ProductModel> listHuawei = productService.listProduct(5l);
		model.addAttribute("listIphone", listIphone);
		model.addAttribute("listSamsung", listSamsung);
		model.addAttribute("listXiaomi", listXiaomi);
		model.addAttribute("listOppo", listOppo);
		model.addAttribute("listHuawei", listHuawei);

		/////// list san pham moi
		List<ProductModel> listSPM = productService.listProductOderByCreateDate();
		model.addAttribute("listSPM", listSPM);

		// LIST SP co nhieu luot xem
		List<ProductModel> listProduct_View = productService.listProductOderByCount();
		model.addAttribute("listProduct_View", listProduct_View);

		// list sp giam gia
		List<ProductModel> listProduct_Discount = productService.listProductOderByDiscount();
		model.addAttribute("listProduct_Discount", listProduct_Discount);

		// list tin tuc
		List<NewModel> listNew = newService.findAll();
		model.addAttribute("listNew", listNew);
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

	// *******admin**********///

}