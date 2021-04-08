package com.poly.model;

import java.time.LocalDate;
import java.util.List;

import com.poly.entity.AccountEntity;
import com.poly.entity.ProductEntity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class NewModel {

		private Long id;
		private String title;
		private String image;
		private String content;
		private int status;
		private LocalDate startDate;
		private LocalDate endDate;
		private AccountEntity accountEntity;
		private List<ProductEntity> products;
}
