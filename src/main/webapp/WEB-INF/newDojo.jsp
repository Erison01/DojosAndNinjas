<%--
  Created by IntelliJ IDEA.
  User: Dell Latitude E7450
  Date: 6/18/2023
  Time: 10:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1 class="m-4">New Dojo</h1>
<form:form action="/create" method="post" modelAttribute="newDojo">
    <div class="m-4">
        <form:label path="name">Name</form:label>
        <form:input path="name"></form:input>
        <form:errors path="name"></form:errors>
    </div>
    <button class="m-4">Create</button>
</form:form>
</body>
</html>
