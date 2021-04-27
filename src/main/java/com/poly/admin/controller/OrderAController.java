package com.poly.admin.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.server.PathParam;

import org.apache.tiles.autotag.core.runtime.annotation.Parameter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.poly.dao.OrderDAO;
import com.poly.dao.OrderDetailDAO;
import com.poly.dao.ProductDAO;
import com.poly.entity.CategoryEntity;
import com.poly.entity.OrderDetailEntity;
import com.poly.entity.OrderEntity;
import com.poly.entity.ProductEntity;
import com.poly.model.AccountModel;
import com.poly.utils.SessionUtil;

@Controller
@RequestMapping("admin/order")
public class OrderAController {
	@Autowired
	OrderDAO odao;
	@Autowired
	ProductDAO pdao;
	@Autowired
	OrderDetailDAO ddao;
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
		model.addAttribute("list", odao.Athungrac1());
		return "admin/order/index";
	}
	/**/
	/**/
	
	@RequestMapping("edit/{id}")
	public String edit(Model model, @PathVariable("id") Long id) {
		model.addAttribute("form", odao.getOne(id));
		model.addAttribute("list", odao.Athungrac1());
		return "admin/order/index";
	}
	
	
	@RequestMapping("update")
	public String update(Model model, @ModelAttribute("form") OrderEntity entity)
	{
		if(!odao.existsById(entity.getId())) {
			model.addAttribute("message", "Đơn hàng không tồn tại!");
		}
		else {
			
			long id =2;
			ProductEntity item = pdao.getOne(id);
			long idd =26;
			OrderDetailEntity detail = ddao.getOne(idd);
			item.setStock(item.getStock() - detail.getQuatity());
			pdao.save(item);
			System.out.println(">>>>>>>>ProductEntity>>>>>>"+item);
			System.out.println(">>>>>>>>OrderDetailEntity>>>>>>"+detail);
			
			

			
			entity.getPayment();
			entity.getReceiver();
			entity.getPhone();
			entity.setThungrac(1);
			odao.save(entity);
			model.addAttribute("message", "Cập nhật đơn hàng thành công!");
		}
		model.addAttribute("list", odao.Athungrac1());
		return "admin/order/index";
	}
	
	/*tạo đơn hàng, trừ stock ở sản phẩm*/
	@RequestMapping("huydonhang/{id}")//lay dk id order, 
	public String huydonhang(Model model,@ModelAttribute("form") @PathVariable("id") Long id, ProductEntity item){
		
		item =  pdao.findByIDpr(id);
		OrderDetailEntity detail = ddao.getOne(id);
//		item.setStock(item.getStock() - detail.getQuatity());
		pdao.save(item);
//		model.addAttribute("form", new OrderDetailEntity());
		return "admin/order/index";
	}
	/*/tạo đơn hàng, trừ stock ở sản phẩm*/
	
	
	@RequestMapping("delete")
	public String delete(Model model, @ModelAttribute("form") OrderEntity entity) {
		Optional<OrderEntity> option = odao.findById(entity.getId());
		if(!option.isPresent()) {
			model.addAttribute("message", "Đơn hàng không tồn tại!");
		}
		else {
			entity.setThungrac(2);
			odao.save(entity);
			model.addAttribute("form", new OrderEntity());
			model.addAttribute("message", "Xóa đơn hàng thành công!");
		}
		model.addAttribute("list", odao.Athungrac1());
		return "admin/order/index";
	}
	
	
	/*thùng rac*/
	@RequestMapping("_thungrac")//@RequestMapping phần riêng
	public String index_thungrac(Model model) {
		USER_LOGIN(model);
		model.addAttribute("form", new ProductEntity());
		model.addAttribute("listAthungrac2", odao.Athungrac2());
		return "admin/order/_thungrac";
	}
	
	@RequestMapping("delete/{id}")// xóa bị lỗi
	public String deletethungrac(Model model, @ModelAttribute("form") OrderEntity entity) {
			Optional<OrderEntity> option = odao.findById(entity.getId());
			if(!option.isPresent()) {
				model.addAttribute("message", "Đơn hàng không tồn tại!");
			}
			else {
				odao.delete(option.get());
				model.addAttribute("form", new OrderEntity());
				model.addAttribute("message", "Xóa đơn hàng thành công!");
			}
			model.addAttribute("list", odao.Athungrac1());
			return "admin/order/_thungrac";
		
	}
	
	
}