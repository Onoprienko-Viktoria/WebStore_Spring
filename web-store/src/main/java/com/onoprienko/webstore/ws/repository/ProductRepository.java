package com.onoprienko.webstore.ws.repository;

import com.onoprienko.webstore.ws.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
    List<Product> findAllByAuthor_Username(String username);
}
