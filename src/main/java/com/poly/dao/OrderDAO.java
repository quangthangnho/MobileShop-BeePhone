package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.entity.OrderEntity;

public interface OrderDAO extends JpaRepository<OrderEntity, Long> {
	@Query("SELECT o FROM OrderEntity o WHERE o.accountOrder.id=:uid")

	List<OrderEntity> findByUsername(@Param("uid") Long id);

	List<OrderEntity> findByUsername(@Param("uid") String username);
	
	
	  
}