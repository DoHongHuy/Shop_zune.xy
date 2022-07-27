package com.zune_x.service;

import com.zune_x.model.Account;
import com.zune_x.utils.MySQLConnUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class LoginServiceImpl implements loginService {

    private String SELECT_ALL_ACCOUNT = "" +
            " SELECT " +
            "  id, " +
            "  name, " +
            "  phone, " +
            "  date, " +
            "  email, " +
            "  password, " +
            "  createAt " +
            " FROM user;";
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public Account checkLogin(String user, String pass) {
        try {
            String query = "SELECT * FROM user WHERE name = ? and password = ?";
            conn = new MySQLConnUtils().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            System.out.println("lỗi tai user");
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println("nhận dc next");
                Account check = new Account(rs.getString(1), rs.getString(2));
                System.out.println("ra dc nè");
                return check;
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("sai rpo");
        }
        System.out.println("bay mau");
        return null;
    }
    @Override
    public List<Account> findAll() {
        List<Account> userList = new ArrayList<>();
//
//        try {
//            Connection connection = getConnection();
//            PreparedStatement statement = connection.prepareCall(SELECT_ALL_ACCOUNT);
//            ResultSet rs = statement.executeQuery();
//            while (rs.next()) {
//                int id = rs.getInt("userId");
//                String userImg = rs.getString("userImg");
//                System.out.println("nhânh dc img");
//                String nameUser = rs.getString("userName");
//                String password = rs.getString("password");
//                int userPhone = rs.getInt("userPhone");
//                String userAddress = rs.getString("userAddress");
//                String userEmail = rs.getString("userEmail");
//                String userLevel = rs.getString("userLevel");
//                System.out.println("nhận level");
//                LocalDate userCreatedAt = LocalDate.parse(rs.getString("userCreatedAt"));
//                LocalDate userUpdatedAt = LocalDate.parse(rs.getString("userUpdatedAt"));
//                userList.add(new Account(id, userImg, nameUser, password, userPhone, userAddress, userEmail,
//                        userLevel, userCreatedAt, userUpdatedAt));
//                System.out.println("nhận đúng");
//            }
//        } catch (SQLException e) {
//            System.out.println("nhận sai ");
//            e.printStackTrace();
//        }
        System.out.println("trả list thành công");
        return userList;
    }

    @Override
    public List<Account> findUserByEmail(String email) {
        return null;
    }

    @Override
    public boolean existsUser(String user) {
        return false;
    }

    @Override
    public boolean create(Account account) {
        return false;
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
