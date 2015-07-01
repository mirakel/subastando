package org.ivica.clases;

/**
 * Created by mirakel on 28/06/2015.
 */
public class Categoria {
    private int Id;
    private String nombre;
    private String descripcion;

    public Categoria() {
    }

    public Categoria(int id) {
        Id = id;
    }

    public Categoria(String nombre, String descripcion) {
        this.nombre = nombre;
        this.descripcion = descripcion;
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


    public void setId(int id) {
        Id = id;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
}
