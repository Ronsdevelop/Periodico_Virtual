/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import MODEL.Noticia;
import java.sql.CallableStatement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Rony
 */
public class NoticiaDAO {
    
     private CallableStatement cs;
    private ResultSet rs;
    
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
    
  public static int CantNoticias() {
        Connection con = Conexion.conectar();
        try {
            String SQL = "SELECT COUNT(*) AS total_noticias FROM noticia";

            PreparedStatement st = con.prepareStatement(SQL);
            ResultSet resultado = st.executeQuery();
            while (resultado.next()) {
              
                return resultado.getInt("total_noticias");
            }
           
            return 0;
        } catch (Exception e) {
            return 0;
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                }
            }
        }

    }
  
      public DefaultTableModel ListaNews(Connection cn){
        try {
           DefaultTableModel tb;
           String [] Columnas = {"idNoticia","anteTitulo","Titular","Entradilla","CuerpoNoticia","subtitulo","fecha","fuente","fotografia","epigrafe","video","idRedactor","idDiario"};
           cs = cn.prepareCall("CALL sp_paginacionprimer();");
           cn.setAutoCommit(false);
           rs = cs.executeQuery();
           tb = new DefaultTableModel(null,Columnas);
            while (rs.next()) {
                Object []dato = new Object[13];
                for (int i = 0; i < 13; i++) {
                    dato[i] = rs.getString(i+1);
                    
                }
                tb.addRow(dato);
                
            }
            cn.close();
            return tb;
            
        } catch (Exception e) {
            return null;
        }
        
        
    }
      public DefaultTableModel paginacionNoticia(Connection cn, int ini){
        try {
           DefaultTableModel tb;
           String [] Columnas = {"idNoticia","anteTitulo","Titular","Entradilla","CuerpoNoticia","subtitulo","fecha","fuente","fotografia","epigrafe","video","idRedactor","idDiario"};
           cs = cn.prepareCall("CALL sp_paginacionNoticias(?);");
           cs.setInt(1, ini);
           cn.setAutoCommit(false);
           rs = cs.executeQuery();
           tb = new DefaultTableModel(null,Columnas);
            while (rs.next()) {
                Object []dato = new Object[13];
                for (int i = 0; i < 13; i++) {
                    dato[i] = rs.getString(i+1);
                    
                }
                tb.addRow(dato);
                
            }
            cn.close();
            return tb;
            
        } catch (Exception e) {
            return null;
        }
        
        
    }

}
