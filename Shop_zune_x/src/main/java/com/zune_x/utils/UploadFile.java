package com.zune_x.utils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;
import java.io.IOException;
import java.util.UUID;

public class UploadFile {
    public final static String URL_IMAGE = "C:\\DEV\\images\\";

    private static String extractFileName(Part part) {
        String contenDisp = part.getHeader("content-disposition");
        String[] items = contenDisp.split(";");

        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.lastIndexOf("."), s.length() - 1);
            }
        }
        return "";
    }

    public static String uploadImagesServer(HttpServletRequest req) throws ServletException, IOException {
        String fileName = UUID.randomUUID().toString();
        String fileName2 = URL_IMAGE +  fileName;
        System.out.println(fileName2);
        for (Part part : req.getParts()) {
            part.write(fileName2 + extractFileName(part));
            fileName += extractFileName(part);
        }
        System.out.println(fileName);
        return fileName;
    }
    public static boolean checkFile(HttpServletRequest request) throws ServletException, IOException {
        boolean check = false;
        for (Part part : request.getParts()){
            if (part.getName().equals("file") && part.getSize() == 0 ){
                check = true;
            }
        }
        return check;
    }
    public static boolean checkNoFile(HttpServletRequest request) throws ServletException, IOException {
        boolean check = false;
        for (Part part : request.getParts()){
            if(part.getContentType()!=null && part.getContentType().startsWith("image")) {
                check = true;
            }
        }
        return check;
    }
}
