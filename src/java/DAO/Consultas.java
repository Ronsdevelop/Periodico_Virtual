package DAO;

import MODEL.Usuario;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Consultas extends Conexion {

    private CallableStatement Cst;
    private ResultSet R;

    public Usuario getUsuario(String usser, String pass) throws SQLException {
        PreparedStatement pst = null;
        ResultSet rs = null;
        Connection con = Conexion.conectar();
        String consulta = "SELECT * FROM `usuarios` WHERE `user`= ? AND `pass`= ? AND  estado='1'";
        pst = con.prepareStatement(consulta);
        pst.setString(1, usser);
        pst.setString(2, pass);
        rs = pst.executeQuery();
        Usuario us = null;
        if (rs.next()) {
            us = new Usuario();
            us.setIdUser(rs.getString(1));
            us.setNombres(rs.getString(2));
            us.setApellidos(rs.getString(3));
            us.setIdTipo(rs.getString(7));
        }
        con.close();
        return us;
    }

}
