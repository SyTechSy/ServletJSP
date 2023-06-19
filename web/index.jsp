<%-- 
    Document   : index
    Created on : 16 juin 2023, 11:20:10
    Author     : sy.diakaridia
--%>
<%
    if(session.getAttribute("name")==null) {
            response.sendRedirect("Connection.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
