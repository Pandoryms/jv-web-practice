<%--
  Created by IntelliJ IDEA.
  User: glebo
  Date: 03.02.2023
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>All manufacturers</title>
</head>
<body>
<h1>List of manufacturers:</h1>
<table>
  <tr>
    <td>ID</td>
    <td>Name</td>
    <td>Country</td>
    <td>Delete</td>
  </tr>
  <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
      <td><c:out value="${manufacturer.id}"/></td>
      <td><c:out value="${manufacturer.name}"/></td>
      <td><c:out value="${manufacturer.country}"/></td>
      <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">Delete this manufacturer</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>