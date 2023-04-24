<%@page import="com.entity.Flight"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.FlightDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<%@ include file="components/all_css.jsp" %>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>flyHigh Airways</title>
</head>
<body>
<%@ include file="components/navbar.jsp" %>
<div class="container-fluid col-10 border bg-primary">
<% int flight_id = Integer.parseInt(request.getParameter("flight_id"));
int ticket_count = Integer.parseInt(request.getParameter("ticket_count"));
double fare = Double.parseDouble(request.getParameter("fare"));
%>
<p>
<%=flight_id %>
</p>
<p>
<%=ticket_count %>
</p>
<p>
<%=fare %>
</p>


</div>
<%@ include file="components/script.js" %>
<%@ include file="components/footer.jsp" %>
</body>
</html>