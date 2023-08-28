<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 21/08/2023
  Time: 20:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit hoc vien</title>
</head>
<body>
<h1>Edit học viên</h1>
<button class="btn-outline-danger"><a href="/">Quay lại</a></button>
<form method="post">
  Tên: <input type="text" name="name"><br>
  Giới tính: <input type="radio" name="gender" value="male">Nam
  <input type="radio" name="gender" value="female">Nữ<br>
  Điểm: <input type="number" name="point"><br>
  <input type="submit" value="Edit" class="btn-outline-primary">
</form>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>
