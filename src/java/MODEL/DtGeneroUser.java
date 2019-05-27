/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MODEL;

import java.io.Serializable;

/**
 *
 * @author Rony
 */
public class DtGeneroUser implements Serializable{
    private String idGenero;
    private String idUser;

    public DtGeneroUser() {
    }

    public DtGeneroUser(String idGenero, String idUser) {
        this.idGenero = idGenero;
        this.idUser = idUser;
    }

    public String getIdGenero() {
        return idGenero;
    }

    public void setIdGenero(String idGenero) {
        this.idGenero = idGenero;
    }

    public String getIdUser() {
        return idUser;
    }

    public void setIdUser(String idUser) {
        this.idUser = idUser;
    }
    
}
