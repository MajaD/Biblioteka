<%-- 
    Document   : allBooksView
    Created on : 2015-11-13, 18:57:45
    Author     : Maja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista wszystkich książek</title>
    </head>
    <body>
        <div style="width: 1200px; margin-left: auto; margin-right: auto">
        <h1>Lista wszystkich książek</h1>
        <table cellpadding="10">
            <tr>
                <th>Id</th>
                <th>Tytuł</th>
                <th>Autor</th>
                <th>Gatunek</th>
                <th>Wydawnictwo</th>
                <th>Rok wydania</th>
                <th>Ocena</th>
                <th>Opis</th>
                <th>Na stanie</th>
                <th>Data wypożyczenia</th> 
            </tr>
            <c:forEach items="${allBooksView}" var="p">
                <tr>
                    <td>${p.id}</td>
                    <td>${p.title}</td>
                   <!-- <td>${p.author}</td> -->
                    <td>${p.category}</td>
                    <td>${p.publishingHouse}</td>
                    <td>${p.dateOfPublishing}</td>
                    <td>${p.rate}</td>
                    <td>${p.description}</td>
                    <td>${p.rent}</td>
                    <td>${p.dateOfHire}</td>
                    <td>
                        <a href="edit?id=${p.id}">Edytuj</a>
                        <a href="delete?id=${p.id}">Usuń</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        </div>
    </body>
</html>
