<%-- 
    Document   : home
    Created on : Feb 7, 2024, 4:35:52 PM
    Author     : huypd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"/>
        <h1 style="color: red">Home page</h1>
        <p>số người truy cập: ${sessionScope.counter}</p>
    </body>
</html>
