package com.poly.convert.impl;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;

import com.poly.convert.ModelAndEntityConvert;
import com.poly.entity.ProductEntity;
import com.poly.model.ProductModel;

public class ProductModelAndEntityConvert implements ModelAndEntityConvert<ProductEntity, ProductModel>{

private final ModelMapper modelMapper;
	
	@Autowired
	public ProductModelAndEntityConvert() {
		this.modelMapper = new ModelMapper();
	}
	
	@Override
	public ProductModel apply(ProductEntity t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ProductModel convertToModel(ProductEntity tObject) {
		// TODO Auto-generated method stub
		ProductModel productModel = modelMapper.map(tObject, ProductModel.class);
		return productModel;
	}

	@Override
	public ProductEntity convertToEntity(ProductModel tObject) {
		// TODO Auto-generated method stub
		ProductEntity productEntity = modelMapper.map(tObject, ProductEntity.class);
		return productEntity;
	}

}
