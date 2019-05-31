/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import MODEL.Diario;
import com.mysql.jdbc.Connection;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Rony
 */
public class DiarioDAO {

    private CallableStatement cs;
    private ResultSet rs;

    public static int CantidadDiarios() {
        
      
        Connection con = Conexion.conectar();
        try {
            String sql = "SELECT COUNT(idDiario) AS cantidad FROM diario";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rse = ps.executeQuery();
            while (rse.next()) {
                return rse.getInt("cantidad");

            }
            return 0;
        } catch (Exception e) {
            return 0;
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {

                }
            }
        }

    }

    public DefaultTableModel ListadoDiarios(Connection cn) {
        try {
            DefaultTableModel dt;
            String[] columnas = {"idDiario", "Diario", "Descripcion", "idGenero", "logo"};
            cs = cn.prepareCall("select idDiario, Diario, Descripcion, idGenero, logo from diario");
            cn.setAutoCommit(false);
            rs = cs.executeQuery();
            dt = new DefaultTableModel(null, columnas);
            while (rs.next()) {
                Object[] dato = new Object[5];
                for (int i = 0; i < 5; i++) {
                    dato[i] = rs.getString(i + 1);

                }
                dt.addRow(dato);

            }
            cn.close();
            return dt;
        } catch (Exception e) {
            return null;
        }

    }

    public DefaultTableModel nombreDiario(Connection cn, String cod) {
        try {
            DefaultTableModel dt;
            String[] columnas = {"idDiario", "Diario"};
            cs = cn.prepareCall("SELECT idDiario, Diario FROM diario WHERE idDiario=?");
            cs.setString(1, cod);
            cn.setAutoCommit(false);
            rs = cs.executeQuery();
            dt = new DefaultTableModel(null, columnas);
            while (rs.next()) {
                Object[] dato = new Object[2];
                for (int i = 0; i < 2; i++) {
                    dato[i] = rs.getString(i + 1);

                }
                dt.addRow(dato);

            }
            cn.close();
            return dt;
        } catch (Exception e) {
            return null;
        }

    }

    public static boolean RegistrarDiario(Diario D) {
        Connection con = Conexion.conectar();
        try {
            PreparedStatement sp = con.prepareStatement("{call sp_ingresaDiario(?,?,?,?,?)}");
            sp.setString(1, D.getIdDiario());
            sp.setString(2, D.getDiario());
            sp.setString(3, D.getDescripcion());
            sp.setString(4, D.getIdGenero());
            sp.setString(5, D.getLogo());
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
    
    public static ArrayList<MODEL.Diario> listarDiario() {
        Connection con = Conexion.conectar();
        try {
            String SQL = "select * from diario";

            PreparedStatement st = con.prepareCall(SQL);
            ResultSet resultado = st.executeQuery();
            ArrayList<MODEL.Diario> listadiario = new ArrayList<>();
            MODEL.Diario dia;
            while (resultado.next()) {
                dia = new MODEL.Diario();
                dia.setIdDiario(resultado.getString(1));
                dia.setDiario(resultado.getString(2));
                dia.setDescripcion(resultado.getString(3));
                dia.setIdGenero(resultado.getString(4));
                dia.setLogo(resultado.getString(5));
                listadiario.add(dia);
            }

            return listadiario;
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
