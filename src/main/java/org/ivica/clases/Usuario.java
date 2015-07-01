package org.ivica.clases;

/**
 * Created by mirakel on 28/06/2015.
 */
public class Usuario {
    private int Id;
    private String nombres;
    private String apellidos;
    private String username;
    private String password;
    private boolean sexo;
    private String email;
    private String telefono;

    public Usuario() {

    }

    public int getId() {
        return Id;
    }

    public String getApellidos() {
        return apellidos;
    }

    public String getNombres() {
        return nombres;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public boolean isSexo() {
        return sexo;
    }

    public String getEmail() {
        return email;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setId(int id) {
        Id = id;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setSexo(boolean sexo) {
        this.sexo = sexo;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getFullName(){
        return this.nombres + " " + this.apellidos;
    }

    @Override
    public String toString(){
        return this.nombres + " " + this.apellidos;
    }
}
