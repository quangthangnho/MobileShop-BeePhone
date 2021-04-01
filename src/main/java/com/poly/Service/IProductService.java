package com.poly.Service;

import java.util.List;

import com.poly.model.ProductModel;

public interface IProductService {

	List<ProductModel> listProduct(Long category_id);
}
