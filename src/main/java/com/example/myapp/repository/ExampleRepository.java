package main.java.com.example.myapp.repository;

import main.java.com.example.myapp.model.ExampleEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ExampleRepository extends JpaRepository<ExampleEntity, Long> {
}