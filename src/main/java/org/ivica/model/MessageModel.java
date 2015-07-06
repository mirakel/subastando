package org.ivica.model;

import org.ivica.entity.Message;
import org.ivica.config.Database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by mirakel on 05/07/2015.
 */
public class MessageModel {
    private PreparedStatement pstm;
    private Statement stm;
    private ResultSet result;
    private Database db;

    public MessageModel() {
        this.pstm = null;
        this.stm = null;
        this.result = null;
        this.db = new Database();
    }

    public int save(Message contacto) throws SQLException {

        int rpt = 0;

        try {
            pstm = db.conectar().prepareStatement("INSERT INTO mensajes"
                    +"(id,nombres,email,asunto,contenido,leido) VALUES(?,?,?,?,?,?)");

            pstm.setInt(1,contacto.getId());
            pstm.setString(2,contacto.getNombres());
            pstm.setString(3,contacto.getEmail());
            pstm.setString(4,contacto.getAsunto());
            pstm.setString(5,contacto.getContenido());
            pstm.setInt(6,contacto.getLeido());

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
