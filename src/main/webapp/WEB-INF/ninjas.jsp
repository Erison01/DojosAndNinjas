<%--
  Created by IntelliJ IDEA.
  User: Dell Latitude E7450
  Date: 6/18/2023
  Time: 11:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${allNinjas}" var="ninja">
    <p> <a href="">${ninja.firstName}</a> </p>
</c:forEach>
</body>
</html>