package com.poly.Service;

import com.poly.model.AccountModel;

import java.util.List;

public interface IAccountService {
    List<AccountModel> findAllByRole(boolean role);

    AccountModel findById(Long id);
    
    AccountModel save(AccountModel accountModel);
    
    void delete(AccountModel accountModel);
    
    AccountModel findByUsername(AccountModel accountModel);
    

    AccountModel findByEmail(AccountModel accountModel);
    
    AccountModel findByUsernameAndPassword(LoginModel loginModel);

    
    
}
