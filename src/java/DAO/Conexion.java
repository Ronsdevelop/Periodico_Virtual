/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Rony
 */
public class Conexion {
     public static Connection conectar()
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/bdperiodicovirtual?zeroDateTimeBehavior=convertToNull","root","");
        } catch (ClassNotFoundException  ex) {
            return null;
        }catch(SQLException ex){
            return null; 
        }
    }
 
 

}
