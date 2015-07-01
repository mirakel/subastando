package org.ivica.modelos;

import org.ivica.clases.Usuario;
import org.ivica.config.Database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 * Created by mirakel on 28/06/2015.
 */
public class ModelUsuario {
    private PreparedStatement pstm;
    private Statement stm;
    private ResultSet result;
    private Database db;

    public ModelUsuario() {
        this.pstm = null;
        this.stm = null;
        this.result = null;
        this.db = new Database();
    }

    public int save(Usuario usuario) throws SQLException {

        int rpt = 0;

        try {
            pstm = db.conectar().prepareStatement("INSERT INTO usuario"
                   +"(id,username,password,nombre_usuario,apellido_usuario,genero_usuario,email_usuario, telefono_usuario) VALUES(?,?,?,?,?,?,?,?)");

            pstm.setInt(1,usuario.getId());
            pstm.setString(2,usuario.getUsername());
            pstm.setString(3,usuario.getPassword());
            pstm.setString(4,usuario.getNombres());
            pstm.setString(5,usuario.getApellidos());
            pstm.setBoolean(6, usuario.isSexo());
            pstm.setString(7,usuario.getEmail());
            pstm.setString(8,usuario.getTelefono());

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

    public int update(Usuario usuario) throws SQLException {

        int rpt = 0;

        try {
            pstm = db.conectar().prepareStatement("UPDATE usuario SET "
                    +"username = ?, password =?, nombre_usuario=?, apellido_usuario = ? , genero_usuario = ?, email_usuario = ?, telefono_usuario = ? WHERE id = ?");

            pstm.setString(1,usuario.getUsername());
            pstm.setString(2,usuario.getPassword());
            pstm.setString(3,usuario.getNombres());
            pstm.setString(4,usuario.getApellidos());
            pstm.setBoolean(5, usuario.isSexo());
            pstm.setString(6,usuario.getEmail());
            pstm.setString(7,usuario.getTelefono());
            pstm.setInt(8, usuario.getId());
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

    public int delete(Usuario usuario) throws SQLException{
        int rpt = 0;
        try{
            pstm = db.conectar().prepareStatement("DELETE FROM usuario WHERE id = ?");
            pstm.setInt(1, usuario.getId());
            rpt = pstm.executeUpdate();
        } finally{
            db.desconectar();
            if(pstm != null){
                pstm.close();
                pstm = null;
            }
        }
        return rpt;
    }

    public ArrayList<Usuario> getUsuarios(String where, String order, String limit) throws SQLException {
        ArrayList<Usuario> usuarios = new ArrayList<Usuario>();
        String query = "SELECT * FROM usuario";

        if (where != null){
            query+= " WHERE " + where;
        }

        if(order != null){
            query+= " ORDER BY " + order;
        }

        if(limit != null){
            query+= " LIMIT " + limit;
        }

        try{
            stm = db.conectar().createStatement();
            result = stm.executeQuery(query);

            while(result.next()){
                Usuario usuario = new Usuario();
                usuario.setId(result.getInt(1));
                usuario.setUsername(result.getString(2));
                usuario.setPassword(result.getString(3));
                usuario.setNombres(result.getString(4));
                usuario.setApellidos(result.getString(5));
                usuario.setSexo(result.getBoolean(6));
                usuario.setEmail(result.getString(7));
                usuario.setTelefono(result.getString(8));

                usuarios.add(usuario);
            }
        }catch (SQLException e) {
            System.out.print("Error: " + e.getMessage());
        }finally{
            db.desconectar();
            if(stm != null){
                stm.close();
            }
            if(result != null){
                result.close();
            }
        }
        return usuarios;
    }


}


