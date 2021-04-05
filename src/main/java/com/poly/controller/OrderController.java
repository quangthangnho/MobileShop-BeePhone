package com.poly.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.poly.convert.impl.AccountModelAndEntityConvert;
import com.poly.dao.OrderDAO;
import com.poly.dao.OrderDetailDAO;
import com.poly.dao.ProductDAO;

import com.poly.entity.OrderDetailEntity;
import com.poly.entity.OrderEntity;
import com.poly.entity.ProductEntity;
import com.poly.entity.Report;
import com.poly.model.AccountModel;
import com.poly.utils.SessionUtil;

@Controller
public class OrderController {
	@Autowired
	OrderDAO odao;
	@Autowired
	OrderDetailDAO ddao;
	@Autowired
	ProductDAO pdao;

	@Autowired
	com.poly.mailSender.MailerService mailer;
	@Autowired
	HttpServletRequest request;
	
	@GetMapping("/order/checkout")
	public String checkout(Model model) {	
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if (accountModel != null) {
			model.addAttribute("userLogin", accountModel.getUsername());
			model.addAttribute("role", accountModel.getRole());
		}
		OrderEntity order = new OrderEntity();// tạo ra order mới		
		order.setAccountOrder(new AccountModelAndEntityConvert().convertToEntity(accountModel));
		order.setOrderDate(new Date());// đưa ngày hiện tại vào order
		
		model.addAttribute("form", order);
		return "order/checkout";// chuyển về giao diện order/checkout
	}
	
	@PostMapping("/order/checkout")
	public String checkout(Model model, OrderEntity order, @RequestParam("details") String json) throws JsonMappingException, JsonProcessingException {
		/*
		 * Convert json to List<OrderDetail>
		 */
		List<OrderDetailEntity> details = new ArrayList<>();
		ObjectMapper mapper = new ObjectMapper();
		@SuppressWarnings("unchecked")
		Map<String, Integer> map = mapper.readValue(json, Map.class);
		map.forEach((id, qty) -> {
			ProductEntity item = pdao.getOne(Long.valueOf(id));
			OrderDetailEntity detail = new OrderDetailEntity();
			detail.setOrderEntity(order);
			detail.setProductOrderDetail(item);
			detail.setUnitPrice(item.getUnitPrice());
			detail.setQuatity(qty);
			details.add(detail); /*-- add to List<ObjectDetail> --*/
		});
//		
//		/*
//		 * Create Order (Insert to DB)
//		 */
		odao.save(order);
		ddao.saveAll(details);


		return "redirect:/order/detail/" + order.getId();
	}
	
	
	/**/
	
	/**/
	
	@RequestMapping("/order/detail/{id}")
	public String detail(@PathVariable("id") Long id, Model model) {
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if (accountModel != null) {
			model.addAttribute("userLogin", accountModel.getUsername());
			model.addAttribute("role", accountModel.getRole());
		}
		OrderEntity order = odao.getOne(id);
		model.addAttribute("order", order);
		return "order/detail";
	}
	
	
	@GetMapping("/order/list")
	public String list(Model model) {
		AccountModel user = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if (user != null) {
			model.addAttribute("userLogin", user.getUsername());
			model.addAttribute("role", user.getRole());
		}
		List<OrderEntity> orders = odao.findByUsername(user.getId());// tìm dơn hàng và tuyền id dô
		model.addAttribute("orders", orders);// chuyển order ra giao hiện hiển thị ra
		
//		List<Report> reports = ddao.getPurchaseByUser(user);
//		model.addAttribute("reports", reports);
		return "order/list";
	}
	
	@RequestMapping("/order/cancel/{id}")// nhận id đơn hàng 
	public String cancel(@PathVariable("id") Long id, Model model) {// lấy đơn hàng Integer id ra
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if (accountModel != null) {
			model.addAttribute("userLogin", accountModel.getUsername());
			model.addAttribute("role", accountModel.getRole());
		}
		odao.deleteById(id);// gọi hàng delete
		return "redirect:/order/list";// xóa xong chuyển về order/list
	}
}