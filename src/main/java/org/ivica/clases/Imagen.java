package org.ivica.clases;

/**
 * Created by mirakel on 28/06/2015.
 */
public class Imagen {
    private int Id;
    private String nombre;
    private String tipo;
    private Producto producto;

    public Imagen() {
    }

    public Imagen(int id, String nombre, String tipo, Producto producto) {
        this.Id = id;
        this.nombre = nombre;
        this.tipo = tipo;
        this.producto = producto;
    }

    public int getId() {
        return Id;
    }

    public String getNombre() {
        return nombre;
    }

    public String getTipo() {
        return tipo;
    }

    public Producto getProducto() {
        return producto;
    }

    public void setId(int id) {
        Id = id;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void setProducto(Producto producto) {
        this.producto = producto;
    }
}
