<%--
  Created by IntelliJ IDEA.
  User: Dell Latitude E7450
  Date: 6/19/2023
  Time: 12:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
<h1 class="m-4 text-center"><c:out value="${theDojo.name}"/> Ninjas</h1>
<table class="table">
    <thead>
    <tr>
        <th scope="col">Name</th>
        <th scope="col">Last Name</th>
        <th scope="col">Age</th>

    </tr>
    </thead>
    <tbody>
    <c:forEach items="${theDojo.ninjas}" var="ninja">
        <tr class="table-primary">
                <%-- <td  class="table-secondary"> <c:out value="${art.title}"/></td> --%>
            <td  class="table-secondary"><c:out value="${ninja.firstName}"/></td>
            <td  class="table-secondary"><c:out value="${ninja.lastName}"/></td>
            <td  class="table-secondary"><c:out value="${ninja.age}"/></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
