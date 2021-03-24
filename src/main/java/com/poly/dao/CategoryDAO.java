package com.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entity.CategoryEntity;



public interface CategoryDAO extends JpaRepository<CategoryEntity, Long> { //JpaRepository<kiểu thực thể, kiểu dữ liệu khóa chính >

}
