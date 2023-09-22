<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>List Customers</title>
    <style>
        img{
            width: 100px;
            height: 100px;
        }
        table{
            width: 100%;
            text-align: center;
        }
        h1 {
            text-align: center;
        }
    </style>
</head>
<body>
<h1>Danh Sách Khách Hàng</h1>
<table >
    <tr>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>
    <tbody>
    <c:forEach items="${customers}" var="customers" varStatus="loop">
        <tr>
            <td><c:out value="${customers.name}"/></td>
            <td><c:out value="${customers.dob}"/></td>
            <td><c:out value="${customers.address}"/></td>
            <td><img src="${customers.image}"></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>