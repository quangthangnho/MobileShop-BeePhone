package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entity.CategoryEntity;
import com.poly.entity.ProductEntity;



public interface CategoryDAO extends JpaRepository<CategoryEntity, Long> { //JpaRepository<kiểu thực thể, kiểu dữ liệu khóa chính >
		
}
