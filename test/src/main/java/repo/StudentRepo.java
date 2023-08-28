package repo;

import model.Student;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StudentRepo implements IStudentRepo {
    private final String SELECT = "select * from student_table";
    private final String INSERT = "insert into student_table(name,gender,point)\n" +
            "values(?,?,?)";
    private final String DELETE = "delete from student_table where id = ?";
    private final String UPDATE = "UPDATE student_table\n" +
            "SET name = ?," +
            " gender = ?," +
            " point = ?\n" +
            "WHERE id = ?";
    private final String SEARCH = "SELECT * FROM student_table where name = ?";

    @Override
    public List<Student> display() {
        List<Student> list = new ArrayList<>();
        Connection con = BaseRepo.getConnection();
        try {
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT);
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                boolean gender = resultSet.getBoolean("gender");
                double point = resultSet.getDouble("point");
                list.add(new Student(id, name, gender, point));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public void save(Student student) {
        Connection con = BaseRepo.getConnection();
        try {
            PreparedStatement preparedStatement = con.prepareStatement(INSERT);
            preparedStatement.setString(1, student.getName());
            preparedStatement.setBoolean(2, student.isGender());
            preparedStatement.setDouble(3, student.getPoint());
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void delete(int id) {
        Connection con = BaseRepo.getConnection();
        try {
            PreparedStatement preparedStatement = con.prepareStatement(DELETE);
            preparedStatement.setInt(1,id);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void update(Student student, int id) {
        Connection con = BaseRepo.getConnection();
        try {
            PreparedStatement preparedStatement = con.prepareStatement(UPDATE);
            preparedStatement.setString(1,student.getName());
            preparedStatement.setBoolean(2,student.isGender());
            preparedStatement.setDouble(3,student.getPoint());
            preparedStatement.setInt(4,id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Student> search(String name) {
        List<Student> listSearch = new ArrayList<>();
        Connection connection = BaseRepo.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SEARCH);
            preparedStatement.setString(1,name);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id_1 = resultSet.getInt("id");
                String name2 = resultSet.getString("name");
                boolean gender = resultSet.getBoolean("gender");
                double point = resultSet.getDouble("point");
                listSearch.add(new Student(id_1,name2,gender,point));

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return listSearch;
    }


}
