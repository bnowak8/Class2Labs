<%-- 
    Document   : greeting
    Created on : Jan 29, 2014, 10:59:02 PM
    Author     : mashit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String greeting = (String)request.getAttribute("greeting");
        out.println(greeting);
        %>
    </body>
</html>
