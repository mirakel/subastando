package org.ivica.model;

import org.ivica.entity.User;
import org.ivica.config.Database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class UserModel {
    private PreparedStatement pstm;
    private Statement stm;
    private ResultSet result;
    private Database db;

    public UserModel() {
        this.pstm = null;
        this.stm = null;
        this.result = null;
        this.db = new Database();
    }

    public int save(User usuario) throws SQLException {

        int rpt = 0;

        try {
            pstm = db.conectar().prepareStatement("INSERT INTO usuarios"
                   +"(id,username,password,nombres,apellidos,email,telefono,sexo) VALUES(?,?,?,?,?,?,?,?)");

            pstm.setInt(1,usuario.getId());
            pstm.setString(2,usuario.getUsername());
            pstm.setString(3,usuario.getPassword());
            pstm.setString(4,usuario.getNombres());
            pstm.setString(5,usuario.getApellidos());
            pstm.setString(6,usuario.getEmail());
            pstm.setString(7,usuario.getTelefono());
            pstm.setBoolean(8, usuario.isSexo());

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

    public int update(User usuario) throws SQLException {

        int rpt = 0;

        try {
            pstm = db.conectar().prepareStatement("UPDATE usuarios SET "
                    +"username = ?, password =?, nombres=?, apellidos = ? , email = ?, telefono = ?, sexo = ? WHERE id = ?");

            pstm.setString(1,usuario.getUsername());
            pstm.setString(2,usuario.getPassword());
            pstm.setString(3,usuario.getNombres());
            pstm.setString(4,usuario.getApellidos());
            pstm.setString(5,usuario.getEmail());
            pstm.setString(6,usuario.getTelefono());
            pstm.setBoolean(7, usuario.isSexo());
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

    public int delete(User usuario) throws SQLException{
        int rpt = 0;

        try{
            pstm = db.conectar().prepareStatement("DELETE FROM usuarios WHERE id = ?");
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

    public ArrayList<User> getUsuarios(String where, String order, String limit) throws SQLException {
        ArrayList<User> usuarios = new ArrayList<User>();
        String query = "SELECT * FROM usuarios";

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
                User usuario = new User();
                usuario.setId(result.getInt(1));
                usuario.setUsername(result.getString(2));
                usuario.setPassword(result.getString(3));
                usuario.setNombres(result.getString(4));
                usuario.setApellidos(result.getString(5));
                usuario.setEmail(result.getString(6));
                usuario.setTelefono(result.getString(7));
                usuario.setSexo(result.getBoolean(8));
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


