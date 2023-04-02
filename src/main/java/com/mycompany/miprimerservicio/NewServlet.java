/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.miprimerservicio;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet(name = "NewServlet", urlPatterns = {"/NewServlet"})
public class NewServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/", "root", "root");
            
            
            Statement stm= con.createStatement();
            ResultSet rs = stm.executeQuery("select * from login where email='"+email+"' and password='"+password+"'");
            if(rs.next()){
                //SE INICIO SESION CORRECTAMENTE
            response.sendRedirect("index.jsp");
            }else{ //CONTRASEñA INCORRECTA
                out.println("gggg menso");
            }
                //AQUI CERRAMOS LA CONEXION
            con.close();
            
        }catch (Exception e){
            System.out.println(e.getMessage());
            
        }
        
        
    }


}
