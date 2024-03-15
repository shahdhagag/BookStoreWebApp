/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.util.*;

public class AddBookServlet extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String title = request.getParameter("title");
        String author = request.getParameter("author");

        Book book = new Book(id, title, author);

        List<Book> books = (List<Book>) getServletContext().getAttribute("books");
        if (books == null) {
            books = new ArrayList<>();
        }
        books.add(book);
        getServletContext().setAttribute("books", books);

        response.sendRedirect("listBooks.jsp");
    }
}
