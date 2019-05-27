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
public class Genero implements Serializable{
    private String idGenero;
    private String Genero;
    private String Descripcion;

    public Genero() {
    }

    public Genero(String idGenero, String Genero, String Descripcion) {
        this.idGenero = idGenero;
        this.Genero = Genero;
        this.Descripcion = Descripcion;
    }

    public String getIdGenero() {
        return idGenero;
    }

    public void setIdGenero(String idGenero) {
        this.idGenero = idGenero;
    }

    public String getGenero() {
        return Genero;
    }

    public void setGenero(String Genero) {
        this.Genero = Genero;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }
    
    
}
