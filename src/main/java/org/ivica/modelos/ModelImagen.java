package org.ivica.modelos;

import org.ivica.clases.Imagen;
import org.ivica.config.Database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by mirakel on 29/06/2015.
 */
public class ModelImagen {

    private PreparedStatement pstm;
    private Statement stm;
    private ResultSet result;
    private Database db;

    public ModelImagen() {
        this.pstm = null;
        this.stm = null;
        this.result = null;
        this.db = new Database();
    }

    public int save(Imagen imagen) throws SQLException {

        int rpt = 0;

        try {
            pstm = db.conectar().prepareStatement("INSERT INTO imagen"
                    +"(id,nombre_imagen,tipo_imagen,producto_id) VALUES(?,?,?,?)");

            pstm.setInt(1,imagen.getId());
            pstm.setString(2,imagen.getNombre());
            pstm.setString(3,imagen.getTipo());
            pstm.setInt(4,imagen.getProducto().getId());

            rpt = pstm.executeUpdate();

        } catch (SQLException e) {
            System.out.print("Error: " + e.getMessage());
        }finally {
            db.desconectar();
            if (pstm != null){
                pstm.close();
                pstm = null;
            }
        }

        return rpt;
    }
}
