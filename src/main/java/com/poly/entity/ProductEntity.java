package com.poly.entity;

import java.time.LocalDate;
import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "product")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ProductEntity {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(nullable = false)
	private String name;

	@Column(nullable = false)
	private String image;

	@Column(name = "unit_price" ,nullable = false)
	private String unitPrice;

	@Column(nullable = false)
	private Integer stock;

	@Column(name = "man_hinh", nullable = false)//
	private String manHinh;

	@Column(name = "he_dieu_hanh", nullable = false)
	private String heDieuHanh;

	@Column(name = "camera_truoc", nullable = false)
	private String cameraTruoc;

	@Column(name = "camera_sau", nullable = false)
	private String cameraSau;

	@Column(nullable = false)
	private String cpu;

	@Column(nullable = false)
	private String ram;

	@Column(name = "bo_nho_trong")
	private String boNhoTrong;

	@Column(name = "dung_luong_pin")
	private String dungLuongPin;

	@Column
	private String description;

	@Column(name = "create_date", columnDefinition="TIMESTAMP DEFAULT CURRENT_TIMESTAMP" )
	private LocalDate createDate;

	@Column(name = "create_by", columnDefinition = "varchar(255) default 'admin'")
	private String createBy;

	@Column(nullable = false)
	private int count;
	
	@Column(columnDefinition = "int default 1")
	private int status;
	
	@OneToMany(mappedBy = "productOrderDetail")
	private List<OrderDetailEntity> products;

	@ManyToOne
	@JoinColumn(name = "category_id")
	private CategoryEntity categoryProduct;

	@ManyToOne
	@JoinColumn(name = "new_id")
	private NewEntity newEntity;

	

}