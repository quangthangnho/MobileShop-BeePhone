package com.poly.model;

import java.time.LocalDate;
import java.util.List;

import com.poly.entity.CategoryEntity;
import com.poly.entity.NewEntity;
import com.poly.entity.OrderDetailEntity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

public class ProductModel {

	private Long id;
	private String name;
	private String image;
	private Double unitPrice;
	private Integer stock;
	private String manHinh;
	private String heDieuHanh;
	private String cameraTruoc;
	private String cameraSau;
	private String cpu;
	private String ram;
	private String boNhoTrong;
	private String dungLuongPin;
	private String description;
	private LocalDate createDate;
	private String createBy;
	private int count;
	private int status;
	private int discount;
	private double price_discount;
	private List<OrderDetailEntity> products;
	private CategoryEntity categoryProduct;
	private NewEntity newEntity;
	
	
	public ProductModel() {
		super();
	}
	
	
	public ProductModel(Long id, String name, String image, Double unitPrice, Integer stock, String manHinh,
			String heDieuHanh, String cameraTruoc, String cameraSau, String cpu, String ram, String boNhoTrong,
			String dungLuongPin, String description, LocalDate createDate, String createBy, int count, int status,
			int discount, double price_discount, List<OrderDetailEntity> products, CategoryEntity categoryProduct,
			NewEntity newEntity) {
		super();
		this.id = id;
		this.name = name;
		this.image = image;
		this.unitPrice = unitPrice;
		this.stock = stock;
		this.manHinh = manHinh;
		this.heDieuHanh = heDieuHanh;
		this.cameraTruoc = cameraTruoc;
		this.cameraSau = cameraSau;
		this.cpu = cpu;
		this.ram = ram;
		this.boNhoTrong = boNhoTrong;
		this.dungLuongPin = dungLuongPin;
		this.description = description;
		this.createDate = createDate;
		this.createBy = createBy;
		this.count = count;
		this.status = status;
		this.discount = discount;
		this.price_discount = price_discount;
		this.products = products;
		this.categoryProduct = categoryProduct;
		this.newEntity = newEntity;
	}


	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Double getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(Double unitPrice) {
		this.unitPrice = unitPrice;
	}
	public Integer getStock() {
		return stock;
	}
	public void setStock(Integer stock) {
		this.stock = stock;
	}
	public String getManHinh() {
		return manHinh;
	}
	public void setManHinh(String manHinh) {
		this.manHinh = manHinh;
	}
	public String getHeDieuHanh() {
		return heDieuHanh;
	}
	public void setHeDieuHanh(String heDieuHanh) {
		this.heDieuHanh = heDieuHanh;
	}
	public String getCameraTruoc() {
		return cameraTruoc;
	}
	public void setCameraTruoc(String cameraTruoc) {
		this.cameraTruoc = cameraTruoc;
	}
	public String getCameraSau() {
		return cameraSau;
	}
	public void setCameraSau(String cameraSau) {
		this.cameraSau = cameraSau;
	}
	public String getCpu() {
		return cpu;
	}
	public void setCpu(String cpu) {
		this.cpu = cpu;
	}
	public String getRam() {
		return ram;
	}
	public void setRam(String ram) {
		this.ram = ram;
	}
	public String getBoNhoTrong() {
		return boNhoTrong;
	}
	public void setBoNhoTrong(String boNhoTrong) {
		this.boNhoTrong = boNhoTrong;
	}
	public String getDungLuongPin() {
		return dungLuongPin;
	}
	public void setDungLuongPin(String dungLuongPin) {
		this.dungLuongPin = dungLuongPin;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public LocalDate getCreateDate() {
		return createDate;
	}
	public void setCreateDate(LocalDate createDate) {
		this.createDate = createDate;
	}
	public String getCreateBy() {
		return createBy;
	}
	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public double getPrice_discount() {
		return this.unitPrice - ((this.unitPrice* this.discount) / 100);
	}
	public void setPrice_discount(double price_discount) {
		this.price_discount = price_discount;
	}
	public List<OrderDetailEntity> getProducts() {
		return products;
	}
	public void setProducts(List<OrderDetailEntity> products) {
		this.products = products;
	}
	public CategoryEntity getCategoryProduct() {
		return categoryProduct;
	}
	public void setCategoryProduct(CategoryEntity categoryProduct) {
		this.categoryProduct = categoryProduct;
	}
	public NewEntity getNewEntity() {
		return newEntity;
	}
	public void setNewEntity(NewEntity newEntity) {
		this.newEntity = newEntity;
	}
	
	
}
