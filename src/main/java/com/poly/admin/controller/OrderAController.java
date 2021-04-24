package com.poly.admin.controller;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.dao.OrderDAO;
import com.poly.entity.CategoryEntity;
import com.poly.entity.OrderEntity;
import com.poly.model.AccountModel;
import com.poly.utils.SessionUtil;

@Controller
@RequestMapping("admin/order")
public class OrderAController {
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
	
	@RequestMapping("index")
	public String index(Model model) {
		USER_LOGIN(model);
		model.addAttribute("form", new OrderEntity());
		model.addAttribute("list", odao.findAll());
		return "admin/order/index";
	}
	/**/
	/**/
	
	@RequestMapping("edit/{id}")
	public String edit(Model model, @PathVariable("id") Long id) {
		model.addAttribute("form", odao.getOne(id));
		model.addAttribute("list", odao.findAll());
		return "admin/order/index";
	}
	
	
	@RequestMapping("update")
	public String update(Model model, @ModelAttribute("form") OrderEntity entity) {
		if(!odao.existsById(entity.getId())) {
			model.addAttribute("message", "Đơn hàng không tồn tại!");
		}
		else {
			entity.getPayment();
			entity.getReceiver();
			entity.getPhone();
			odao.save(entity);
			model.addAttribute("message", "Cập nhật đơn hàng thành công!");
		}
		model.addAttribute("list", odao.findAll());
		return "admin/order/index";
	}
	
	
	@RequestMapping("delete")
	public String delete(Model model, @ModelAttribute("form") OrderEntity entity) {
		Optional<OrderEntity> option = odao.findById(entity.getId());
		if(!option.isPresent()) {
			model.addAttribute("message", "Đơn hàng không tồn tại!");
		}
		else {
			odao.delete(option.get());
			model.addAttribute("form", new OrderEntity());
			model.addAttribute("message", "Xóa đơn hàng thành công!");
		}
		model.addAttribute("list", odao.findAll());
		return "admin/order/index";
	}
	
	
}