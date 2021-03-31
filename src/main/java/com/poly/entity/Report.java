package com.poly.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Report {
	@Id
	Serializable group;
	Double sum; //double unitPrice, quantity
//	String name;
	Long count; //
	Double min; //Double unitPrice
	Double max; //double unitPrice
	Double avg; //double unitPrice
	
	public Report() {
		super();
	}
	public Report(Serializable group, Double sum, Long count, Double min, Double max, Double avg) {
		super();
		this.group = group;
		this.sum = sum;
//		this.name = name;
		this.count = count;
		this.min = min;
		this.max = max;
		this.avg = avg;
	}
	public Serializable getGroup() {
		return group;
	}
	public void setGroup(Serializable group) {
		this.group = group;
	}
	public Double getSum() {
		return sum;
	}
	public void setSum(Double sum) {
		this.sum = sum;
	}
//	public String getName() {
//		return name;
//	}
//	public void setName(String name) {
//		this.name = name;
//	}
	public Long getCount() {
		return count;
	}
	public void setCount(Long count) {
		this.count = count;
	}
	public Double getMin() {
		return min;
	}
	public void setMin(Double min) {
		this.min = min;
	}
	public Double getMax() {
		return max;
	}
	public void setMax(Double max) {
		this.max = max;
	}
	public Double getAvg() {
		return avg;
	}
	public void setAvg(Double avg) {
		this.avg = avg;
	}
	
	
}
