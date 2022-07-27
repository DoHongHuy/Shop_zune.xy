package com.zune_x.service;

import com.zune_x.model.Categories;

import java.sql.SQLException;
import java.util.List;

public interface CategoriesService {
    public void insertCategories(Categories categories) throws SQLException;

    public Categories selectCategories(int id);

    public List<Categories> selectAllCategories();

    public boolean deleteCategories(int id) throws SQLException;

    public boolean updateCategories(Categories categories) throws SQLException;
}
