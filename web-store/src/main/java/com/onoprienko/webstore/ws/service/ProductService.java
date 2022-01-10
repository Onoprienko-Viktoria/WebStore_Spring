package com.onoprienko.webstore.ws.service;

import com.onoprienko.webstore.ws.entity.Product;
import com.onoprienko.webstore.ws.entity.User;
import com.onoprienko.webstore.ws.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;

@Service
public class ProductService {
    private final ProductRepository productRepository;

    @Autowired
    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public List<Product> findAll(){
        return productRepository.findAll();
    }

    public List<Product> findByUsername(String userName){
        return productRepository.findAllByAuthor_Username(userName);
    }

    public void addProduct(String name, double price, String description, User user) {
        LocalDate now = LocalDate.now();
        Product product = Product.builder()
                .name(name)
                .price(price)
                .description(description)
                .publishDate(now)
                .author(user)
                .build();
        productRepository.save(product);
    }

    public void removeProduct(long id) {
        productRepository.deleteById(id);
    }

    public Product getProduct(long id) {
        return productRepository.getById(id);
    }

    public void editProduct(Product product) {
        productRepository.save(product);
    }
}
