package org.ivica.model;

import org.ivica.entity.Image;
import org.ivica.config.Database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by mirakel on 29/06/2015.
 */
public class ImageModel {

    private PreparedStatement pstm;
    private Statement stm;
    private ResultSet result;
    private Database db;

    public ImageModel() {
        this.pstm = null;
        this.stm = null;
        this.result = null;
        this.db = new Database();
    }

    public int save(Image imagen) throws SQLException {

        int rpt = 0;

        try {
            pstm = db.conectar().prepareStatement("INSERT INTO imagenes"
                    +"(id,nombre_imagen,tipo_imagen,size_imagen,portada,producto_id) VALUES(?,?,?,?,?,?)");

            pstm.setInt(1,imagen.getId());
            pstm.setString(2,imagen.getNombre());
            pstm.setString(3,imagen.getTipo());
            pstm.setInt(4,imagen.getSize());
            pstm.setBoolean(5,imagen.isPortada());
            pstm.setInt(6,imagen.getId_producto());

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
