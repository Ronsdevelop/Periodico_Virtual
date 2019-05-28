/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import MODEL.TipoUsuarios;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Rony
 */
public class TipouserDAO {
    
        public static ArrayList<TipoUsuarios> ListaTiposUser() {
        Connection con = Conexion.conectar();
        try {
            String SQL = "select * from tipousuarios";

            PreparedStatement st = con.prepareCall(SQL);
            ResultSet resultado = st.executeQuery();
            ArrayList<TipoUsuarios> lista = new ArrayList<>();
            TipoUsuarios TipE;
            while (resultado.next()) {
                TipE = new TipoUsuarios();
                TipE.setIdtipUser(resultado.getString("idtipoUsuarios"));
                TipE.setTipoUser(resultado.getString("tipoUsuarios"));
                TipE.setDescripcion(resultado.getString("descripcion"));

                lista.add(TipE);
            }
            return lista;
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
