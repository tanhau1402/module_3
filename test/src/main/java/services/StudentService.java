package services;

import model.Student;
import repo.IStudentRepo;
import repo.StudentRepo;

import java.util.List;

public class StudentService implements IStudentService {
    private IStudentRepo iStudentRepo = new StudentRepo();

    @Override
    public List<Student> display() {
        return iStudentRepo.display();
    }

    @Override
    public void save(Student student) {
        iStudentRepo.save(student);
    }

    @Override
    public void delete(int id) {
        iStudentRepo.delete(id);
    }

    @Override
    public void update(Student student, int id) {
        iStudentRepo.update(student, id);
    }

    @Override
    public List<Student> search(String name) {
        return iStudentRepo.search(name);
    }


}
