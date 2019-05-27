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
public class TipoUsuarios implements Serializable{
    private String idtipUser;
    private String tipoUser;
    private String Descripcion;

    public TipoUsuarios() {
    }

    public TipoUsuarios(String idtipUser, String tipoUser, String Descripcion) {
        this.idtipUser = idtipUser;
        this.tipoUser = tipoUser;
        this.Descripcion = Descripcion;
    }

    public String getIdtipUser() {
        return idtipUser;
    }

    public void setIdtipUser(String idtipUser) {
        this.idtipUser = idtipUser;
    }

    public String getTipoUser() {
        return tipoUser;
    }

    public void setTipoUser(String tipoUser) {
        this.tipoUser = tipoUser;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }
    
    
}
