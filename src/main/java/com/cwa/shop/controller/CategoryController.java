package com.cwa.shop.controller;

import com.cwa.shop.model.Account;
import com.cwa.shop.model.Category;
import com.cwa.shop.service.impl.CategoryServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/admin/category")
public class CategoryController {
    @Autowired
    private CategoryServiceImpl categoryService;

    @GetMapping("/list-category")
    public String listCategory(Model model) {
        List<Category> theCategory = categoryService.getAllCategory();
        model.addAttribute("category", theCategory);
        return "admin/category";

    }

    @PostMapping("/addCategory")
    public String showAddForm(Model model) {
        model.addAttribute("category", new Category());
        return "admin/newCategory";
    }

    @PostMapping("/updateCategory")
    public String showUpdateForm(@RequestParam("categoryId") int theId, Model theModel) {
        Category theCategory = categoryService.findById(theId);
        theModel.addAttribute("category", theCategory);
        return "admin/newCategory";

    }
    @PostMapping("/deleteCategory{theId}")
    public String deleteCategory(@PathVariable @RequestParam("categoryId") int theId) {
        categoryService.deleteCategory(theId);
        return "redirect :/admin/category";
    }

    @GetMapping("/listCategory{theId}")
    public String showCategoryById(@PathVariable @RequestParam("categoryId") int theId, Model theModel) {
        Category theCategory = categoryService.findById(theId);
        theModel.addAttribute("category", theCategory);
        return "admin/category";
    }
}
