<%-- 
    Document   : listBooks.jsp
    Created on : Mar 15, 2024, 12:45:40 AM
    Author     : dell
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Books</title>
</head>
<body>
    <h1>List of Books</h1>
    <ul>
        <% 
            List<Book> books = (List<Book>) application.getAttribute("books");
            if (books != null) {
                for (Book book : books) {
        %>
        <li><%= book.getId() %> - <%= book.getTitle() %> by <%= book.getAuthor() %></li>
        <%
                }
            }
        %>
    </ul>
    <p><a href="addBook.jsp">Add Another Book</a></p>
    <form action="CloneBookServlet" method="post">
        ID to clone: <input type="text" name="id" />
        <input type="submit" value="Clone Book" />
    </form>
</body>
</html>
