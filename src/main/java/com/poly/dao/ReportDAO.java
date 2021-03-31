package com.poly.dao;

import java.io.Serializable;
import java.util.List;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entity.Report;

public interface ReportDAO extends JpaRepository<Report, Serializable>{
	@Query("SELECT new Report(o.categoryProduct.name, "
			+ " sum(o.unitPrice * o.stock), "
			+ " sum(o.stock), "
			+ " min(o.unitPrice), "
			+ " max(o.unitPrice), "
			+ " avg(o.unitPrice)) "
			+ " FROM ProductEntity o "
			+ " GROUP BY o.categoryProduct.name")
	List<Report> inventoryByCategory(); // hàng tồn kho
	
	@Query("SELECT new Report(o.productOrderDetail.categoryProduct.name, "
			+ " sum(o.unitPrice * o.quatity), "
			+ " sum(o.quatity), "
			+ " min(o.unitPrice), "
			+ " max(o.unitPrice), "
			+ " avg(o.unitPrice)) "
			+ " FROM OrderDetailEntity o "
			+ " GROUP BY o.productOrderDetail.categoryProduct.name")
	List<Report> revenueByCategory(); // theo loại
	
	@Query("SELECT new Report(month(o.orderEntity.orderDate), "
			+ " sum(o.unitPrice * o.quatity), "
			+ " sum(o.quatity), "
			+ " min(o.unitPrice), "
			+ " max(o.unitPrice), "
			+ " avg(o.unitPrice)) "
			+ " FROM OrderDetailEntity o "
			+ " GROUP BY month(o.orderEntity.orderDate)"
			+ " ORDER BY month(o.orderEntity.orderDate)")
	List<Report> revenueByMonth(); // theo tháng
	
	@Query("SELECT new Report(o.orderEntity.accountOrder.fullname, "
			+ " sum(o.unitPrice * o.quatity) AS top10, "
			+ " sum(o.quatity), "
			+ " min(o.unitPrice), "
			+ " max(o.unitPrice), "
			+ " avg(o.unitPrice)) "
			+ " FROM OrderDetailEntity o "
			+ " GROUP BY o.orderEntity.accountOrder.id"
			+ " ORDER BY top10 DESC ")
	List<Report> revenueTOP10Customer(Pageable page); // theo customer
	
	
	
	
	

	

}