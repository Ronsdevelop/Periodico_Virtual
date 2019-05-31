/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLLER;

import DAO.Consultas;
import MODEL.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "IniciarSesionServlet", urlPatterns = {"/IniciarSesionServlet"})
public class IniciarSesionServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        try {

            Consultas C = new Consultas();
            String uss = request.getParameter("user");
            String pass = request.getParameter("password");
            Usuario us = C.getUsuario(uss, pass);

            if (us == null) {
                String session="Usuario y Contraseña Incorrecto";
                response.sendRedirect("index.jsp?session_err=" + URLEncoder.encode(session, "UTF-8"));
                
            } else {
                HttpSession session = request.getSession();
                session.setAttribute("user", uss);
                response.sendRedirect("vistas/home.jsp");
                
                java.util.Calendar fecha = java.util.Calendar.getInstance();
                String dia = (fecha.get(java.util.Calendar.DAY_OF_MONTH) + "");
                String mes = ((fecha.get(java.util.Calendar.MONTH) + 1) + "");
                String anio = (fecha.get(java.util.Calendar.YEAR) + "");
                if (Integer.parseInt(dia) < 10) {
                    dia = "0" + dia;
                }
                if (Integer.parseInt(mes) < 10) {
                    mes = "0" + mes;
                }
                String fechas = (dia + " / " + mes + " / " + anio);
                request.getSession().setAttribute("fechas", fechas);
            }
        } catch (SQLException ex) {
            Logger.getLogger(IniciarSesionServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
