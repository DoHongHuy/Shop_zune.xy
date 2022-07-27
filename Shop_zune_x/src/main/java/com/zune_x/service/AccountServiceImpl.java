package com.zune_x.service;

import com.zune_x.model.Account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import static com.zune_x.utils.MySQLConnUtils.getConnection;
import static com.zune_x.utils.MySQLConnUtils.printSQLException;

public class AccountServiceImpl implements AccountService{
    private static final String CREATE_USER_SQL = "INSERT INTO user (" +
            " name, phone,date,email,password,createAt ,updateAt) " +
            "VALUES (  ? , ? , ? , ? , ? , ? , ? );";

    @Override
    public List<Account> findAll() {
        return null;
    }

    @Override
    public boolean create(Account account) {
        boolean success = false;

        try {
            Connection connection = getConnection();

            PreparedStatement statement = connection.prepareCall(CREATE_USER_SQL);
            statement.setString(1, account.getName());
            statement.setInt(2, account.getPhone());
            statement.setString(3, account.getDate().toString());
            statement.setString(4, account.getEmail());
            statement.setString(5, account.getPass());
            statement.setString(6, account.getCreateAt().toString());
            statement.setString(7, account.getUpdateAt().toString());
            statement.executeUpdate();

            success = true;
        } catch (SQLException e) {
            printSQLException(e);
        }
        return success;
    }

    @Override
    public boolean update(Account account) {
        return false;
    }

    @Override
    public boolean remove(int id) {
        return false;
    }
}
