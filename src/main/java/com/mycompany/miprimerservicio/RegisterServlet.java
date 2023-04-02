/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.miprimerservicio;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import static java.sql.DriverManager.getConnection;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        String Usuario = request.getParameter("usuario");
        String Nombre = request.getParameter("Nombre");
        String Apellido = request.getParameter("apellido");
        String Fecha = request.getParameter("fechaNac");
        String Correo = request.getParameter("correo");
        String Contra = request.getParameter("contra");
        String Contra1 = request.getParameter("contra1");
        String Estado = request.getParameter("estado");
        String Fechamod = request.getParameter("fechamod");
        
        try {
            Connection con;
            
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(Contra);
            System.out.println("Connected");
            
            
            String sql= "insert into mydb.usuario (usuario, nombre, apellido, contra, correo, fechaNac )";
            PreparedStetement ps = (PreparedStetement) con.prepareStatement(sql);
            
            ps.executeUpdate();
            
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
            
        }catch (Exception e){
            System.out.println(e.getMessage());
            
        }
    }

    

}

