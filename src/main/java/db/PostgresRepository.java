package db;

import javax.ws.rs.ServerErrorException;
import javax.ws.rs.core.Response;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class PostgresRepository implements IDBRepository {

    @Override
    public Connection getConnection() {//подкл к базе
        try {
            Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Ass1APJ", "postgres", "068070");
            return connection;
        } catch (SQLException ex) {
            throw new ServerErrorException("Cannot connect to DB: " + ex.getMessage(), Response.Status.INTERNAL_SERVER_ERROR);
        }
    }
}
