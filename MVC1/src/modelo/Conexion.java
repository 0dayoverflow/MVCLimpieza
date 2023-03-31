package modelo;

import java.sql.*;
import javax.swing.JOptionPane;

public class Conexion {

    private static Connection conexion;
    private static Conexion instancia;
    private static final String URL = "jdbc:mysql://localhost/bdRegistros"; //cambiar a el nombre correcto de la base de datos
    private static final String USERNAME = "";
    private static final String PASSWORD = "";

//meotdo para ocmunicarnos a la base de datos 
    public Connection conectar() {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(URL, URL, PASSWORD);

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error a momento de conectar a la base de datos");

        }
        return conexion;

    }

    public void cerrarConexion() throws SQLException {
        
        try{
            conexion.close();
        
        }
        catch (Exception e){
            JOptionPane.showMessageDialog(null, "Error al momento de conectar a la base de datos");
            conexion.close();
        }

    }
    
    public static Conexion getInstance(){
        if(instancia == null){
            instancia = new Conexion();
        }
            return instancia;
    
    }

}
