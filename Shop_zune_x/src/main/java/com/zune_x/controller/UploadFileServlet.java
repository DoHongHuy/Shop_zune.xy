package com.zune_x.controller;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;

@WebServlet(name = "UploadFileServlet", urlPatterns = "/UploadFileServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 50, // 50MB
        maxRequestSize = 1024 * 1024 * 50) // 50MB
public class UploadFileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/index.jsp");
        dispatcher.forward(req,resp);
    }

    public final static String URL_IMAGE = "E:\\Shop_zune_x\\src\\webappp\\images\\ ";

    private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, IOException {
        for (Part part : request.getParts()) {
            System.out.println(part.getContentType());
            System.out.println(this.getServletContext().getRealPath("/"));
            System.out.println(part.getName());
            String fileName = extractFileName(part);
            // refines the fileName in case it is an absolute path
            fileName = new File(fileName).getName();
            String servletRealPath  = this.getServletContext().getRealPath("/") + "\\imgges" +  fileName ;
            System.out.println("teen cuar file ne" + fileName);
            System.out.println("servletRealPath" + servletRealPath );
        part.write(servletRealPath);
        }
        System.out.println("link nằm ở" +getServletContext().getRealPath("/"));
        request.setAttribute("message", "Upload File Success!");
        getServletContext().getRequestDispatcher("/result.jsp").forward(request, response);
    }
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                System.out.println(s);
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
    public File getFolderUpload() {
        File folderUpload = new File(URL_IMAGE + "/Shop_zune_x");
        if (!folderUpload.exists()) {
            folderUpload.mkdirs();
        }
        System.out.println(folderUpload );
        return folderUpload;
    }
}
















