<%-- 
    Document   : user
    Created on : 19-Mar-2023, 11:57:08 PM
    Author     : Rahul Bisht
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>USERS</title>
    </head>
    <body>
        <h1>MANAGE USERS</h1>
        <form action="User" method="post">
        <table border ="12px solid DodgerBlue">
            <tr>
            <th>E-mail</th>
            <th>First Name User</th>
            <th>Last Name User</th>
            <th>ROLE</th>
            <th></th>
            <th></th>
            </tr>
            <c:if test="${user.size() lt 1}"> <p>NO USER FOUND!</p> </c:if>
            <c:forEach items="${users}" var="user">
                <tr>
                    <td> ${user.email}</td>
                    <td> ${user.firstName}</td>
                    <td> ${user.lastName}</td>
                    <td> ${user.role}</td>
                    
                    <td><a href="User?change=edit&&email2=${user.email}">Edit</a></td>
                    <td><a href="User?change=delete&&email2=${user.email}">Delete</a></td>
                </tr>
                
            </c:forEach>
        </table>
            </form>
            
            <c:if test="${user2 eq null}">
        <form action="User" method="post">
        <h1>ADD USER</h1>
            E-mail: <input type="text" name="email"><br>
            First Name User: <input type="text" name="fname"><br>
            Last Name User: <input type="text" name="lname"><br>
            Password: <input type="password" name="password"><br>
            ROLE: <select name="role">
                <option  value="regular user">Regular user</option>
                <option value="system admin">System admin</option>
            </select>
            <br>
            <input type="submit" name="change" value="Add user">      
        </form>
        </c:if>
        <c:if test="${user2 ne null}">  
        <form action="User" method="post">
        <h1>EDIT USER</h1>
            E-mail: ${user2.email}<br>
            First Name User: <input type="text" name="fname" value="${user2.firstName}"><br>
            Last Name User: <input type="text" name="lname" value="${user2.lastName}"><br>
            Password: <input type="password" name="password"><br>
            ROLE: <select name="role">
                <option  value="regular user">Regular user</option>
                <option value="system admin">System admin</option>
            </select>
            <br>
            <input type="Submit" name="change" value="UPDATE">
            <input type="Submit" name="change" value="CANCEL">
            </form>
             </c:if>
            ${message}
    </body>
</html>
