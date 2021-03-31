package com.poly.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class AccountModel {
    private Long id;
    private String username;
    private String password;
    private String fullname;
    private String email;
    private String image;
    private int status;
    private String role;
    private String phoneNumber;
}