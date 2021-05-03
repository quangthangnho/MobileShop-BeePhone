package com.poly.Service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.poly.entity.NewEntity;
import com.poly.entity.ProductEntity;
import com.poly.model.ProductModel;

public interface IProductService {

	List<ProductModel> listProduct(Long category_id);
	
	List<ProductModel> listProductOderByCreateDate();
	
	List<ProductModel> listProductOderByCount();
	
	List<ProductModel> listProductOderByDiscount();
	
	Page<ProductEntity> findAllProduct(Pageable pageable);
}
