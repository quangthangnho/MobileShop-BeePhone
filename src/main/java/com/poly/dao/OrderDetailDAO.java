package com.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entity.OrderDetailEntity;

public interface OrderDetailDAO extends JpaRepository<OrderDetailEntity, Long> {
//	@Query("SELECT new Report(o.product.name, sum(o.unitPrice * o.quantity),  sum(o.quantity), min(o.unitPrice), max(o.unitPrice), avg(o.unitPrice)) "
//			+ " FROM OrderDetailEntity o "
//			+ " WHERE o.order.customer=:user AND o.order.status=2"
//			+ " GROUP BY o.product.name")
//	List<Report> getPurchaseByUser(@Param("user") AccountEntity user);
}
