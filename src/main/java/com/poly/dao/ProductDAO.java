package com.poly.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.entity.CategoryEntity;
import com.poly.entity.OrderEntity;
import com.poly.entity.ProductEntity;

public interface ProductDAO extends JpaRepository<ProductEntity, Long> {//JpaRepository<kiểu thực thể, kiểu dữ liệu khóa chính >

	@Query("SELECT p FROM ProductEntity p "+" WHERE p.name LIKE %:kw% OR p.categoryProduct.name LIKE %:kw%")
	List<ProductEntity> findByKeywords(@Param("kw") String keywords); 
	
	@Query("select c from ProductEntity c where c.categoryProduct.id = :categoryId order by c.discount desc")
	List<ProductEntity> listProduct(Long categoryId);
	
	@Query("SELECT p from ProductEntity p order by p.createDate desc")
	List<ProductEntity> listProductOrderByCreateDate();
	
	@Query("SELECT p from ProductEntity p order by p.count desc")
	List<ProductEntity> listProductOrderByCount();
	
	@Query("SELECT p from ProductEntity p order by p.discount desc")
	List<ProductEntity> listProductOrderByDiscount();

	
	/*status*/
	@Query("SELECT p FROM ProductEntity p WHERE p.status = 1 ")
	List<ProductEntity> fillAllProductStatus1();
	
	@Query("SELECT p FROM ProductEntity p WHERE p.status = 2 ")
	List<ProductEntity> fillAllProductStatus2();
	
	
	/*tìm id*/

	@Query("SELECT p FROM ProductEntity p WHERE p.id=:uid")
	ProductEntity findByIDpr(@Param("uid") Long id);
	

	

}
