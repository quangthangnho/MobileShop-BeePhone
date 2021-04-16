package com.poly.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.entity.OrderEntity;

public interface OrderDAO extends JpaRepository<OrderEntity, Long> {
	
	//admin
	@Query("SELECT o  FROM OrderEntity o ORDER BY o.orderDate DESC")
	List<OrderEntity> AfillAllOrder();
	
	@Query("SELECT o FROM OrderEntity o WHERE o.status = 0 ORDER BY o.orderDate DESC")
	List<OrderEntity> AchoXacNhan();
	
	@Query("SELECT o FROM OrderEntity o WHERE o.status = 1 ORDER BY o.orderDate  DESC")
	List<OrderEntity> AchoLayHang();
	
	@Query("SELECT o FROM OrderEntity o WHERE o.status = 2 ORDER BY o.orderDate  DESC")
	List<OrderEntity> AdangGiao();
	
	@Query("SELECT o FROM OrderEntity o WHERE o.status = 3 ORDER BY o.orderDate  DESC")
	List<OrderEntity> AdaGiao();
	
	@Query("SELECT o FROM OrderEntity o WHERE o.status = -1 ORDER BY o.orderDate  DESC")
	List<OrderEntity> Adahuy();
	
	
	/*A count */
	@Query("SELECT COUNT(*) FROM OrderEntity o where o.status = 0")
	List<OrderEntity> AchoXacNhannumBer();
	
	
	
	//user
	@Query("SELECT o FROM OrderEntity o WHERE o.accountOrder.id=:uid ORDER BY o.orderDate DESC")
	List<OrderEntity> findByUsername(@Param("uid") Long id);

	@Query("SELECT o FROM OrderEntity o WHERE  o.status=0 and o.accountOrder.id=:uid ORDER BY o.orderDate DESC")
	List<OrderEntity> choXacnhanh(@Param("uid") Long id);
	
	@Query("SELECT o FROM OrderEntity o WHERE  o.status=1 and o.accountOrder.id=:uid ORDER BY o.orderDate DESC")
	List<OrderEntity> choLayHang(@Param("uid") Long id);
	
	@Query("SELECT o FROM OrderEntity o WHERE  o.status=2 and o.accountOrder.id=:uid ORDER BY o.orderDate DESC")
	List<OrderEntity> dangGiao(@Param("uid") Long id);
	
	@Query("SELECT o FROM OrderEntity o WHERE  o.status=3 and o.accountOrder.id=:uid ORDER BY o.orderDate DESC")
	List<OrderEntity> daGiao(@Param("uid") Long id);
	
	@Query("SELECT o FROM OrderEntity o WHERE  o.status=-1 and o.accountOrder.id=:uid ORDER BY o.orderDate DESC")
	List<OrderEntity> daHuy(@Param("uid") Long id);
	


}