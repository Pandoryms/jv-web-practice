<%--
  Created by IntelliJ IDEA.
  User: glebo
  Date: 03.02.2023
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding Driver to Car</title>
</head>
<body>
<h1>Please fill in the form</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car_id <input type="text" name="car_id" required><br>
    Driver_id <input type="text" name="driver_id" required><br>
    <button type="submit">Confirm</button>
    <c:if test="${invalidInput == 'car'}">
        Can't find car id ${id} in database, try again
    </c:if>
    <c:if test="${invalidInput == 'driver'}">
        Can't find driver by id ${id} in database, try again
    </c:if>
</form>
<h1>List of cars:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>Model</td>
        <td>Manufacturer_id</td>
        <td>Drivers</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.id}"/></td>
            <td><c:out value="${car.drivers}"/></td>
        </tr>
    </c:forEach>
</table>
<h1>List of manufacturers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Country</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"/></td>
            <td><c:out value="${manufacturer.name}"/></td>
            <td><c:out value="${manufacturer.country}"/></td>
        </tr>
    </c:forEach>
</table>
<h1>List of drivers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>License_Number</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>