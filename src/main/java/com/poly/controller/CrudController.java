package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.poly.dao.CategoryDAO;
import com.poly.dao.OrderDAO;
import com.poly.dao.ProductDAO;
import com.poly.entity.OrderEntity;
import com.poly.entity.ProductEntity;

@Controller
public class CrudController {
	@Autowired
	ProductDAO dao;
	
	@Autowired
	OrderDAO odao;
	
	@ResponseBody
	@RequestMapping("/crud/find-all")
	public void findAll() {
		List<ProductEntity> list = dao.findAll();
		for(ProductEntity entity : list) {
			System.out.println(">>" + entity.getId() + "--1\n" +
					entity.getBoNhoTrong() + "--2\n" +
					entity.getCameraSau() + "--3\n" +
					entity.getCameraTruoc() + "--4\n" +
					entity.getCount() + "--5\n" +
					entity.getCpu() + "--6\n" +
					entity.getCreateBy() + "--7\n" +
					entity.getCreateDate() + "--8\n" +
					entity.getDescription() + "--9\n" +
					entity.getDungLuongPin() + "--10\n" +
					entity.getHeDieuHanh()+ "--11\n" +
					entity.getImage() + "--12\n" +
					entity.getName()+ "--13\n" +
					entity.getStatus() + "--14\n" +		
					entity.getStock() + "--15\n" +
					entity.getUnitPrice() + "--16\n" +
					entity.getCategoryProduct() + "--17\n" +
					entity.getNewEntity()+ "--18\n"
					
					
					
					);
		}
	}
	
//	@ResponseBody
//	@RequestMapping("/crud/find-one")
//	public void findOne() {
//		ProductEntity entity = dao.getOne(1003);
//		System.out.println(">>" + entity.getName());
//	}
	
//	@ResponseBody
//	@RequestMapping("/crud/create")
//	public void insert() {
//		ProductEntity entity = new ProductEntity();
//		entity.setName("Flowers");
//		dao.save(entity);
//	}
//	
	@ResponseBody
	@RequestMapping("/crud/update")
	public void update() {
		long a =1;
		OrderEntity entity = odao.getOne(a);
		entity.setAddress("139 Esch Junction 123");
		odao.save(entity);
	}
//	
	@ResponseBody
	@RequestMapping("/crud/delete")
	public void delete() {
		long id =15;
		odao.deleteById(id);
	}
}