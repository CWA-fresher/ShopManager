package com.cwa.shop.controller;

import com.cwa.shop.dto.ProductDto;
import com.cwa.shop.model.Product;
import com.cwa.shop.service.CategoryService;
import com.cwa.shop.service.ProductService;
import com.cwa.shop.validator.ProductValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Transactional
@Controller
public class ProductController {

    @Autowired
    private ProductService productService;

    @Autowired
    private CategoryService categoryService;

    @GetMapping("/admin/product")
    public String indexProductAdmin(Model model) {
        model.addAttribute("listProduct", productService.getAllProduct());
        return "product/index";
    }

    @GetMapping("/admin/add-product")
    public String formAddProduct(ModelMap model) {
        model.addAttribute("productDto", new ProductDto());
        model.addAttribute("listCategory",categoryService.getAllCategory());
        return "product/add-product";
    }

    @GetMapping("/admin/edit-product/{id}")
    public String formEditProduct(@PathVariable("id") int id, ModelMap model) {
        model.addAttribute("product", productService.getProduct(id));
        return "product/edit-product";
    }

    @PostMapping("/admin/add-product/save")
    public String addProduct(@ModelAttribute(value = "productDto") ProductDto productDto,
                             BindingResult result, RedirectAttributes attributes) {
        ProductValidator productValidator = new ProductValidator();
        productValidator.validate(productDto, result);
        if (result.hasErrors()) {
            return "product/add-product";
        }
        productService.createProduct(productDto);
        attributes.addFlashAttribute("message", "Lưu sản phẩm thành công");
        return "redirect:/admin/product";
    }

    @PostMapping("/admin/edit-product/update")
    public String editProduct(@Validated @ModelAttribute("product") ProductDto productDto, BindingResult result, RedirectAttributes attributes) {
        ProductValidator productValidator = new ProductValidator();
        productValidator.validate(productDto, result);
        if (result.hasErrors()) {
            return "product/edit-product";
        }
        productService.editProduct(productDto);
        attributes.addFlashAttribute("message","Sửa sản phẩm thành công");
        return "redirect:/admin/product";
    }

    @GetMapping("/admin/product/remove/{id}")
    public String removeProduct(@PathVariable("id") int id, ModelMap model) {
        Product product = productService.getProduct(id);
        productService.removeProduct(product);
        return "redirect:/admin/product";
    }

    @GetMapping("/product/detail/{id}")
    public String detailProduct(@PathVariable("id") int id, ModelMap model) {
        model.addAttribute("product", productService.getProduct(id));
        return "";
    }

    @GetMapping("/product")
    public String indexProductUser(Model model) {
        model.addAttribute("listProduct", productService.getAllProduct());
        return "";
    }
}
