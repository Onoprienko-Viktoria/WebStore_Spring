package com.onoprienko.webstore.ws.web.controllers;

import com.onoprienko.webstore.ws.entity.Product;
import com.onoprienko.webstore.ws.entity.User;
import com.onoprienko.webstore.ws.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
public class ProductsController {
    private final ProductService productService;

    @Autowired
    public ProductsController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping
    public String findAll(Model model) {
        model.addAttribute("products", productService.findAll());
        return "products";
    }

    @GetMapping("product/add")
    public String getAddProductPage() {
        return "add_product";
    }

    @PostMapping("product/add")
    public String add(@AuthenticationPrincipal User user,
                      @RequestParam("name") String name,
                      @RequestParam("price") double price,
                      @RequestParam("description") String description) {
        productService.addProduct(name, price, description, user);
        return "redirect:/";
    }

    @GetMapping("/product/remove/{id}")
    protected String removeProduct(@PathVariable("id") long id) {
        productService.removeProduct(id);
        return "redirect:/cabinet";
    }


    @GetMapping("/product/edit/{id}")
    protected String getEditPage(@PathVariable("id") long id, Model model) {
        Product product = productService.getProduct(id);
        model.addAttribute("product", product);
        return "edit_product";
    }

//    @PostMapping("/product/edit/{id}")
//    protected String editProduct(@ModelAttribute("product") Product product,
//                                 @RequestParam("name") String name,
//                                 @RequestParam("price") double price,
//                                 @RequestParam("description") String description) {
//        product.setName(name);
//        product.setPrice(price);
//        product.setDescription(description);
//        productService.editProduct(product);
//        return "redirect:/user/cabinet";
//    }
}
