package com.zune_x.controller;


import com.zune_x.model.Product;
import com.zune_x.service.CategoriesService;
import com.zune_x.service.CategoriesServiceImpl;
import com.zune_x.service.ProductService;
import com.zune_x.service.ProductServiceImpl;
import com.zune_x.utils.ValidateUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 50, // 50MB
        maxRequestSize = 1024 * 1024 * 50) // 50MB
@WebServlet(name = "productServlet", urlPatterns = "/products")
public class productServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private ProductService productService;
    private CategoriesService categoriesService;


    @Override
    public void init() throws ServletException {
        categoriesService = new CategoriesServiceImpl();
        productService = new ProductServiceImpl();

        if(this.getServletContext().getAttribute("listCategories")==null) {
            this.getServletContext().setAttribute("listCategories", categoriesService.selectAllCategories());
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html/charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");

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
        }
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "register":
//                showRegisterPage(req, resp);
                break;
            case "edit":
                showEditProductPage(req, resp);
                break;
            case "show":
                showListProductByID(req, resp);
                break;
            case "delete":
                doDeleteProduct(req, resp);
                break;
            case "create":
                showCreateProduct(req, resp);
                break;
            case "search":
                showProductPage(req, resp);
                break;
//            case "edit":
//                doProductEdit(req,resp);
            default:
                showProductPage(req, resp);
                break;
        }
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html/charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");

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
        }
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "edit":
                doUpdate(req, resp);
                break;
            case "delete":
                doDeleteProduct(req, resp);
                break;
            case "create":
                doCreateProduct(req, resp);
                break;
            default:
                showProductPage(req, resp);
                break;
        }
    }

    private void doDeleteProduct(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/cp/product/list.jsp");
        int id = Integer.parseInt(req.getParameter("id"))   ;
        System.out.println(id);
        productService.remove(id);

        List<Product> productList = productService.findAll();
        req.setAttribute("productList", productList);
        dispatcher.forward(req, resp);
    }

    private void doCreateProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        System.out.println(name + " name vs gia trij");
        Double price = Double.valueOf((request.getParameter("price").toString()));
        System.out.println("nhan dc gia sanr pham");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int idType = Integer.parseInt(request.getParameter("idType"));
        String information = request.getParameter("information");

        boolean success = false;
        System.out.println("ok eoi");
        List<String> error = new ArrayList<>();


        if (price > 100000000) {
            error.add("Giá cao quá, giảm giá lại ");
        }
        if (price < 10000) {
            error.add("Vui lòng tăng giá");
        }
        String checkPrice = String.valueOf(price);
        if (checkPrice.equals("")) {
            error.add("Vui lòng nhập giá" );
        }
        if (name.equals("")) {
            error.add("Tên không được để trống");
        }
        if (quantity > 1000){
            error.add("Giảm số lượng lại, số lượng phải bé hơn 1000 và lớn hơn 0");
        }
        String checkQuantity = String.valueOf(quantity);
        if (checkPrice.equals("")) {
            error.add("Bạn cần phải nhập số lượng");
        }
        if (quantity < 0){
            error.add("Giảm số lượng lại, số lượng phải bé hơn 1000 và lớn hơn 0");
        }
        if (idType < 0){
            error.add("Kiểu dữ liệu sai, vui lòng nhập lại");
        }
        String a = String.valueOf(idType);
        if (a.equals("")) {
            error.add("Bạn chưa chọn loại sản phẩm");
        }


        Product product = new Product(name, BigDecimal.valueOf(price), quantity, idType, information);
        for (Part part : request.getParts()) {
            System.out.println("Content type of Part" + part.getContentType());
            System.out.println("Name of Part" + part.getName());
            if (part.getName().equals("img")) {

                String fileName = extractFileName(part);
                if (fileName.equals("")) {
                    error.add("Vui lòng chọn ảnh");
                    continue;
                }
                System.out.println(fileName + "1");
                // refines the fileName in case it is an absolute path
                fileName = new File(fileName).getName();

                System.out.println(fileName + "2");
                //part.write(this.getFolderUpload().getAbsolutePath() + File.separator + fileName);

                part.write("E:\\Shop_zune_x\\src\\main\\webapp\\images\\" + fileName);
                String servletRealPath = this.getServletContext().getRealPath("/") + "\\images\\" + fileName;
                System.out.println("servletRealPath: " + servletRealPath);
                part.write(servletRealPath);

                product.setImg("images\\" + fileName);
            }
        }
        if (error.size() == 0) {
            success = true;
            productService.update(product);
            request.setAttribute("success", true);
        }
        if(error.size() > 0){
            request.setAttribute("errors", error);
            error.add("Dữ liệu không đúng, vui lòng kiểm tra lại!");
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/cp/product/createProduct.jsp");
        dispatcher.forward(request, response);
    }
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }


    private void showCreateProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/cp/product/createProduct.jsp");
            dispatcher.forward(request,response);

    }

    private void showProductPage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/cp/product/list.jsp");
        List<Product> productList = null;
        String key = "";
        String type = "";
        if (req.getParameter("search") != null) {
            key = req.getParameter("key");
            System.out.println(key + " key day ne");
            type = req.getParameter("type");
            System.out.println(type + " loại day ne");
            productList = productService.searchByKey(key , type);
        }
        else{
            productList = productService.findAll();
        }
