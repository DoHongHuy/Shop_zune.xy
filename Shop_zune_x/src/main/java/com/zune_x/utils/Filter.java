//package com.zune_x.utils;//package com.og.utils;
//
//import javax.servlet.FilterChain;
//import javax.servlet.ServletException;
//import javax.servlet.ServletRequest;
//import javax.servlet.ServletResponse;
//import javax.servlet.annotation.WebFilter;
//import javax.servlet.http.HttpFilter;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//
//
//@WebFilter(urlPatterns = "/*")
//public class Filter extends HttpFilter {
//    public Filter() {
//        super();
//    }
//
//    @Override
//    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
//        HttpServletRequest req = (HttpServletRequest) request;
//        HttpServletResponse res = (HttpServletResponse) response;
//        res.setCharacterEncoding("UTF-8");
//
//        res.setContentType("text/html/charset=UTF-8");
//        req.setCharacterEncoding("UTF-8");
//        res.setCharacterEncoding("UTF-8");
//
//     String pathInfo = req.getPathInfo();
//     String pathServlet = req.getServletPath();
//     String pathUrl = req.getRequestURI();
//        System.out.println("pathInfo" + pathInfo);
//        System.out.println("pathServlet" + pathServlet);
//        System.out.println("pathUrl" + pathUrl);
//
//
//        chain.doFilter(req,res);
//
//    }
//}
