package com.ngconnect.helper;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBConnectionManager {
    private final static Properties dbProperties = new Properties();

    static {
        try {
            dbProperties.load(DBConnectionManager.class.getClassLoader().getResourceAsStream("db.properties"));
            Class.forName(dbProperties.getProperty("driverClassName"));
        } catch (IOException | ClassNotFoundException e) {
            throw new RuntimeException("error while loading db properties", e);
        }
    }

    public static Connection newConnection() {
        Connection connection = null;
        try {
            connection = DriverManager.getConnection(dbProperties.getProperty("url"),
                    dbProperties.getProperty("username"), dbProperties.getProperty("password"));
            connection.setAutoCommit(false);
        } catch (SQLException e) {
            throw new RuntimeException("error while creating db connection", e);
        }

        return connection;
    }

}
