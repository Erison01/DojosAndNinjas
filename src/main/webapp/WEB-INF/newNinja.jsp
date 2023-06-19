<%--
  Created by IntelliJ IDEA.
  User: Dell Latitude E7450
  Date: 6/18/2023
  Time: 11:13 PM
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
<h1 class="m-4">New Ninja</h1>
<form:form action="/createN" method="post" modelAttribute="newNinja">
    <p class="m-4">
        <form:label path="firstName">First Name</form:label>
        <form:input path="firstName"></form:input>
        <form:errors path="firstName"></form:errors>
    </p>
    <p class="m-4">
        <form:label path="lastName">Last Name</form:label>
        <form:input path="lastName"></form:input>
        <form:errors path="lastName"></form:errors>
    </p>
    <p class="m-4">
        <form:label path="age">Age</form:label>
        <form:input path="age"></form:input>
        <form:errors path="age"></form:errors>
    </p>
    <p class="m-4">
        <form:select path="dojo">
            <c:forEach items="${allDojos}" var="dojo">
                <option value="${dojo.id}">${dojo.name}</option>

            </c:forEach>

        </form:select>
    </p>
    <button class="m-4">Create</button>
</form:form>
</body>
</html>
