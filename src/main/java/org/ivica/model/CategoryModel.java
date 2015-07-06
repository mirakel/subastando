package org.ivica.model;

import org.ivica.entity.Category;
import org.ivica.config.Database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 * Created by mirakel on 30/06/2015.
 */
public class CategoryModel {

    private PreparedStatement pstm;
    private Statement stm;
    private ResultSet result;
    private Database db;

    public CategoryModel() {
        this.pstm = null;
        this.stm = null;
        this.result = null;
        this.db = new Database();
    }

    public ArrayList<Category> getCategorias() throws SQLException {
        ArrayList<Category> categorias = new ArrayList<Category>();
        String sql = "Select * from categorias";

        try {
            stm = db.conectar().createStatement();
            result = stm.executeQuery(sql);

            while (result.next()){
                Category categoria = new Category();
                categoria.setId(result.getInt(1));
                categoria.setNombre(result.getString(2));
                categoria.setDescripcion(result.getString(4));
                categoria.setPadre(result.getInt(5));
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
