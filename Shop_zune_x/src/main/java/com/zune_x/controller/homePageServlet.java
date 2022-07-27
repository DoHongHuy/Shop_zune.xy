package com.zune_x.controller;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="homePageServlet", urlPatterns = "/homePage")
public class homePageServlet extends HttpServlet {
    @Override
    public void init() throws ServletException {
        super.init();
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
            resp.setContentType("text/html/charset=UTF-8");
            req.setCharacterEncoding("UTF-8");
            RequestDispatcher dispatcher = req.getRequestDispatcher("WEB-INF/cp/index.jsp");
            dispatcher.forward(req, resp);
        }
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html/charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");

    }
}




























