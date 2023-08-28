<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 21/08/2023
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap520/css/bootstrap.min.css">
    <link rel="stylesheet" href="datatables/css/dataTables.bootstrap5.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
          crossorigin="anonymous">
</head>
<body>
<h1>Thêm mới học viên</h1>
<form method="post" action="?action=create" class="table-bordered">
    Tên: <input type="text" name="name"><br>
    Giới tính: <input type="radio" name="gender" value="male">Nam
    <input type="radio" name="gender" value="female">Nữ<br>
    Điểm: <input type="number" name="point"><br>
    <input type="submit" value="Thêm mới" class="btn btn-outline-success">
    <button class="btn btn-outline-success"><a href="/">Quay lại</a></button>
</form>
</body>
</html>