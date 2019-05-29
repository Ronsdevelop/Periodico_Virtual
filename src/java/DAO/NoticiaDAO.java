/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import MODEL.Noticia;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Rony
 */
public class NoticiaDAO {
    
    public static ArrayList<Noticia> ListaNoticias() {
        Connection con = Conexion.conectar();
        try {
            String SQL = "select * from noticia";

            PreparedStatement ps = con.prepareCall(SQL);
            ResultSet resultado = ps.executeQuery();
            ArrayList<Noticia> Lista = new ArrayList<>();
            Noticia reda;
            while (resultado.next()) {
                reda = new Noticia();
                reda.setIdNoticia(resultado.getString("idNoticia"));
                reda.setAnteTitulo(resultado.getString("anteTitulo"));
                reda.setTitular(resultado.getString("Titular"));
                reda.setEntradilla(resultado.getString("Entradilla"));
                reda.setCuerpoNoticia(resultado.getString("CuerpoNoticia"));
                reda.setSubtitulo(resultado.getString("subtitulo"));
                reda.setFecha(resultado.getString("fecha"));
                reda.setFuente(resultado.getString("fuente"));
                reda.setFotografia("fotografia");
                reda.setEpigrafi("epigrafe");
                reda.setVideo("video");
                reda.setIdRedactor("idRedactor");
                reda.setIdDiario("idDiario");
                Lista.add(reda);
            }
            con.close();
            return Lista;
        } catch (SQLException ex) {
            return null;
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                }
            }
        }
    }
    
}
