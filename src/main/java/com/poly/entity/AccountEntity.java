package com.poly.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "account")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class AccountEntity implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(name = "username", nullable = false)
	private String username;

	@Column(name = "password" , nullable = false)
	private String password;

	@Column(name = "fullname" , nullable = false)
	private String fullname;

	@Column(name = "email" ,nullable = false)
	private String email;

	@Column(name = "image")
	private String image = "user2.png";
	
	@Column(name = "phoneNumber")
	private String phoneNumber;

	@Column(name = "status", columnDefinition = "boolean default false")
	private Boolean status;

	@Column(name = "role", columnDefinition = "varchar(10) default 'USER'")
	private String role;

	@OneToMany(mappedBy = "accountEntity")
	private List<NewEntity> news;

	@OneToMany(mappedBy = "accountOrder")
	private List<OrderEntity> orders;

}
