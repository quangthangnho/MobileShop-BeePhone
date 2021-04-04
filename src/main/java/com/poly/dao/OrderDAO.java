package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.entity.OrderEntity;

public interface OrderDAO extends JpaRepository<OrderEntity, Long> {
	@Query("SELECT o FROM OrderEntity o WHERE o.accountOrder.id=:uid")
	List<OrderEntity> findByUsername(@Param("uid") Long id);

	@Query("SELECT o FROM OrderEntity o WHERE  o.status=0 and o.accountOrder.id=:uid ")
	List<OrderEntity> choXacnhanh(@Param("uid") Long id);
	
	@Query("SELECT o FROM OrderEntity o WHERE  o.status=1 and o.accountOrder.id=:uid ")
	List<OrderEntity> choLayHang(@Param("uid") Long id);
	
	@Query("SELECT o FROM OrderEntity o WHERE  o.status=2 and o.accountOrder.id=:uid ")
	List<OrderEntity> dangGiao(@Param("uid") Long id);
	
	@Query("SELECT o FROM OrderEntity o WHERE  o.status=3 and o.accountOrder.id=:uid ")
	List<OrderEntity> daGiao(@Param("uid") Long id);
	
	@Query("SELECT o FROM OrderEntity o WHERE  o.status=-1 and o.accountOrder.id=:uid ")
	List<OrderEntity> daHuy(@Param("uid") Long id);

}