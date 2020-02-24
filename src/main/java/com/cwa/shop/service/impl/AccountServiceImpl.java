package com.cwa.shop.service.impl;

import com.cwa.shop.dao.AccountDao;
import com.cwa.shop.model.Account;
import com.cwa.shop.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import java.util.List;

@Service
//cai nay ko phai để đây@Transactional(rollbackFor = Exception.class)//rollback xay ra khi có exception
public class AccountServiceImpl implements AccountService {
    @Autowired
    private AccountDao accountDao;

    public List<Account> getAllAccounts() {
        return accountDao.getAllAccounts();
    }

    public void deleteAccount(int id) {
        accountDao.deleteAccount(id);

    }


    public void saveAccount(Account account) {
        accountDao.saveAccount(account);

    }


    public Account getAccount(int id) {
        return accountDao.getAccount(id);
    }
}
