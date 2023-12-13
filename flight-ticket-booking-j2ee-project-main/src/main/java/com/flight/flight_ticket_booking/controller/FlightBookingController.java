package com.flight.flight_ticket_booking.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flight.flight_ticket_booking.dao.FlightBookingDao;
import com.flight.flight_ticket_booking.dto.FlightBookingDetails;

@WebServlet(value = "/flightBooking")
public class FlightBookingController extends HttpServlet {

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		FlightBookingDetails bookingDetails = new FlightBookingDetails();
		
		FlightBookingDao bookingDao = new FlightBookingDao();
		
		long pnr = (long) Math.floor(Math.random() * 9000000000L) + 1000000000L;
		
		bookingDetails.setPnr(pnr);
		bookingDetails.setName(req.getParameter("name"));
		bookingDetails.setEmail(req.getParameter("email"));
		bookingDetails.setAge(Integer.parseInt(req.getParameter("age")));
		bookingDetails.setGender(req.getParameter("gender"));
		bookingDetails.setPhone(Long.parseLong(req.getParameter("phone")));
		bookingDetails.setPrice(Double.parseDouble(req.getParameter("price")));
		bookingDetails.setFlightNumber(Integer.parseInt(req.getParameter("number")));
		
		bookingDao.saveBookingDetails(bookingDetails);
	}
}
