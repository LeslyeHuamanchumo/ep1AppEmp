package com.isil.ep1;

import com.mysql.cj.protocol.Resultset;
import jdk.nashorn.internal.codegen.CompilerConstants;

import javax.swing.plaf.nimbus.State;
import javax.xml.transform.Result;
import java.sql.*;

public class MainApp {

    public static void main(String[] args) throws Exception {

        Class.forName("com.mysql.cj.jdbc.Driver");

        Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/reserva", "root", "123jtm91.");

        /* Update con Statement */

        Statement stmt = con.createStatement();
        int resultUpdate = stmt.executeUpdate("UPDATE Clientes SET name='Julio' WHERE id = 2");
        System.out.println("Filas afectadas: " + resultUpdate);


        /* Delete con PreparedStatement */

        PreparedStatement preparedStatement = con.prepareStatement("DELETE FROM Clientes WHERE name=?");
        preparedStatement.setString(1,"Julio");
        int result = preparedStatement.executeUpdate();
        System.out.println("Filas afectadas: " + result);


        /* Listar Registros con CallableStatement */

        CallableStatement callSp = con.prepareCall("{call listarClientesPerCodRes(?)}");
        callSp.setString(1, "1115423230");
        ResultSet resultSet = callSp.executeQuery();
        while(resultSet.next()){
            System.out.println(resultSet.getString("name"));
            System.out.println(resultSet.getString("lastname"));
            System.out.println(resultSet.getString("email"));
        }

        con.close();
    }
}
