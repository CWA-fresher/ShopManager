package com.cwa.shop.controller;

import com.cwa.shop.model.Account;
import com.cwa.shop.model.Category;
import com.cwa.shop.service.impl.CategoryServiceImpl;
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
@RequestMapping("/admin/category")
public class CategoryController {

    @Autowired
    private CategoryServiceImpl categoryService;

//    @GetMapping("/listCategory")
//    public String listCategory(Model model) {
//        List<Category> theCategory = categoryService.getAllCategory();
//        model.addAttribute("listCategory", theCategory);
//        return "category/index";
//
//    }
//
//    @GetMapping("/addCategory")
//    public String showAddForm(Model model) {
//        model.addAttribute("category", new Category());
//        return "category/add-category";
//    }
//    @PostMapping("/addCategory/save")
//    public String addCategory(@ModelAttribute("category") Category category){
//        categoryService.save(category);
//        return "redirect:/admin/category/listCategory";
//    }
//
//    @PostMapping("/updateCategory/{id}")
//    public String showUpdateForm(@PathVariable int id, Model theModel) {
//        Category theCategory = categoryService.findById(id);
//        theModel.addAttribute("category", theCategory);
//        return "category/edit-category";
//
//    }
//    @PostMapping("/deleteCategory/{theId}")
//    public String deleteCategory(@PathVariable @RequestParam("categoryId") int theId) {
//        categoryService.deleteCategory(theId);
//        return "redirect:/admin/category/listCategory";
//    }
//
//    @GetMapping("/listCategory/{theId}")
//    public String showCategoryById(@PathVariable @RequestParam("categoryId") int theId, Model theModel) {
//        Category theCategory = categoryService.findById(theId);
//        theModel.addAttribute("category", theCategory);
//        return "";
//    }
    @GetMapping("/listCategory")
    public String listCategory(Model model) {
        List<Category> theCategory = categoryService.getAllCategory();
        model.addAttribute("listCategory", theCategory);
        return "category/index";
    }

    @PostMapping("/saveCategory")
    public String saveCategory(@Validated @ModelAttribute("category") Category category, BindingResult
            theBindingResult) {
        if (theBindingResult.hasErrors()) {
            return "category/index";
        }
        categoryService.save(category);
        return "redirect:/admin/category/listCategory";
    }

    @GetMapping("/updateAccount/{id}")
    public String showUpdateForm(@PathVariable("id") int theId, Model theModel) {
        Category theCategory = categoryService.findById(theId);
        theModel.addAttribute("category", theCategory);
        return "category/edit-category";

    }

    @GetMapping("/addCategory")
    public String showAddForm(Model theModel) {
        theModel.addAttribute("category", new Category());
        return "category/add-category";

    }

    @GetMapping("/delete/{id}")
    public String deleteCategory(@PathVariable("id") int theId) {
        categoryService.deleteCategory(theId);
        return "redirect:/admin/category/listCategory";
    }

    @GetMapping("/list/{theId}")
    public String showAccountById(@PathVariable @RequestParam("categoryId") int theId, Model theModel) {
        Category theCategory = categoryService.findById(theId);
        theModel.addAttribute("category", theCategory);
        return "category/index";
    }
}
