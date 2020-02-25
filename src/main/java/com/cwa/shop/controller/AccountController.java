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
        model.addAttribute("listAccount", theAccounts);
        return "account/index";
    }

    @PostMapping("/saveAccount")
    public String saveAccount(@Validated @ModelAttribute("account") Account theAccount, BindingResult
            theBindingResult) {
        if (theBindingResult.hasErrors()) {
            return "account/index";
        }
        accountService.saveAccount(theAccount);
        return "redirect:/admin/account/list";
    }

    @GetMapping("/updateAccount/{id}")
    public String showUpdateForm(@PathVariable("id") int theId, Model theModel) {
        Account theAccount = accountService.getAccount(theId);
        theModel.addAttribute("account", theAccount);
        return "account/edit-acc";

    }

    @GetMapping("/addAccount")
    public String showAddForm(Model theModel) {
        theModel.addAttribute("account", new Account());
        return "account/add-acc";

    }

    @PostMapping("/delete/{id}")
    public String deleteAccount(@PathVariable("id") int theId) {
        accountService.deleteAccount(theId);
        return "redirect :/admin/account";
    }

    @GetMapping("/list/{theId}")
    public String showAccountById(@PathVariable @RequestParam("accountId") int theId, Model theModel) {
        Account theAccount = accountService.getAccount(theId);
        theModel.addAttribute("account", theAccount);
        return "account/index";
    }
}
