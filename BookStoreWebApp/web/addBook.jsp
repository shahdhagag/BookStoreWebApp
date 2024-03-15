<%-- 
    Document   : addBook.jsp
    Created on : Mar 15, 2024, 12:45:22 AM
    Author     : dell
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Book</title>
</head>
<body>
    <h1>Add a Book</h1>
    <form action="AddBookServlet" method="post">
        ID: <input type="text" name="id" /><br/>
        Title: <input type="text" name="title" /><br/>
        Author: <input type="text" name="author" /><br/>
        <input type="submit" value="Add Book" />
    </form>
</body>
</html>
