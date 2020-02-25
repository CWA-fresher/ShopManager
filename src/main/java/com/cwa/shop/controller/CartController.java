package com.cwa.shop.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import com.cwa.shop.dto.Cart;
import com.cwa.shop.model.Product;
import com.cwa.shop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Transactional
@Controller
@RequestMapping(value = "cart")
public class CartController {
//
//	@Autowired
//    ProductService productService;
//
//	@RequestMapping(value = "add/{productId}", method = RequestMethod.GET)
//	public String viewAdd (ModelMap mm, HttpSession session, @PathVariable("productId") int productId) {
//		HashMap<Integer, Cart> cartItems = (HashMap<Integer, Cart>) session.getAttribute("myCartItems");
//        if (cartItems == null) {
//            cartItems = new HashMap<>();
//        }
//
//        Product product = productService.getProduct(productId);
//        if (product != null) {
//            if (cartItems.containsKey(productId)) {
//                Cart item = cartItems.get(productId);
//                item.setProduct(product);
//                item.setQuantity(item.getQuantity() + 1);
//                cartItems.put(productId, item);
//            } else {
//                Cart item = new Cart();
//                item.setProduct(product);
//                item.setQuantity(1);
//                cartItems.put(productId, item);
//            }
//        }
//        session.setAttribute("myCartItems", cartItems);
//
//        return "user/cart";
//
//
//	}
//	@RequestMapping(value = "sub/{productId}", method = RequestMethod.GET)
//    public String viewUpdate(ModelMap mm, HttpSession session, @PathVariable("productId") long productId) {
//        HashMap<Long, Cart> cartItems = (HashMap<Long, Cart>) session.getAttribute("myCartItems");
//        if (cartItems == null) {
//            cartItems = new HashMap<>();
//        }
//        session.setAttribute("myCartItems", cartItems);
//        return "pages/cart";
//    }
//
//	@RequestMapping(value = "remove/{productId}", method = RequestMethod.GET)
//    public String viewRemove(ModelMap mm, HttpSession session, @PathVariable("productId") int productId) {
//        HashMap<Integer, Cart> cartItems = (HashMap<Integer, Cart>) session.getAttribute("myCartItems");
//        if (cartItems == null) {
//            cartItems = new HashMap<>();
//        }
//        if (cartItems.containsKey(productId)) {
//            cartItems.remove(productId);
//        }
//        session.setAttribute("myCartItems", cartItems);
//        return "user/cart";
//    }
	
	 
	
}
