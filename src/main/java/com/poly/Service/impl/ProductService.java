package com.poly.Service.impl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.Service.IProductService;
import com.poly.convert.impl.ProductModelAndEntityConvert;
import com.poly.dao.ProductDAO;
import com.poly.entity.ProductEntity;
import com.poly.model.ProductModel;

@Service
public class ProductService implements IProductService{

	@Autowired
	ProductDAO productDAO;
	@Override
	public List<ProductModel> listProduct(Long category_id) {
		// TODO Auto-generated method stub
		List<ProductEntity> list = productDAO.listProduct(category_id);
		if(list != null) {
			return list.stream().map(element -> new ProductModelAndEntityConvert().convertToModel(element)).collect(Collectors.toList());
		}
		return null;
	}
	

}
