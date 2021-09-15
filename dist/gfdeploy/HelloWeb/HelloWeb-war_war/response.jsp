<%-- 
    Document   : response
    Created on : 13/09/2021, 08:51:17 PM
    Author     : Usuario
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="mybean" scope="session" class="co.unipiloto.edu.NameHandler" />
        <jsp:setProperty name="mybean" property="name"/>
        <jsp:setProperty name="mybean" property="birthDate"/>     
        
        <h1>
            <c:choose>
            <c:when test="${LocalDateTime.now().getHours()}">
                Buenas días
            </c:when>
            <c:otherwise>
                Buenas tardes
            </c:otherwise>
            </c:choose>
             <jsp:getProperty name="mybean" property="name" /> 
        </h1>
        <p>Tienes ${mybean.age()}</p>
        <p>Fecha de nacimiento <jsp:getProperty name="mybean" property="birthDate" /></p>
    </body>
</html>
