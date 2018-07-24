package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Dao {

    private Connection cn;

    public void conexion() throws Exception {
        try {
            Class.forName("com.sqlserver.jdbc.SQLServerDriver");
            cn = DriverManager.getConnection("sql:server://localhost:1433;database=SisTransporte","root","vallegrande2018");
            System.out.println("Conexión");
        } catch (Exception e) {
            System.out.println("Error" + e);
        }
    }

    public void cerrar() throws SQLException {
        if (cn != null) {
            if (cn.isClosed() == false) {
                cn.isClosed();
            }
        }
    }

    public Connection getCn() {
        return cn;
    }

    public void setCn(Connection cn) {
        this.cn = cn;
    }

    public static void main(String[] args) throws Exception {
        Dao dao = new Dao();
        dao.conexion();
    }

}
