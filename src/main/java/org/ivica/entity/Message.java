package org.ivica.entity;

/**
 * Created by mirakel on 05/07/2015.
 */
public class Message {
    private int Id;
    private String nombres;
    private String email;
    private String asunto;
    private String contenido;
    private int leido;

    public int getId() {
        return Id;
    }

    public String getNombres() {
        return nombres;
    }

    public String getEmail() {
        return email;
    }

    public String getAsunto() {
        return asunto;
    }

    public String getContenido() {
        return contenido;
    }

    public int getLeido() {
        return leido;
    }

    public void setId(int id) {
        Id = id;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setAsunto(String asunto) {
        this.asunto = asunto;
    }

    public void setContenido(String contenido) {
        this.contenido = contenido;
    }

    public void setLeido(int leido) {
        this.leido = leido;
    }
}
