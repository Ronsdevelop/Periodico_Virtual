/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Richard
 */
public class UsuarioDao {
    
    public static boolean RegistrarUsuario(MODEL.Usuario U) {
        Connection con = Conexion.conectar();
        try {
         
            PreparedStatement sp = con.prepareStatement("{CALL sp_registraUsuario(?,?,?,?,?)}");
            sp.setString(1, U.getNombres());
            sp.setString(2, U.getApellidos());
            sp.setString(3, U.getEmail());
            sp.setString(4, U.getUser());
            sp.setString(5, U.getPass());

            if (sp.executeUpdate() > 0) {

                return true;

            } else {
                return false;
            }

        } catch (SQLException e) {
            return false;
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
