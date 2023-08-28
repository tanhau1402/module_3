package services;

import model.Student;

import java.util.List;

public interface IStudentService {
    List<Student> display();

    void save(Student student);

    void delete(int id);

    void update(Student student, int id);

    List<Student> search(String name);
}
