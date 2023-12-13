package com.flight.flight_ticket_booking.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.flight.flight_ticket_booking.connection.FlightConnection;
import com.flight.flight_ticket_booking.dto.FlightBookingDetails;

public class FlightBookingDao {

	Connection connection = FlightConnection.getFlightConnection();
	
	public FlightBookingDetails saveBookingDetails(FlightBookingDetails bookingDetails) {
		
		String insertQuery = "insert into flight_booking_details values(?,?,?,?,?,?,?,?)";
		
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(insertQuery);
		
			preparedStatement.setLong(1, bookingDetails.getPnr());
			preparedStatement.setString(2, bookingDetails.getName());
			preparedStatement.setString(3, bookingDetails.getEmail());
			preparedStatement.setLong(4, bookingDetails.getPhone());
			preparedStatement.setInt(5, bookingDetails.getAge());
			preparedStatement.setString(6, bookingDetails.getGender());
			preparedStatement.setDouble(7, bookingDetails.getPrice());
			preparedStatement.setInt(8, bookingDetails.getFlightNumber());
			
			preparedStatement.execute();
			
			return bookingDetails;
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		return null;
	}
}
