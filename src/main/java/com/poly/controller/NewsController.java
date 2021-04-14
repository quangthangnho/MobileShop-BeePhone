package com.poly.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.Service.INewService;
import com.poly.entity.NewEntity;
import com.poly.model.AccountModel;
import com.poly.model.NewModel;
import com.poly.utils.CookieUtil;
import com.poly.utils.SessionUtil;

@Controller
public class NewsController {

	@Autowired
	INewService newService;
	
	@RequestMapping("/home/news") // tintuc
	public String news(Model model, HttpServletRequest request, @RequestParam(value = "page", required = false) Integer pagee) {
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		String username = CookieUtil.checkCookie(request);
		if (accountModel != null) {
			model.addAttribute("userLogin", accountModel.getUsername());
			model.addAttribute("role", accountModel.getRole());
		}
		// list tin tuc
		List<NewModel> listNew = newService.findAll();
		model.addAttribute("listNew", listNew);
		
		if(pagee == null) {
			pagee = 1;
		}
		//pageable
		Page<NewEntity> pageNew = newService.findAllNew(PageRequest.of(pagee-1, 5));
         model.addAttribute("pageNew", pageNew);
		return "home/news";
	}

	@RequestMapping("/home/new-detail/{id}") // new sanpham
	public String newDetail(HttpServletRequest request, Model model, @PathVariable Long id) {
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		String username = CookieUtil.checkCookie(request);
		if (accountModel != null) {
			model.addAttribute("userLogin", accountModel.getUsername());
			model.addAttribute("role", accountModel.getRole());
		}
			// list tin tuc
			List<NewModel> listNew = newService.findAll();
			model.addAttribute("listNew", listNew);
			// news
			NewModel newModel = newService.findById(id);
			if(newModel != null) {
				model.addAttribute("newDetail", newModel);
			}else {
				
			}
			
		return "home/new-detail";
	}
}
