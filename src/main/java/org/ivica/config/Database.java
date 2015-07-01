package org.ivica.config;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Created by mirakel on 27/06/2015.
 */
public class Database {

    private static final String driver = "com.mysql.jdbc.Driver";
    private static final String url = "jdbc:mysql://localhost/subasta";

    private Connection conector = null;
    private Statement sentencia = null;
    private ResultSet result = null;

      /*
       * Metodos para la conexion con la base de datos
      */

    public Connection conectar() throws SQLException {

        try {
            Class.forName(driver);
            conector = DriverManager.getConnection(url,"root","");

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, ex.getMessage(), ex);
        }

        return conector;
    }

    public void desconectar() throws SQLException{

        if (conector != null){
            conector.close();
            conector = null;
        }

        if(sentencia != null){
            sentencia.close();
            sentencia = null;
        }

        if(result != null){
            result.close();
            result = null;
        }

    }



}
