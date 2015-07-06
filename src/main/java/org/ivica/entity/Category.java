package org.ivica.entity;

/**
 * Created by mirakel on 28/06/2015.
 */
public class Category {
    private int Id;
    private String nombre;
    private String descripcion;
    private int padre;

    public Category() {
    }

    public Category(String nombre) {
        this.nombre = nombre;
    }

    public int getId() {
        return Id;
    }

    public String getNombre() {
        return nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public int getPadre() {
        return padre;
    }

    public void setId(int id) {
        Id = id;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void setPadre(int padre) {
        this.padre = padre;
    }
}
