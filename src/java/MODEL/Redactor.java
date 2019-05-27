/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MODEL;

/**
 *
 * @author Rony
 */
public class Redactor {
    private String idRedactor;
    private String Nombres;
    private String Apellidos;
    private String Direccion;
    private String User;
    private String Pass;
    private String Email;
    private String Fono;

    public Redactor() {
    }

    public Redactor(String idRedactor, String Nombres, String Apellidos, String Direccion, String User, String Pass, String Email, String Fono) {
        this.idRedactor = idRedactor;
        this.Nombres = Nombres;
        this.Apellidos = Apellidos;
        this.Direccion = Direccion;
        this.User = User;
        this.Pass = Pass;
        this.Email = Email;
        this.Fono = Fono;
    }

    public String getIdRedactor() {
        return idRedactor;
    }

    public void setIdRedactor(String idRedactor) {
        this.idRedactor = idRedactor;
    }

    public String getNombres() {
        return Nombres;
    }

    public void setNombres(String Nombres) {
        this.Nombres = Nombres;
    }

    public String getApellidos() {
        return Apellidos;
    }

    public void setApellidos(String Apellidos) {
        this.Apellidos = Apellidos;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getUser() {
        return User;
    }

    public void setUser(String User) {
        this.User = User;
    }

    public String getPass() {
        return Pass;
    }

    public void setPass(String Pass) {
        this.Pass = Pass;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getFono() {
        return Fono;
    }

    public void setFono(String Fono) {
        this.Fono = Fono;
    }

    
}
