package com.poly.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.cache.spi.support.AbstractReadWriteAccess.Item;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
import com.poly.entity.AccountEntity;
import com.poly.entity.CategoryEntity;
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
		OrderEntity order = new OrderEntity();
		order.setAccountOrder(new AccountModelAndEntityConvert().convertToEntity(accountModel));
		order.setOrderDate(new Date());
		
		model.addAttribute("form", order);
		return "order/checkout";// chuy???n v??? giao di???n order/checkout
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
			
			/**/
			String type = request.getParameter("_type");
			switch(type) {
				case "MINUS":
					item.setStock(item.getStock() - detail.getQuatity());
					pdao.save(item);
				break;
				
				case "PLUS":
					item.setStock(item.getStock() + detail.getQuatity());
					pdao.save(item);
				break;
			}

			/**/
			details.add(detail); /*-- add to List<ObjectDetail> --*/
		
		});
//		
//		/*
//		 * Create Order (Insert to DB)
//		 */
		
		/**/
		 /**/
		order.setThungrac(1);
		odao.save(order);
		ddao.saveAll(details);
		
		/*
		 * G???i ????n h??ng cho kh??ch h??ng
		 */ 
		/*--[http://.../order/checkout]--*/
		String orderUrl = request.getRequestURL().toString();
		/*--[http://.../order/detail/{id}]--*/
		String orderDetailUrl = orderUrl.replace("checkout", "detail/" + order.getId());
		
		/**/
		/**/
		
		AccountModel user = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		String to = user.getEmail();
		String subject = "Shop MobilePhone";
		String body = "Click <a href='" + orderDetailUrl + "'>t???i ????y</a> ????? xem ????n h??ng b???n ???? ?????t!";
		mailer.send(to, subject, body);


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
		List<OrderEntity> orders = odao.findByUsername(user.getId());// t??m d??n h??ng v?? tuy???n id d??
		model.addAttribute("orders", orders);// chuy???n order ra giao hi???n hi???n th??? ra
		return "order/list";
	}
	
	@RequestMapping("/order/cancel/{id}")// nh???n id ????n h??ng 
	public String cancel(Model model, @PathVariable("id") Long id) {// l???y ????n h??ng Integer id ra
		AccountModel accountModel = (AccountModel) SessionUtil.getInstance().getValue(request, "USER_LOGIN");
		if (accountModel != null) {
			model.addAttribute("userLogin", accountModel.getUsername());
			model.addAttribute("role", accountModel.getRole());
		}
		
		model.addAttribute("form", new OrderEntity());
		model.addAttribute("message", "X??a ????n h??ng th??nh c??ng!");
		odao.deleteById(id);// gs???i h??ng delete
		return "redirect:/order/list";// x??a xong chuy???n v??? order/list
	}
	
	
	


}