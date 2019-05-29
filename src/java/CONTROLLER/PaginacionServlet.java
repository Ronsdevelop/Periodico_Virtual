package CONTROLLER;

import DAO.Conexion;
import DAO.NoticiaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.table.DefaultTableModel;

@WebServlet(name = "PaginacionServlet", urlPatterns = {"/PaginacionServlet"})
public class PaginacionServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
                        throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            int cod = Integer.parseInt(request.getParameter("page"));
            int cantidapa = (cod - 1)* 6;
            NoticiaDAO c = new NoticiaDAO();
            DefaultTableModel t = new DefaultTableModel();
            t = c.paginacionNoticia(Conexion.conectar(), cantidapa);

            if (t.getRowCount() > 0) {
                for (int j = 0; j < t.getRowCount(); j++) {
                    out.print("<li class='col-lg-4'>");
                    out.print("<div class='item'>");
                    out.print("<img class='img-fluid mx-auto d-block' src='' width='100' height='100' />");
                    out.print("<h3>" + t.getValueAt(j, 2) + "</h3>");
                    out.print("<p class='description_short'>" + t.getValueAt(j, 3) + "</p>");
                    out.print("<p class='price'> EUR</p>");
                    out.print("<p><a class='btn btn-primary link_rewrite mx-auto d-block' href='../vistas/noticia.jsp' target='_blank'><i class='fa fa-eye'></i> Ver</a></p>");
                    out.print("</div>");
                    out.print("</li>");

                }

            }

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
