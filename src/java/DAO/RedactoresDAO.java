/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import MODEL.Redactor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Rony
 */
public class RedactoresDAO {

    public static ArrayList<Redactor> ListaRedactores() {
        Connection con = Conexion.conectar();
        try {
            String SQL = "select * from redactor";

            PreparedStatement ps = con.prepareCall(SQL);
            ResultSet resultado = ps.executeQuery();
            ArrayList<Redactor> Lista = new ArrayList<>();
            Redactor reda;
            while (resultado.next()) {
                reda= new Redactor();
                reda.setIdRedactor(resultado.getString("idRedactor"));
                reda.setNombres(resultado.getString("nombre"));
                reda.setApellidos(resultado.getString("Apellido"));
                reda.setDireccion(resultado.getString("direccion"));
                reda.setUser(resultado.getString("user"));
                reda.setPass(resultado.getString("pass"));
                reda.setEmail(resultado.getString("email"));
                reda.setFono(resultado.getString("fono"));
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
