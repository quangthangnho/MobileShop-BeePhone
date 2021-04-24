package com.poly.dao;

import java.util.Collection;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.entity.AccountEntity;
import com.poly.entity.CategoryEntity;
import com.poly.entity.OrderEntity;
import com.poly.entity.ProductEntity;



public interface CategoryDAO extends JpaRepository<CategoryEntity, Long> { //JpaRepository<kiểu thực thể, kiểu dữ liệu khóa chính >existsById
	@Query("SELECT c FROM CategoryEntity c WHERE c.status = 1 ")
	List<CategoryEntity> fillAllCategoryStatus1();
	
	@Query("SELECT c FROM CategoryEntity c WHERE c.status = 2 ")
	List<CategoryEntity> fillAllCategoryStatus2();
	
	
//	@Query("SELECT c FROM CategoryEntity c WHERE c.name = 'aa' ")
//	Boolean existsByName(String name);
	
	

}
