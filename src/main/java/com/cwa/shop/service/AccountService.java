package com.cwa.shop.service;

import com.cwa.shop.model.Account;

import java.util.List;

public interface AccountService {
    List<Account> getAllAccounts();

    void deleteAccount(int id);

    void saveAccount(Account account);

    Account getAccount(int id);
}
