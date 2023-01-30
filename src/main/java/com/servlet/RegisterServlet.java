package com.servlet;

import base.database.AutoCommitDatabaseFactory;
import base.database.CollectionOfDatabase;
import com.database.Database;
import com.entities.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        System.out.println("servlet:");
        System.out.println(username);
        System.out.println(password);

        User user = new User(username, password);

        Database.getUserCollectionInstance().addEntry(user);

        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}
