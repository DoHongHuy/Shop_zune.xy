package com.zune_x.controller;


import com.zune_x.model.Account;
import com.zune_x.service.AccountService;
import com.zune_x.service.AccountServiceImpl;
import com.zune_x.service.LoginServiceImpl;
import com.zune_x.utils.ValidateUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "loginServlet", urlPatterns = "/login")
public class loginServlet extends HttpServlet {
AccountService accountService;
    @Override
    public void init() throws ServletException {
        accountService = new AccountServiceImpl();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html/charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");

        if (action == null) {
            action = "";
        }
        switch (action) {
            case "register":
                showRegisterPage(req, resp);
                break;
            case "edit":
//                doUpdate(req, resp);
                break;
            case "delete":
//                doDeleteProduct(req, resp);
                break;
            default:
                showLoginPage(req, resp);
                break;
        }
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html/charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");

        if (action == null) {
            action = "";
        }
        switch (action) {
            case "register":
                doCreateAccount(req,resp);
                break;
            case "deleteCoki":
                deleteCoki(req,resp);
                break;
            case "delete":
                break;
            case "index":
                doLogin(req, resp);
                break;
            default:
                doLogin(req, resp);
                break;
        }
    }

    private void deleteCoki(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie[] cookies = req.getCookies();
        if (cookies != null)
            for (Cookie cookie : cookies) {
                cookie.setValue("");
                cookie.setPath("/");
                cookie.setMaxAge(0);
                resp.addCookie(cookie);
            }
        resp.sendRedirect("/");
    }


    private void showRegisterPage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("WEB-INF/cp/login/register.jsp");
        dispatcher.forward(req,resp);
    }

    private void showLoginPage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("WEB-INF/cp/login/loginAA.jsp");
        dispatcher.forward(req,resp);
    }
//    public void doCreateAccount(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        RequestDispatcher dispatcher = req.getRequestDispatcher("WEB-INF/cp/login/register.jsp");
//        dispatcher.forward(req,resp);
//    }
    private void doLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("WEB-INF/cp/login/loginAA.jsp");
        List<String> error = null;
        try {
            String user = req.getParameter("username");
            String pass = req.getParameter("password");
            LoginServiceImpl loginService = new LoginServiceImpl();
            Account check = loginService.checkLogin(user, pass);
            error = new ArrayList<>();
            System.out.println("vao ser servlet");
            if(user.equals("")){
                error.add("T??n t??i kho???n kh??ng ???????c d??? tr???ng");
            }
            if(pass.equals("")){
                error.add("M???t kh???u kh??ng ???????c ????? tr???ng");
            }
            if (check == null) {
                error.add("Sai t??n t??i kho???n ho???c m???t kh???u ");
                error.add("Vui l??ng ????ng nh???p l???i ");

                req.setAttribute("error", error);
                dispatcher.forward(req,resp);
            } else {
                HttpSession session = req.getSession();
                session.setAttribute("us", user);
                session.setAttribute("pw", pass);
                System.out.println(session.getAttribute("userC")+"D??y l?? session ");
                System.out.println(session.getAttribute("passC") +"D??y l?? session " );
                Cookie u = new Cookie("userC", user);
                Cookie p = new Cookie("passC", pass);
                u.setMaxAge(6000);
                p.setMaxAge(6000);
                System.out.println(u);
                System.out.println(p);
                resp.addCookie(u);
                resp.addCookie(p);
                resp.sendRedirect("homePage");
                System.out.println("????ng r???i");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (error.size() > 0) {
            req.setAttribute("error", error);
        }
    }
    public void doCreateAccount(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("WEB-INF/cp/login/register.jsp");
        Account account;
        String name = req.getParameter("name");
        int phone = Integer.parseInt(req.getParameter("phone"));
        LocalDate date = LocalDate.parse(req.getParameter("date"));
        String email = req.getParameter("email");
        String pass = req.getParameter("pass");
        System.out.println(pass+"pass");
        LocalDate createAt = java.time.LocalDate.now();
        LocalDate updatedAt = java.time.LocalDate.now();

        account = new Account(name, phone, date, email,  pass, createAt ,updatedAt);
        boolean success = false;
//        boolean exist = accountService.create(account);
        System.out.println("ok eoi");
        List<String> error = new ArrayList<>();

        boolean isPhon = ValidateUtils.isPhone(String.valueOf(phone));
        boolean isEmail = ValidateUtils.isEmail(email);

        if(name.length()==0 || name.length()> 200){
            error.add("B???n nh???p sai t??n vui l??ng nh???p t??n l???i");
        }
        if(!isPhon || phone < 99999999){
            error.add("Nh???p s??? ??i???n tho???i sai");
        }
        if(!isEmail){
            error.add("Nh???p sai email, vui l??ng nh???p l???i email");
        }


        if (error.size() == 0) {
            accountService.create(account);
            success = accountService.create(account);
            success = true;
            req.setAttribute("success", true);
            }

        if (error.size() > 0) {
            req.setAttribute("errors", error);
        }
        dispatcher.forward(req,resp);
    }
}
















