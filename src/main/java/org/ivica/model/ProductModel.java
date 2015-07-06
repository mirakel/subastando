package org.ivica.model;

import org.ivica.entity.Product;
import org.ivica.config.Database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 * Created by mirakel on 28/06/2015.
 */
public class ProductModel {

    private PreparedStatement pstm;
    private Statement stm;
    private ResultSet result;
    private Database DB;

    public ProductModel() {

        this.result = null;
        this.stm = null;
        this.pstm = null;
        DB = new Database();
    }

    public int save(Product producto) throws SQLException {

        int rpt = 0;

        try {
            pstm = DB.conectar().prepareStatement("INSERT INTO productos"
                    +"(id,nombre_producto,descripcion,cantidad,precio,publicar,portada,tags,valoracion,estado,usuario_id) VALUES(?,?,?,?,?,?,?,?,?,?,?)");

            pstm.setInt(1,producto.getId());
            pstm.setString(2,producto.getNombre());
            pstm.setString(3,producto.getDescripcion());
            pstm.setInt(4,producto.getCantidad());
            pstm.setDouble(5,producto.getPrecio());
            pstm.setBoolean(6,producto.isPublicado());
            pstm.setString(7,producto.getPortada());
            pstm.setString(8,producto.getTags());
            pstm.setInt(9,producto.getValoracion());
            pstm.setString(10,producto.getEstado());
            pstm.setInt(11,producto.getId_usuario());

            rpt = pstm.executeUpdate();

        } catch (SQLException e) {
            System.out.print("Error: " + e.getMessage());
        }finally {
            DB.desconectar();
            if (pstm != null){
                pstm.close();
                pstm = null;
            }
        }

        return rpt;
    }

    public ArrayList<Product> getProductos() throws SQLException {
        ArrayList<Product> productos = new ArrayList<Product>();
        String sql = "SELECT * FROM productos";

        try {
            stm = DB.conectar().createStatement();
            result = stm.executeQuery(sql);

            while (result.next()){
                Product producto = new Product();
                producto.setNombre(result.getString(2));
                producto.setDescripcion(result.getString(4));
                producto.setCantidad(result.getInt(5));
                producto.setPrecio(result.getDouble(6));

                productos.add(producto);
            }

        } catch (SQLException e) {
            System.out.print("Error: " + e.getMessage());
        } finally {
            DB.desconectar();

            if (stm != null)
                stm.close();
            if (result != null)
                result.close();
        }

        return productos;
    }


}
