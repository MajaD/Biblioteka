<%-- 
    Document   : ManagerEdit
    Created on : 2015-11-15, 22:58:45
    Author     : Maja
--%>

<%@page import="dataAccess.DataAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menadżer edycji</title>
    </head>
    <body>
        <%
            String idPom = request.getParameter("id");
            int id = Integer.parseInt(idPom);
            String title = request.getParameter("title");
            String author = request.getParameter("author");
            String description = request.getParameter("description");
            String category = request.getParameter("category");
            String publishinghouse = request.getParameter("publishinghouse");
            String dateofpublishing = request.getParameter("dateofpublishing");
            String tempRate = request.getParameter("rate");
            int rate = Integer.parseInt(tempRate);
            String dateofhire = request.getParameter("dateofhire");
            boolean rent = request.getParameter("rent") !=null;
            
            DataAccess da = new DataAccess();
            da.edit(id, title, author, category, publishinghouse, description, rate, dateofpublishing, dateofhire, rent);
            
            response.sendRedirect("/Biblioteka/allBooksView");
        %>
    </body>
</html>
