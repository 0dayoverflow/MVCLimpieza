
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    
    Connection con =null;
    String base=""; //cambiar por el nombre de la base de datos
    String url="jdbc:mysql://localhost:3306/"+base;
    String user="root";
    String password="";
    
        public Connection getConexion(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, user, password);
        }
        catch (ClassNotFoundException | SQLException e){
            System.err.println(e);
        }
        return con;
    }
    
}
