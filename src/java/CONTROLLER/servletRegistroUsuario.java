/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLLER;

import DAO.UsuarioDao;
import MODEL.Usuario;
import com.sun.imageio.plugins.common.I18N;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Richard
 */
@WebServlet(name = "servletRegistroUsuario", urlPatterns = {"/servletRegistroUsuario"})
public class servletRegistroUsuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet servletRegistroUsuario</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet servletRegistroUsuario at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nom");
        String apellido = request.getParameter("ape");
        String correo = request.getParameter("cor");
        String usuario = request.getParameter("usu");
        String password = request.getParameter("con");
        Usuario us = new Usuario();
        us.setNombres(nombre);
        us.setApellidos(apellido);
        us.setEmail(correo);
        us.setUser(usuario);
        us.setPass(password);
        String mss = "";
        UsuarioDao.RegistrarUsuario(us);
        if (UsuarioDao.RegistrarUsuario(us)) {
            mss = "Registrado Correctamente!";
            response.sendRedirect("vistas/registro.jsp?register_err=" + URLEncoder.encode(mss, "UTF-8"));
        } else {
            mss = "Error al Registrar Usuario";
            response.sendRedirect("vistas/registro.jsp?register_err=" + URLEncoder.encode(mss, "UTF-8"));
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
