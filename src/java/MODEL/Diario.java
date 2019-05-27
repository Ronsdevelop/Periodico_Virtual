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
public class Diario implements Serializable{
 
    private String idDiario;
    private String Diario;
    private String Descripcion;
    private String idGenero;
    private String Logo;

    public Diario() {
    }

    public Diario(String idDiario, String Diario, String Descripcion, String idGenero, String Logo) {
        this.idDiario = idDiario;
        this.Diario = Diario;
        this.Descripcion = Descripcion;
        this.idGenero = idGenero;
        this.Logo = Logo;
    }

    public String getIdDiario() {
        return idDiario;
    }

    public void setIdDiario(String idDiario) {
        this.idDiario = idDiario;
    }

    public String getDiario() {
        return Diario;
    }

    public void setDiario(String Diario) {
        this.Diario = Diario;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public String getIdGenero() {
        return idGenero;
    }

    public void setIdGenero(String idGenero) {
        this.idGenero = idGenero;
    }

    public String getLogo() {
        return Logo;
    }

    public void setLogo(String Logo) {
        this.Logo = Logo;
    }
    
    
}
