package org.ivica.clases;

/**
 * Created by mirakel on 28/06/2015.
 */
public class Producto {

    private int Id;
    private String nombre;
    private Double precio;
    private int cantidad;
    private String descripcion;
    private String estado;
    private int categoria;
    private Imagen imagenes;

    public Producto() {
    }

    public int getId() {
        return Id;
    }

    public String getEstado() {
        return estado;
    }

    public int getCategoria() {
        return categoria;
    }

    public String getNombre() {
        return nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public int getCantidad() {
        return cantidad;
    }

    public Double getPrecio() {
        return precio;
    }

    public Imagen getImagenes() {
        return imagenes;
    }

    public void setId(int id) {
        Id = id;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public void setCategoria(int categoria) {
        this.categoria = categoria;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public void setImagenes(Imagen imagenes) {
        this.imagenes = imagenes;
    }
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
}
