/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import com.mysql.jdbc.Connection;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Rony
 */
public class DeportesDao {
    private CallableStatement cs;
    private ResultSet rs;
    
    public DefaultTableModel ListaGeneros(Connection cn){
        try {
           DefaultTableModel tb;
           String [] Columnas = {"idGenero","Genero","Descripcion"};
           cs = cn.prepareCall("select idGenero, Genero, Descripcion from genero");
           cn.setAutoCommit(false);
           rs = cs.executeQuery();
           tb = new DefaultTableModel(null,Columnas);
            while (rs.next()) {
                Object []dato = new Object[3];
                for (int i = 0; i < 3; i++) {
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
