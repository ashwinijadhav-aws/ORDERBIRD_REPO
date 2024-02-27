package com.example.myapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

@Service
public class ExampleService {
    @Autowired
    private DataSource dataSource;

    public String connectToDatabase() {
        try (Connection connection = dataSource.getConnection())
        {
            return "Well done";
        } 
        catch (SQLException e) 
        {
            e.printStackTrace();
            return "Error in connection";
        }
    }
}