<%-- 
    Document   : menu
    Created on : Feb 7, 2024, 4:27:13 PM
    Author     : huypd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="userTask">User Task</a> ---
        <a href="sellerTask">Seller Task</a> ---
        <c:if test="${sessionScope.account != null}">
            <a href="info">User Info</a> ---
            <a href="logout">Logout</a> ---
            <span style="color:red">(${sessionScope.account.user})</span>
        </c:if>
        <c:if test="${sessionScope.account == null}">
            <a href="login">Login</a> ---
        </c:if>
</body>
</html>
