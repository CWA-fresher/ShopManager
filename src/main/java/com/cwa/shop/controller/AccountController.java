package com.cwa.shop.controller;

import com.cwa.shop.model.Account;
import com.cwa.shop.service.impl.AccountServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Transactional
@Controller
@RequestMapping("/admin/account")
public class AccountController {
    @Autowired
    private AccountServiceImpl accountService;

    @GetMapping("/list")
    public String listAccounts(Model model) {
        List<Account> theAccounts = accountService.getAllAccounts();
        model.addAttribute("account", theAccounts);
        return "admin/account";
    }

    @PostMapping("/saveAccount")
    public String saveAccount(@Validated @ModelAttribute("account") Account theAccount, BindingResult
            theBindingResult) {
        if (theBindingResult.hasErrors()) {
            return "admin/newAccount";
        }
        accountService.saveAccount(theAccount);
        return "redirect :/admin/account";
    }

    @PostMapping("/updateAccount")
    public String showUpdateForm(@RequestParam("accountId") int theId, Model theModel) {
        Account theAccount = accountService.getAccount(theId);
        theModel.addAttribute("account", theAccount);
        return "admin/newAccount";

    }

    @PostMapping("/addAccount")
    public String showAddForm(Model theModel) {
        theModel.addAttribute("account", new Account());
        return "admin/newAccount";

    }

    @PostMapping("/delete{theId}")
    public String deleteAccount(@PathVariable @RequestParam("accountId") int theId) {
        accountService.deleteAccount(theId);
        return "redirect :/admin/account";
    }

    @GetMapping("/list{theId}")
    public String showAccountById(@PathVariable @RequestParam("accountId") int theId, Model theModel) {
        Account theAccount = accountService.getAccount(theId);
        theModel.addAttribute("account", theAccount);
        return "admin/account";
    }
}
