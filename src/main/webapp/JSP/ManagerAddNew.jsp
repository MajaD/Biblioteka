<%-- 
    Document   : ManagerAddNew
    Created on : 2015-11-12, 23:01:05
    Author     : Maja
--%>

<%@page import="dataAccess.DataAccess"%>
<%@page import="model.Book"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menadżer dodania ksiązki</title>
    </head>
    <body>
        <%
            
            String title = request.getParameter("title");
            String author = request.getParameter("author");
            Date dateTemp = new Date(System.currentTimeMillis());
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/mm/dd");
            String date = dateFormat.format(dateTemp.getTime());
            
            String description = request.getParameter("description");
            String category = request.getParameter("category");
            String publishinghouse = request.getParameter("publishinghouse");
            String dateofpublishing = request.getParameter("dateofpublishing");
            String tempRate = request.getParameter("rate");
            int rate = Integer.parseInt(tempRate);
            String dateofhire = request.getParameter("dateofhire");
            boolean rent = request.getParameter("rent") !=null;
            
            Book b = new Book(dataAccess.DataAccess.IdCounter, title, author, category, publishinghouse, description, rate, dateofpublishing, dateofhire, rent);
            DataAccess dataa = new DataAccess();
            dataa.addBook(b);
            
            response.sendRedirect("/Biblioteka/allBooksView");
        %>  
    </body>
</html>
