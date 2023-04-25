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
<div class="body container col-8  mx-auto my-5 border"  style=" border-radius:10px;">
	
   <% int flight_id = Integer.parseInt(request.getParameter("flight_id"));
   FlightDAO dao = new FlightDAO(DBConnect.getconn());
   Flight f = dao.getFlightById(flight_id);
   %>  
  
	<form class="col-8  p-3 border mx-auto" action="confirmbooking.jsp" method="post">
 <input type="hidden" class="flight_id" name="flight_id" value="<%=flight_id %>" >
 
  <div class=" border">
  <label class="m-2 border">from<input type="text" class="ticket mx-5 border-0 bg-custom text-center" name="from" value=" <%=f.getFrom() %>"></label>
   </div>
  
  <div class=" border text-left">
  <label class="m-2 text-center border">To<input type="text" class="ticket mx-5 border-0 bg-custom text-center" name="to" value="<%=f.getTo() %>"> </label>
  </div>
  
   <div class=" border">
   <label class="m-2 text-center">Date<input type="text" class="ticket mx-5 border-0 bg-custom text-center" name="date" value="<%=f.getDate() %>" ></label>
    </div>
      <div class=" border">
      <label class="m-2 text-center">Arrival<input type="text" class="ticket mx-5 border-0 bg-custom text-center" name="arrival" value="<%=f.getArrival() %>" ></label>
    </div>
     <div class=" border">
      	<label class="m-2 text-center" >Departure<input type="text" class="ticket mx-5 border-0 bg-custom text-center" name="departure" value= "<%=f.getDeparture() %>"></label>
     </div>
          <div class=" border">
      	<label class="m-2 text-center" >Terminal<input type="text" class="ticket mx-5 border-0 bg-custom text-center" name="terminal" value="<%=f.getTerminal() %>" ></label>
     </div>
     <div class=" border">
      	<label class="m-2 border ">Business (<%=f.getBusifare() %>)<input type="radio" class="ticket mx-5  bg-custom text-center" name="fare" value=<%=f.getBusifare()%> ></label>
     </div>
        <div>
      	<label class="m-2 text-center">Economy (<%=f.getEcofare() %>)<input type="radio" class="ticket mx-5  bg-custom text-center" name="fare" value=<%=f.getEcofare() %> ></label>
     </div>
 <div>
 <label class="m-2 text-center">NO. OF TICKET<input type="text" class="ticket mx-5  bg-custom text-center" name="ticket_count"></label>

 </div>
  <button type="submit" class="btn btn-primary">proceed</button>

</form>

</div>
<%@ include file="components/script.js" %>
<%@ include file="components/footer.jsp" %>
</body>
</html>