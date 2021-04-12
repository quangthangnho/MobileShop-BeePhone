package com.poly.model;

import com.poly.entity.AccountEntity;

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
		private String createDate;
		private AccountEntity accountEntity;
	}
