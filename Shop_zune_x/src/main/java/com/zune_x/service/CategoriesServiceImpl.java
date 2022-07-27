package com.zune_x.service;

import com.zune_x.model.Categories;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static com.zune_x.utils.MySQLConnUtils.getConnection;
import static com.zune_x.utils.MySQLConnUtils.printSQLException;

public class CategoriesServiceImpl implements CategoriesService{
    private static final String SELECT_ALL_CATEGORIES = "select * from typeproduct";

    @Override
    public void insertCategories(Categories categories) throws SQLException {

    }

    @Override
    public Categories selectCategories(int id) {
        return null;
    }

    @Override
    public List<Categories> selectAllCategories() {
        List<Categories> listCategories = new ArrayList<>();
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();
             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CATEGORIES);) {
            System.out.println(this.getClass() + " selectAllCountry: " + preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                System.out.println(id + "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
                System.out.println(name + "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
                listCategories.add(new Categories(id, name));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return listCategories;
    }

    @Override
    public boolean deleteCategories(int id) throws SQLException {
        return false;
    }

    @Override
    public boolean updateCategories(Categories categories) throws SQLException {
        return false;
    }
}
