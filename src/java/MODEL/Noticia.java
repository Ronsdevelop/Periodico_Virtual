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
public class Noticia implements Serializable{
    private String idNoticia;
    private String anteTitulo;
    private String Titular;
    private String Entradilla;
    private String cuerpoNoticia;
    private String Subtitulo;
    private String Fecha;
    private String Fuente;
    private String Fotografia;
    private String Epigrafi;
    private String Video;
    private String idRedactor;
    private String idDiario;

    public Noticia() {
    }

    public Noticia(String idNoticia, String anteTitulo, String Titular, String Entradilla, String cuerpoNoticia, String Subtitulo, String Fecha, String Fuente, String Fotografia, String Epigrafi, String Video, String idRedactor, String idDiario) {
        this.idNoticia = idNoticia;
        this.anteTitulo = anteTitulo;
        this.Titular = Titular;
        this.Entradilla = Entradilla;
        this.cuerpoNoticia = cuerpoNoticia;
        this.Subtitulo = Subtitulo;
        this.Fecha = Fecha;
        this.Fuente = Fuente;
        this.Fotografia = Fotografia;
        this.Epigrafi = Epigrafi;
        this.Video = Video;
        this.idRedactor = idRedactor;
        this.idDiario = idDiario;
    }

    public String getIdNoticia() {
        return idNoticia;
    }

    public void setIdNoticia(String idNoticia) {
        this.idNoticia = idNoticia;
    }

    public String getAnteTitulo() {
        return anteTitulo;
    }

    public void setAnteTitulo(String anteTitulo) {
        this.anteTitulo = anteTitulo;
    }

    public String getTitular() {
        return Titular;
    }

    public void setTitular(String Titular) {
        this.Titular = Titular;
    }

    public String getEntradilla() {
        return Entradilla;
    }

    public void setEntradilla(String Entradilla) {
        this.Entradilla = Entradilla;
    }

    public String getCuerpoNoticia() {
        return cuerpoNoticia;
    }

    public void setCuerpoNoticia(String cuerpoNoticia) {
        this.cuerpoNoticia = cuerpoNoticia;
    }

    public String getSubtitulo() {
        return Subtitulo;
    }

    public void setSubtitulo(String Subtitulo) {
        this.Subtitulo = Subtitulo;
    }

    public String getFecha() {
        return Fecha;
    }

    public void setFecha(String Fecha) {
        this.Fecha = Fecha;
    }

    public String getFuente() {
        return Fuente;
    }

    public void setFuente(String Fuente) {
        this.Fuente = Fuente;
    }

    public String getFotografia() {
        return Fotografia;
    }

    public void setFotografia(String Fotografia) {
        this.Fotografia = Fotografia;
    }

    public String getEpigrafi() {
        return Epigrafi;
    }

    public void setEpigrafi(String Epigrafi) {
        this.Epigrafi = Epigrafi;
    }

    public String getVideo() {
        return Video;
    }

    public void setVideo(String Video) {
        this.Video = Video;
    }

    public String getIdRedactor() {
        return idRedactor;
    }

    public void setIdRedactor(String idRedactor) {
        this.idRedactor = idRedactor;
    }

    public String getIdDiario() {
        return idDiario;
    }

    public void setIdDiario(String idDiario) {
        this.idDiario = idDiario;
    }
    
    
}
