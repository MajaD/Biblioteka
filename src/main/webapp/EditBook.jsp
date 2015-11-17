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
        <div class="container">
            <div class="row">
                <h1>Edytuj książkę</h1>
            </div>


            <div class="row">
                <c:forEach items="${getById}" var="p">
                     <form role="form" action="JSP/ManagerEdit.jsp" method="post">


                        <input type="hidden" name="id" value="${p.id}" >


                        <div class="form-group">
                            <label>Tytul:</label>
                            <input class="form-control" value="${p.title}" type="text" name="title" style="width: 200px">
                        </div>

                        <div class="form-group">
                            <label> Autor:</label>
                            <input class="form-control" value="${p.author}" type="text" name="author" style="width: 200px">
                        </div>

                        <div class="form-group" style="width: 200px">
                            <label> Gatunek:</label>
                            <select class="form-control" name="category">
                                <option value="${p.category}">${p.category}</option>
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
                            <input class="form-control" value="${p.publishingHouse}" type="text" name="publishinghouse" style="width: 200px">
                        </div>

                        <div class="form-group">        
                            <label>Opis:</label>
                            <textarea class="form-control"  name="description" style="width: 400px; height: 200px">${p.description}</textarea>
                        </div>

                        <div class="form-group" style="width: 200px">       
                            <label>Ocena:</label>
                            <select class="form-control" name="rate">
                                <option value="${p.rate}">${p.rate}</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Rok Wydania:</label>
                            <input class="form-control" value="${p.dateOfPublishing}" type="text" name="dateofpublishing" style="width: 200px">
                        </div>

                        <div class="form-group">
                            <label>Data Wyporzyczenia:</label>
                            <input class="form-control" value="${p.dateOfHire}" type="text" name="dateofhire" style="width: 200px">
                        </div>

                        <div class="form-group">
                            <label>
                                Na stanie: <input type="checkbox" checked="${p.rent}" name="rent">
                            </label>
                        </div>

                        <button class="btn btn-warning" type="submit">Edytuj</button>
                    </form>
                </c:forEach>

            </div>
        </div>


        <%--<h1>Edycja ksiązki</h1>
        <div style="width: 900px; margin-left: auto; margin-right:auto">
            <c:forEach items="${getById}" var="p">
            <form action="JSP/ManagerEdit.jsp" method="post">
                <input type="hidden" name ="id" value="${p.id}">
                Tytul:<br>
                <input type="text" value="${p.title}" name="title" style="width: 200px"><br>
                Autor:<br>
                <input type="text" value="${p.author}" name="author" style="width: 200px"><br>
                Gatunek:<br>
                <select name="category">
                    <option value="${p.category}">${p.category}</option>
                    <option value="Horror">Horror</option>
                    <option value="Romans">Romans</option>
                    <option value="Thriller">Thriller</option>
                    <option value="Comedy">Komedia</option>
                    <option value="Adventure">Przygodowy</option>
                    <option value="Fantasy">Fantastyka</option>
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
                <input type="checkbox" checked="${p.rent}" name="rent"><br>
                
                <input type="submit" value="Edytuj">
            </form>
           </c:forEach>
            
                            
        </div>--%>

    </body>
</html>
