package com.cwa.shop.dao;

import com.cwa.shop.model.Account;

import java.util.List;

public interface AccountDao {
    List<Account> getAllAccounts();

    void deleteAccount(int id);

    void saveAccount(Account account);

    Account getAccount(int id);


}
