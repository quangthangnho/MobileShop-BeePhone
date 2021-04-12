package com.poly.entity;

import java.io.Serializable;
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

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "new")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class NewEntity  implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(nullable = false)
	private String title;

	@Column(nullable = false)
	private String image;

	@Column(nullable = false, columnDefinition = "TEXT")
	private String content;
	
	@Column(columnDefinition = "int default 1")
	private int status;

	@Column(name = "create_date")
	private String createDate;

	@ManyToOne
	@JoinColumn(name = "account_id" , nullable = false)
	private AccountEntity accountEntity;


}
