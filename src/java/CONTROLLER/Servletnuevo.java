/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLLER;

import MODEL.Diario;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Richard
 */
@WebServlet(name = "Servletnuevo", urlPatterns = {"/Servletnuevo"})
@MultipartConfig
public class Servletnuevo extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      String cod = request.getParameter("cod");
        String nom = request.getParameter("nom");
        String des = request.getParameter("des");
        String gen = request.getParameter("gen");
        Part arch = request.getPart("archivo");
        String type=""+arch.getContentType();
       if ("image/jpeg".equals(type) || "image/jpg".equals(type) ||"image/gif".equals(type) ||"image/png".equals(type)){
        InputStream is = arch.getInputStream();
        File f = new File("D:/Documentos/NetBeansProjects/SSPeriodicoVirtual/web/Plugins/dist/img/" + arch.getSubmittedFileName());
        FileOutputStream ous = new FileOutputStream(f);

        int dato = is.read();
        while (dato != (-1)) {            
            ous.write(dato);
            dato=is.read();
        }
        ous.close();
        is.close();
        
        MODEL.Diario d = new Diario();
        d.setIdDiario(cod);
        d.setDiario(nom);
        d.setDescripcion(des);
        d.setIdGenero(gen);
        d.setLogo("../Plugins/dist/img/"+arch.getSubmittedFileName());
        DAO.DiarioDAO.RegistrarDiario(d);
        response.sendRedirect("vistas/vistaagregarimagen.jsp");
     }else{
                response.sendRedirect("vistas/vistaagregarimagen.jsp");
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
