package com.zune_x.service;

import com.zune_x.model.Product;
import com.zune_x.utils.MySQLConnUtils;

import java.math.BigDecimal;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static com.zune_x.utils.MySQLConnUtils.getConnection;
import static com.zune_x.utils.MySQLConnUtils.printSQLException;

public class ProductServiceImpl implements ProductService<Product> {
    private static final String DELETE_PRODUCT_SQL = "DELETE FROM product WHERE id_product = ?;";

    private static final String  SEARCH_BY_KEY_PRODUCT = "SELECT * " + "FROM product " +
            " WHERE `img_product` LIKE ? OR name_product LIKE ? OR price_product LIKE ? " +
            "OR quantity_product LIKE ?  OR information_product LIKE ? OR idType_product = ?;";

    private static final String SELECT_ALL_PRODUCT = "SELECT " +
            "id_product , " +
            "img_product  , " +
            " name_product , " +
            " price_product , " +
            " quantity_product , " +
            "idType_product , "  +
            "information_product  "  +

            "FROM product;";
    private static final String CREATE_PRODUCT_SQL = "INSERT INTO product (" +
            " img_product , name_product , price_product ,quantity_product  ,idType_product , information_product ) " +
            " VALUES ( ? , ? , ? , ? , ? , ? ) ; ";

    private static final String SELECT_PRODUCT_BY_ID = "select id_product,img_product, name_product,price_product," +
            "quantity_product , idType_product, information_product from product where id_product = ?";
    private static String UPDATE_PRODUCT_BY_ID = ""+
            "UPDATE product AS u " +
            "SET " +
            "u.img_product = ?, " +
            "u.name_product = ?, " +
            "u.price_product = ?, " +
            "u.quantity_product = ?, " +
            "u.idType_product = ? , " +
            "u.information_product = ? " +
            "WHERE u.id_product = ?;";


    @Override
    public List findAll() {
        List<Product> productList = new ArrayList<>();
        try {
            Connection connection = getConnection();
            PreparedStatement statement = connection.prepareCall(SELECT_ALL_PRODUCT);

            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id_product");
                String img = rs.getString("img_product");
                String name = rs.getString("name_product");
                BigDecimal price = rs.getBigDecimal("price_product");
                int quantity = rs.getInt("quantity_product");
                int idType = rs.getInt("idType_product");
                String information = rs.getString("information_product");
                productList.add(new Product( id,img,name,price,quantity,idType, information ));

            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return productList;
    }

    @Override
    public boolean create(Product product) {
        boolean success = false;

        try {
            Connection connection = getConnection();

            PreparedStatement statement = connection.prepareCall(CREATE_PRODUCT_SQL);
            statement.setString(1, product.getImg());
            statement.setString(2, product.getName());
            statement.setBigDecimal(3, product.getPrice());
            statement.setInt(4, product.getQuantity());
            statement.setInt(5, product.getIdType());
            statement.setString(6, product.getInformation());
            statement.executeUpdate();

            success = true;
        } catch (SQLException e) {
            printSQLException(e);
        }
        return success;
    }

    @Override
    public boolean update(Product product) {
        boolean success = false;
        try {
            Connection connection = getConnection();
            PreparedStatement statement = connection.prepareCall(UPDATE_PRODUCT_BY_ID);
            statement.setString(1, product.getImg());
            statement.setString(2, product.getName());
            statement.setBigDecimal(3, product.getPrice());
            statement.setInt(4, product.getQuantity());
            statement.setInt(5, product.getIdType());
            statement.setString(6, product.getInformation());
            statement.setInt(7, product.getId());
            statement.execute();
            success = true;
        } catch (SQLException e) {
            MySQLConnUtils.printSQLException(e);
        }

        return success;
    }

    @Override
    public boolean remove(int id) {
        boolean rowDeleted = false;
        try (Connection connection = MySQLConnUtils.getConnection();
             PreparedStatement statement = connection.prepareStatement(DELETE_PRODUCT_SQL);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowDeleted;
    }


    @Override
    public Product findById(int id) {
        return null;
    }

    @Override
    public boolean existByid(int id) {
        return false;
    }

    @Override
    public List searchByKey(String key, String type) {
        List<Product> productList = new ArrayList<>();
        try {
            Connection connection = MySQLConnUtils.getConnection();
            CallableStatement statement = connection.prepareCall(SEARCH_BY_KEY_PRODUCT);
            statement.setString(1, '%' + key + '%');
            statement.setString(2, '%' + key + '%');
            statement.setString(3, '%' + key + '%');
            statement.setString(4, '%' + key + '%');
            statement.setString(5, '%' + key + '%');
            statement.setString(6,   type  );
            ResultSet rs = statement.executeQuery();
            while (rs.next()){
                String img = rs.getString("img_product");
                String name = rs.getString("name_product");
                BigDecimal price = rs.getBigDecimal("price_product");
                int quantity = rs.getInt("quantity_product");
                int idType = rs.getInt("idType_product");
                String information = rs.getString("information_product");
                productList.add(new Product(img ,name,price,quantity,idType ,information ));
            }
        }
        catch (SQLException e) {
            printSQLException(e);
        }
        return productList;
    }

    @Override
    public Product selectUser(int id) {
        Product Product = null;
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();
             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PRODUCT_BY_ID);) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int id_product = rs.getInt("id_product");
                String img = rs.getString("img_product");
                String name = rs.getString("name_product");
                BigDecimal price = rs.getBigDecimal("price_product");
                int quantity = rs.getInt("quantity_product");
                int idType = rs.getInt("idType_product");
                String information = rs.getString("information_product");
                Product = new Product(id_product,img, name, price,quantity,idType, information);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return Product;
    }
}
