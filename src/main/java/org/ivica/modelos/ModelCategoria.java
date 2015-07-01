package org.ivica.modelos;

import org.ivica.clases.Categoria;
import org.ivica.config.Database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 * Created by mirakel on 30/06/2015.
 */
public class ModelCategoria {

    private PreparedStatement pstm;
    private Statement stm;
    private ResultSet result;
    private Database db;

    public ModelCategoria() {
        this.pstm = null;
        this.stm = null;
        this.result = null;
        this.db = new Database();
    }

    public ArrayList<Categoria> getCategorias() throws SQLException {
        ArrayList<Categoria> categorias = new ArrayList<Categoria>();
        String sql = "Select * from categoria";

        try {
            stm = db.conectar().createStatement();
            result = stm.executeQuery(sql);

            while (result.next()){
                Categoria categoria = new Categoria();
                categoria.setId(result.getInt(1));
                categoria.setNombre(result.getString(2));
                categoria.setDescripcion(result.getString(3));

                categorias.add(categoria);
            }

        } catch (SQLException e) {
            System.out.print("Error: " + e.getMessage());
        } finally {
            db.desconectar();

            if (stm != null)
                stm.close();
            if (result != null)
                result.close();
        }

        return categorias;
    }
}
