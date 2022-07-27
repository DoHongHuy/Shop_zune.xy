package com.zune_x.controller;


import com.zune_x.model.Account;
import com.zune_x.service.AccountService;
import com.zune_x.service.AccountServiceImpl;
import com.zune_x.service.loginService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name= "accountServlet", urlPatterns = "/account ")
public class accountServlet extends HttpServlet {


        AccountService accountService;
    @Override
    public void init(ServletConfig config) throws ServletException {
        accountService= new AccountServiceImpl();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = "";
        Cookie[] cookies = null;

        // Get an array of Cookies associated with this domain
        cookies = req.getCookies();
        for (Cookie c : cookies) {
            if (c.getName().equals("userC")) {
                name = c.getName();
            }
        }
        if (name.equals("")) {
            resp.sendRedirect("/login");
        } else {
            String action = req.getParameter("action");

            if (action == null) {
                action = "";
            }
            switch (action) {
                case "list":
//                showAccountPage(req,resp);
                    break;
                case "edit":
                    break;
                case "create":
                    showCreateAccount(req,resp);
                    break;
                case "delete":
                    break;
                case "search":
                    break;
                default:
//                    showAccountPage(req, resp);
                    break;
            }
        }
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = "";
        Cookie[] cookies = null;

        // Get an array of Cookies associated with this domain
        cookies = req.getCookies();
        for (Cookie c : cookies) {
            if (c.getName().equals("userC")) {
                name = c.getName();
            }
        }
        if (name.equals("")) {
            resp.sendRedirect("/login");
        } else {
            String action = req.getParameter("action");

            if (action == null) {
                action = "";
            }
            switch (action) {
                case "list":
//                    DoAccountList(req, resp);
                    break;
                case "edit":
                    break;
                case "create":
                    doCreateAccount(req,resp);
                    break;
                case "delete":
                    break;
                case "search":
                    break;
                default:
//                    showAccountPage(req, resp);
                    break;
            }
        }
    }
    public void doCreateAccount(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            RequestDispatcher dispatcher = req.getRequestDispatcher("cp/userView/List.jsp");
        Account account;
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        int phone = Integer.parseInt(req.getParameter("phone"));
        LocalDate date = LocalDate.parse(req.getParameter("date"));
        String email = req.getParameter("email");
        String pass = req.getParameter("pass");
        LocalDate createdAt = java.time.LocalDate.now();
        LocalDate updatedAt = java.time.LocalDate.now();

        account = new Account(id,name, phone, date, email,  pass, createdAt ,updatedAt);
        boolean success = false;
        boolean exist = accountService.create(account);
        System.out.println("ok eoi");
        List<String> error = new ArrayList<>();

//        if()

//        if ( ) {
//            error.add("Giá quá thấp, vui lòng nhập giá vs số giá phải hơn 9k");
//        }
//        if (price > 100000000) {
//            error.add("Giá cao quá, giảm giá lại đi, nhỏ hơn 1 tỉ ");
//        }
//        if (price.equals("")) {
//            error.add("Vui lòng nhập giá");
//        }
//        if (name.equals("")) {
//            error.add("Tên không được để trống");
//        }
//
//        if (error.size() == 0) {
//            Product product = new Product(name, price, information,createdAt,updatedAt);
//            success = true;
        accountService.create(account);
//            req.setAttribute("success", true);
//            } else {
//                req.setAttribute("errors", true);
//                error.add("Dữ liệu không đúng, vui lòng kiểm tra lại!");
//            }
//        }
//        if (error.size() > 0) {
//            req.setAttribute("errors", error);
//            error.add("Dữ liệu không đúng, vui lòng kiểm tra lại!");
//        }
//        dispatcher.forward(req, resp);
            dispatcher.forward(req,resp);
    }
    public  void showCreateAccount(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("cp/userView/List.jsp");
        dispatcher.forward(req,resp);
    }
//    public void showAccountPage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        RequestDispatcher dispatcher = req.getRequestDispatcher("cp/userView/List.jsp");
//        List<Account> userList = loginService.findAll();
//        req.setAttribute("userList", userList);
//        dispatcher.forward(req,resp);
//    }
//    public void DoAccountList(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        RequestDispatcher dispatcher = req.getRequestDispatcher("cp/userView/List.jsp");
//        List<Account> userList = loginService.findAll();
//        req.setAttribute("userList", userList);
//        dispatcher.forward(req,resp);
//    }
}
