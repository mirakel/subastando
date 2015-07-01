package org.ivica.modelos;

import org.ivica.clases.Producto;
import org.ivica.config.Database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 * Created by mirakel on 28/06/2015.
 */
public class ModelProducto {

    private PreparedStatement pstm;
    private Statement stm;
    private ResultSet result;
    private Database DB;

    public ModelProducto() {

        this.result = null;
        this.stm = null;
        this.pstm = null;
        DB = new Database();
    }

    public int save(Producto producto) throws SQLException {

        int rpt = 0;

        try {
            pstm = DB.conectar().prepareStatement("INSERT INTO producto"
                    +"(id,nombre_producto,precio_producto,cantidad_producto,estado_producto,descripcion_producto,categoria_id) VALUES(?,?,?,?,?,?,?)");

            pstm.setInt(1,producto.getId());
            pstm.setString(2,producto.getNombre());
            pstm.setDouble(3,producto.getPrecio());
            pstm.setInt(4,producto.getCantidad());
            pstm.setString(5,producto.getEstado());
            pstm.setString(6,producto.getDescripcion());
            pstm.setInt(7, producto.getCategoria());

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

    public ArrayList<Producto> getProductos() throws SQLException {
        ArrayList<Producto> productos = new ArrayList<Producto>();
        String sql = "Select * from producto";

        try {
            stm = DB.conectar().createStatement();
            result = stm.executeQuery(sql);

            while (result.next()){
                Producto producto = new Producto();
                producto.setNombre(result.getString(2));
                producto.setPrecio(result.getDouble(3));
                producto.setCantidad(result.getInt(4));
                producto.setDescripcion(result.getString(6));

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
