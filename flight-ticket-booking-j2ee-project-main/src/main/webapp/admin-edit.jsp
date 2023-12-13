<%@page import="com.flight.flight_ticket_booking.dto.AdminAddFlight"%>
<%@page import="com.flight.flight_ticket_booking.dao.AdminAddFlightDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	
	.common{
		width: 200px;
		height: 30px;
	}
	
	body {
	display: flex;
	flex-direction:column;
	justify-content: center;
	align-items: center;
   }

</style>
</head>
<body>

	<%
		int flightNumber = Integer.parseInt(request.getParameter("flightNumber"));	
	
		AdminAddFlightDao addFlightDao = new AdminAddFlightDao();
		
		AdminAddFlight adminAddFlight = addFlightDao.getFlightByNumber(flightNumber);
	%>
	<div>
		<jsp:include page="admin-navbar.jsp"></jsp:include>
	</div>
	<div style="color:back;">
		<h6>Update-Flight-Data</h6>
		<form action="updateFlight" method="post">

			<!-- <label id="myflight">Flight-Number</label><br> -->
			<input type="number" placeholder="enter flight number" name="flightNumber" class="common" hidden="true" value="<%=adminAddFlight.getFlightNumber()%>"><br>
			
			<label id="Name">Flight-Name</label><br>
			<input type="text" placeholder="enter flight name" name="flightName" class="common" value="<%=adminAddFlight.getFlightName()%>"><br>
			
			<label id="Source">Flight-Source</label><br>
			<input type="text" placeholder="enter flight source" name="flightSource" class="common" value="<%=adminAddFlight.getFlightSource()%>"><br>
			
			<label id="Destination">Flight-Destination</label><br>
			<input type="text" placeholder="enter flight destination" name="flightDestination" class="common" value="<%=adminAddFlight.getFlightDestination()%>"><br>
			
			<label id="departure">Flight-Departure-Time</label><br>
			<input type="time" placeholder="enter flight departure time" name="flightDeparture" class="common" value="<%=adminAddFlight.getDepartureTime()%>"><br>
			
			<label id="arrival">Flight-Arrival-Time</label><br>
			<input type="time" placeholder="enter flight arrival time" name="flightArrival" class="common" value="<%=adminAddFlight.getArrivalTime()%>"><br>
			
			<label id="myEconomyPrice">Flight-Economy-Ticket-Price</label><br>
			<input type="decimal" placeholder="enter-flight-economy-ticket-price" name="flightEconomyPrice" class="common" value="<%=adminAddFlight.getFlightEconomyPrice()%>"><br>
			
			<label id="myBusinessPrice">Flight-Business-Ticket-Price</label><br>
			<input type="number" placeholder="enter-flight-Business-ticket-price" name="flightBusinessPrice" class="common" value="<%=adminAddFlight.getFlightBusinessPrice()%>"><br>
			
			
			<!-- <br>
			<select name="ticketType" class="common">
					<option value="">Select Your Class</option>
					<option value="Economy">Economy</option>
					<option value="Business">Business</option>
			</select><br> -->
			<br>
			<input type="submit" value="Update" style="background-color: yellow;">

		</form>

		</div>
	
</body>
</html>