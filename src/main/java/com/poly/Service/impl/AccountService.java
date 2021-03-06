package com.poly.Service.impl;

import com.poly.Service.IAccountService;
import com.poly.convert.impl.AccountModelAndEntityConvert;
import com.poly.dao.AccountDAO;
import com.poly.entity.AccountEntity;
import com.poly.model.AccountModel;
import com.poly.model.LoginModel;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class AccountService implements IAccountService {
    private final AccountDAO accountDAO;

    public AccountService(AccountDAO accountDAO) {
        this.accountDAO = accountDAO;
    }

    @Override
    public List<AccountModel> findAllByRole(String role) {
        // TODO Auto-generated method stub
        return accountDAO.findByRole(role).stream()
                .map(element -> new AccountModelAndEntityConvert().convertToModel(element))
                .collect(Collectors.toList());


    }

    @Override
    public AccountModel findById(Long id) {
        AccountEntity accountEntity = accountDAO.findById(id).get();
        AccountModelAndEntityConvert accountModelAndEntityConvert = new AccountModelAndEntityConvert();     
        if(accountEntity != null) {
        	return accountModelAndEntityConvert.convertToModel(accountEntity);
		}else {
			return null;
		}
    }

	@Override
	public AccountModel save(AccountModel accountModel) {
		// TODO Auto-generated method stub
		AccountModelAndEntityConvert accountModelAndEntityConvert = new AccountModelAndEntityConvert();
		AccountEntity  accountEntity =  accountModelAndEntityConvert.convertToEntity(accountModel);
		if(accountEntity != null) {
			return accountModelAndEntityConvert.convertToModel(accountDAO.save(accountEntity));
		}else {
			return null;
		}
	}

	@Override
	public void delete(AccountModel accountModel) {
		// TODO Auto-generated method stub
		AccountModelAndEntityConvert accountModelAndEntityConvert = new AccountModelAndEntityConvert();
		AccountEntity  accountEntity =  accountModelAndEntityConvert.convertToEntity(accountModel);
		accountDAO.deleteById(accountEntity.getId());
	}

	@Override
	public AccountModel findByUsername(AccountModel accountModel) {
		// TODO Auto-generated method stub
		AccountModelAndEntityConvert accountModelAndEntityConvert = new AccountModelAndEntityConvert();
		AccountEntity accountEntity = accountModelAndEntityConvert.convertToEntity(accountModel);
		accountEntity = accountDAO.findByUsername(accountEntity.getUsername());	
		if(accountEntity != null) {
			return accountModelAndEntityConvert.convertToModel(accountEntity);
		}else {
			return null;
		}
	}

	@Override
	public AccountModel findByUsernameAndPassword(LoginModel loginModel) {
		// TODO Auto-generated method stub
		AccountEntity accountEntity = new AccountEntity();
		accountEntity = accountDAO.findByUsernameAndPassword(loginModel.getUsername(), loginModel.getPassword());
		if(accountEntity != null) {
			AccountModelAndEntityConvert accountModelAndEntityConvert = new AccountModelAndEntityConvert();
			return accountModelAndEntityConvert.convertToModel(accountEntity);
		}else {
			return null;
		}
			
		
	}

	@Override
	public AccountModel findByEmail(AccountModel accountModel) {
		AccountModelAndEntityConvert accountModelAndEntityConvert = new AccountModelAndEntityConvert();
		AccountEntity accountEntity = accountModelAndEntityConvert.convertToEntity(accountModel);
		accountEntity = accountDAO.findByEmail(accountEntity.getEmail());
		if(accountEntity != null) {
			return new AccountModelAndEntityConvert().convertToModel(accountEntity);
		}else {
			return null;
		}
	}

	
}
