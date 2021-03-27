package com.poly.Service.impl;

import com.poly.Service.IAccountService;
import com.poly.convert.impl.AccountModelAndEntityConvert;
import com.poly.dao.AccountDAO;
import com.poly.entity.AccountEntity;
import com.poly.model.AccountModel;
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
    public List<AccountModel> findAllByRole(boolean role) {
        // TODO Auto-generated method stub
        return accountDAO.findAllByRole(role).stream()
                .map(element -> new AccountModelAndEntityConvert().convertToModel(element))
                .collect(Collectors.toList());


    }

    @Override
    public AccountModel findById(Long id) {
        AccountEntity accountEntity = accountDAO.findById(id).get();
        AccountModelAndEntityConvert accountModelAndEntityConvert = new AccountModelAndEntityConvert();
        return accountModelAndEntityConvert.convertToModel(accountEntity);
    }

	@Override
	public AccountModel save(AccountModel accountModel) {
		// TODO Auto-generated method stub
		AccountModelAndEntityConvert accountModelAndEntityConvert = new AccountModelAndEntityConvert();
		AccountEntity  accountEntity =  accountModelAndEntityConvert.convertToEntity(accountModel);
		return accountModelAndEntityConvert.convertToModel(accountDAO.save(accountEntity));
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
		return accountModelAndEntityConvert.convertToModel(accountEntity);
	}

	@Override
	public AccountModel findByUsernameAndPassword(AccountModel accountModel) {
		// TODO Auto-generated method stub
		AccountEntity accountEntity = accountDAO.findByUsernameAndPassword(accountModel.getUsername(), accountModel.getPassword());
		
		return new AccountModelAndEntityConvert().convertToModel(accountEntity);
	}

	
}
