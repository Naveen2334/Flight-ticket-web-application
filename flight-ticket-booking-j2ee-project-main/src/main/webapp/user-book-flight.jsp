<%@page import="com.flight.flight_ticket_booking.dto.AdminAddFlight"%>
<%@page import="com.flight.flight_ticket_booking.dao.AdminAddFlightDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- long pnr = (long) Math.floor(Math.random() * 9000000000L) + 1000000000L; -->

	<%
	String flightNumber = request.getParameter("flightNumber");
	AdminAddFlightDao addFlightDao = new AdminAddFlightDao();

	AdminAddFlight addFlight = addFlightDao.getFlightByNumber(Integer.parseInt(flightNumber));
	%>

	<div class="">
		<form action="flightBooking" method="post">

			<input type="number" name="number" value="<%=addFlight.getFlightNumber()%>" hidden="true"><br>
			
			<input type="decimal" placeholder="enter-flight-economy-ticket-price" name="price" class="common" value="<%=addFlight.getFlightEconomyPrice()%>" hidden="true"><br>
			
			<!-- passenger details -->

			<label id="PassengerName">PassengerName</label><br> <input
				type="text" placeholder="enter passenger name" name="name"><br>

			<label id="PassengerEmail">PassengerEmail</label><br> <input
				type="email" placeholder="enter passenger email" name="email"><br>

			<label id="PassengerPhone">PassengerPhone</label><br> <input
				type="number" placeholder="enter passenger phone" name="phone"><br>

			<label id="PassengerAge">PassengerAge</label><br> <input
				type="number" placeholder="enter passenger age" name="age"><br>

			<label id="PassengerGender">Gender</label><br> <input
				type="radio" name="gender" value="Male">Male&nbsp; <input
				type="radio" name="gender" value="Female">Female&nbsp; <input
				type="radio" name="gender" value="Other">Other<br>

			<button type="submit">BookYourTicket</button>
			<input type="submit" value="<%=addFlight.getFlightEconomyPrice()%>">
		</form>

	</div>
</body>
</html>