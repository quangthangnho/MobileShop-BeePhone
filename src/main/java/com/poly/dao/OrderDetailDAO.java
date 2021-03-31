package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.entity.AccountEntity;

import com.poly.entity.OrderDetailEntity;
import com.poly.entity.Report;

public interface OrderDetailDAO extends JpaRepository<OrderDetailEntity, Long> {
	@Query("SELECT new Report(o.productOrderDetail.name, "
			+ "sum(o.unitPrice * o.quatity),  "
			+ "sum(o.quatity), "
			+ "min(o.unitPrice), "
			+ "max(o.unitPrice), "
			+ "avg(o.unitPrice)) "
			+ " FROM OrderDetailEntity o "
			+ " WHERE o.orderEntity.accountOrder=:user AND o.orderEntity.status=2"
			+ " GROUP BY o.productOrderDetail.name")
	List<Report> getPurchaseByUser(@Param("user") AccountEntity user);
}
