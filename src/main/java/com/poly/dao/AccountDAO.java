package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.entity.AccountEntity;


public interface AccountDAO extends JpaRepository<AccountEntity, Long> {
    @Query("SELECT c FROM AccountEntity  c WHERE c.role=:role")
    List<AccountEntity> findAllByRole(@Param("role") boolean role);
    
    AccountEntity findByUsername(String username);
    
    AccountEntity findByUsernameAndPassword(String username, String password);
}
