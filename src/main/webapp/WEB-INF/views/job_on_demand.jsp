<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.Hashtable"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> How to Loop over Map i.e. HashMap or Hashtable in JSP 
                 - JSTL foreach tag example</title>
    </head>

    <body>  
        <h2> How to traverse HashMap in JSP</h2>

        <%
            Map<Integer, String> numberToString = new HashMap<Integer, String>();
            numberToString.put(1, "JSP");
            numberToString.put(2, "Java");
            numberToString.put(3, "JSTL");
            numberToString.put(4, "J2EE");
            numberToString.put(5, "JEE");
            pageContext.setAttribute("map", numberToString);
        %>


        <%-- JSTL foreach tag example to loop a HashMap in JSP --%>
        <table>
            <c:forEach var="entry" items="${pageScope.map}">
                <tr>
                    <td><c:out value="${entry.key}"/></td>
                    <td><c:out value="${entry.value}"/> </td>
                </tr>
            </c:forEach>
        </table>
        
         	

    </body>
</html>