//        if(req.getParameter("") != null){
//            productList = productService.findAll();
//        }
        req.setAttribute("productList", productList);

        dispatcher.forward(req,resp);
    }
    private void showEditProductPage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/cp/product/edit.jsp");
        String id = req.getParameter("id");
        Product product = (Product) productService.selectUser(Integer.parseInt(id));
        if (product != null) {
            req.setAttribute("product", product);
        }
        dispatcher.forward(req, resp);
    }
    private void doUpdate(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/cp/product/edit.jsp");

        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        System.out.println(name + " name vs gia trij");
        Double price = Double.valueOf((req.getParameter("price").toString()));
        System.out.println("nhan dc gia sanr pham");
        int quantity = Integer.parseInt(req.getParameter("quantity"));
        int idType = Integer.parseInt(req.getParameter("idType"));
        String information = req.getParameter("information");

        boolean success = false;
        System.out.println("ok eoi");
        List<String> error = new ArrayList<>();


        if (price > 100000000) {
            error.add("Giá cao quá, giảm giá lại ");
        }
        if (price < 10000) {
            error.add("Vui lòng tăng giá");
        }
        String checkPrice = String.valueOf(price);
        if (checkPrice.equals("")) {
            error.add("Vui lòng nhập giá" );
        }
        if (name.equals("")) {
            error.add("Tên không được để trống");
        }
        if (quantity > 1000){
            error.add("Giảm số lượng lại, số lượng phải bé hơn 1000 và lớn hơn 0");
        }
        String checkQuantity = String.valueOf(quantity);
        if (checkPrice.equals("")) {
            error.add("Bạn cần phải nhập số lượng");
        }
        if (quantity < 0){
            error.add("Giảm số lượng lại, số lượng phải bé hơn 1000 và lớn hơn 0");
        }
        if (idType < 0){
            error.add("Kiểu dữ liệu sai, vui lòng nhập lại");
        }
        String a = String.valueOf(idType);
        if (a.equals("")) {
            error.add("Bạn chưa chọn loại sản phẩm");
        }
        Product product = new Product(id,name, BigDecimal.valueOf(price), quantity, idType, information);
        for (Part part : req.getParts()) {
            System.out.println("Content type of Part" + part.getContentType());
            System.out.println("Name of Part" + part.getName());
            if (part.getName().equals("img")) {

                String fileName = extractFileName(part);
                System.out.println(fileName + "1");
                // refines the fileName in case it is an absolute path
                fileName = new File(fileName).getName();

                System.out.println(fileName + "2");
                //part.write(this.getFolderUpload().getAbsolutePath() + File.separator + fileName);

                part.write("E:\\Shop_zune_x\\src\\main\\webapp\\images\\" + fileName);
                String servletRealPath = this.getServletContext().getRealPath("/") + "\\images\\" + fileName;
                System.out.println("servletRealPath: " + servletRealPath);
                part.write(servletRealPath);
                System.out.println(fileName + "Dây la file năme");
                product.setImg("images\\" + fileName);
            }

        }


            if (error.size() == 0) {
                productService.update(product);
                success = productService.update(product);
                if (success) {
                    req.setAttribute("success", true);
                } else {
                    req.setAttribute("errors", false);
                    error.add("Dữ liệu không đúng, vui lòng kiểm tra lại!");
                }
            }
        if (error.size() > 0) {
            req.setAttribute("errors", error);
        }
            dispatcher.forward(req, resp);


    }
    private void showListProductByID(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/cp/product/showWhere.jsp");
        dispatcher.forward(req, resp);
    }


}
