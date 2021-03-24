package com.poly.entity;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "orders")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class OrderEntity {

	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id; 
	
	@Column(name = "order_date", columnDefinition = "TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
	private LocalDate orderDate;

	@Column(nullable = false)
	private String address;
	
	@Column(name = "amount")
	private Double amount;

	@Column(columnDefinition = "int default 1", nullable = false)
	private int status;


	@ManyToOne
	@JoinColumn(name = "account_id")
	private AccountEntity accountOrder;

	@OneToMany(mappedBy = "orderEntity")
	private List<OrderDetailEntity> orderDetails;

}