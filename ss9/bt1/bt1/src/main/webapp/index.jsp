
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<form action="${pageContext.request.contextPath}/calculator" method="post">
    <label>Product Description: </label><br>
    <input type="text" name="pd" placeholder=""><br>
    <label>List Price: </label><br>
    <input type="text" name="lp" placeholder=""><br>
    <label>Discount Percent:: </label><br>
    <input type="text" name="dp" placeholder=""><br>
    <input type="submit" value="calculate submit">
</form>
</body>
</html>