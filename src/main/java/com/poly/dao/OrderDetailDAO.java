package com.poly.dao;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.entity.AccountEntity;
import com.poly.entity.OrderDetailEntity;
import com.poly.entity.OrderEntity;
import com.poly.entity.Report;
import com.poly.model.AccountModel;

public interface OrderDetailDAO extends JpaRepository<OrderDetailEntity, Long> {
	
}
