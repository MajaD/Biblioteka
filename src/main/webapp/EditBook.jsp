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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <title>Edycja</title>
    </head>
    <body>
        <jsp:useBean id="getById" class="model.Book" scope="request" />
        <div class="container">
            <div class="row">
                <h1>Edytuj książkę <%= getById.getTitle() %></h1>
            </div>


            <div class="row">
                     <form role="form" action="JSP/ManagerEdit.jsp" method="post">


                         <input type="hidden" name="id" value="<%= getById.getId()%>" >


                        <div class="form-group">
                            <label>Tytul:</label>
                            <input class="form-control" value="<%= getById.getTitle() %>" type="text" name="title" style="width: 200px">
                        </div>

                        <div class="form-group">
                            <label> Autor:</label>
                            <input class="form-control" value="<%= getById.getAuthor()%>" type="text" name="author" style="width: 200px">
                        </div>

                        <div class="form-group" style="width: 200px">
                            <label> Gatunek:</label>
                            <select class="form-control" name="category">
                                <option value="<%= getById.getCategory()%>"><%= getById.getCategory()%></option>
                                <option value="Horror">Horror</option>
                                <option value="Romans">Romans</option>
                                <option value="Thriller">Thriller</option>
                                <option value="Comedy">Komedia</option>
                                <option value="Adventure">Przygodowy</option>
                                <option value="Fantasy">Fantastyka</option>
                            </select>
                        </div>

                        <div class="form-group">        
                            <label> Wydawnictwo:</label>
                            <input class="form-control" value="<%= getById.getPublishingHouse()%>" type="text" name="publishinghouse" style="width: 200px">
                        </div>

                        <div class="form-group">        
                            <label>Opis:</label>
                            <textarea class="form-control"  name="description" style="width: 400px; height: 200px"><%= getById.getDescription()%></textarea>
                        </div>

                        <div class="form-group" style="width: 200px">       
                            <label>Ocena:</label>
                            <select class="form-control" name="rate">
                                <option value="<%= getById.getRate()%>"><%= getById.getRate()%></option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Rok Wydania:</label>
                            <input class="form-control" value="<%= getById.getDateOfPublishing()%>" type="text" name="dateofpublishing" style="width: 200px">
                        </div>

                        <div class="form-group">
                            <label>Data Wyporzyczenia:</label>
                            <input class="form-control" value="<%= getById.getDateOfHire()%>" type="text" name="dateofhire" style="width: 200px">
                        </div>

                        <div class="form-group">
                            <label>
                                Na stanie: <input type="checkbox" checked="<%= getById.getDateOfHire()%>" name="rent">
                            </label>
                        </div>

                        <button class="btn btn-warning" type="submit">Edytuj</button>
                    </form>

            </div>
        </div>
    </body>
</html>
