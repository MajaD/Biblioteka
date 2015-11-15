<%-- 
    Document   : EditBook
    Created on : 2015-11-15, 22:49:20
    Author     : Maja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edycja</title>
    </head>
    <body>
        <h1>Edycja ksiązki</h1>
        <div style="width: 900px; margin-left: auto; margin-right:auto">
            <form action="JSP/ManagerAddNew.jsp" method="post">
                Tytul:<br>
                <input type="text" name="title" style="width: 200px"><br>
                Gatunek:<br>
                <select name="category">
                    <option value="Horror">Horror</option>
                    <option value="Romans">Romans</option>
                    <option value="Thriller">Thriller</option>
                    <option value="Comedy">Komedia</option>
                </select><br>
                Wydawnictwo:<br>
                <input type="text" name="publishinghouse" style="width: 200px"><br>
                Data Wydania:<br>
                <input type="text" name="dateofpublishing" style="width: 200px"><br>
                Opis:<br>
                <textarea name="description" style="width: 400px; height: 200px"></textarea><br>
                 Ocena:<br>
                <select name="rate">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select><br>
                <input type="submit" value="Edytuj">
            </form>
        </div>
    </body>
</html>
