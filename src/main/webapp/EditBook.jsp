<%-- 
    Document   : EditBook
    Created on : 2015-11-15, 22:49:20
    Author     : Maja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edycja</title>
    </head>
    <body>
        <h1>Edycja ksiązki</h1>
        <div style="width: 900px; margin-left: auto; margin-right:auto">
            <c:forEach items="${getById}" var="p">
            <form action="JSP/ManagerEdit.jsp" method="post">
                <input type="hidden" name ="id" value="${p.id}">
                Tytul:<br>
                <input type="text" value="${p.title}" name="title" style="width: 200px"><br>
                Gatunek:<br>
                <select name="category">
                    <option value="${p.category}">${p.category}</option>
                    <option value="Horror">Horror</option>
                    <option value="Romans">Romans</option>
                    <option value="Thriller">Thriller</option>
                    <option value="Comedy">Komedia</option>
                </select><br>
                Wydawnictwo:<br>
                <input type="text"  value="${p.publishingHouse}" name="publishinghouse" style="width: 200px"><br>
               
                Opis:<br>
                <textarea name="description" style="width: 400px; height: 200px">${p.description}</textarea><br>
                 Ocena:<br>
                <select name="rate">
                    <option value="${p.rate}">${p.rate}</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select><br>
                 Data Wydania:<br>
                <input type="text" value="${p.dateOfPublishing}" name="dateofpublishing" style="width: 200px"><br>
                
                 Data Wyporzyczenia:<br>
                <input type="text" value="${p.dateOfHire}" name="dateofhire" style="width: 200px"><br>
                
                Na stanie:<br>
                <input type="checkbox" value ="${p.rent}" name="rent"><br>
                
                <input type="submit" value="Edytuj">
            </form>
           </c:forEach>
        </div>
    </body>
</html>
