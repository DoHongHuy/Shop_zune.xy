package com.zune_x.service;

import java.util.List;

public interface ProductService<Product> {
    List<Product> findAll();

    boolean create(Product product);

    boolean update(Product product);

    boolean remove(int id);

    Product findById(int id);

    boolean existByid(int id);

    public List<Product> searchByKey(String key, String type);
     Product selectUser(int id);
}
