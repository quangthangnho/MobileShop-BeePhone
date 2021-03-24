package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.entity.ProductEntity;

public interface ProductDAO extends JpaRepository<ProductEntity, Long> {//JpaRepository<kiểu thực thể, kiểu dữ liệu khóa chính >

//	@Query("SELECT p FROM Product p "+" WHERE p.name LIKE %:kw% OR p.category.name LIKE %:kw%")
//	List<ProductEntity> findByKeywords(@Param("kw") String keywords); 

}
