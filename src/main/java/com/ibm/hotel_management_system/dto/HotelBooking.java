package com.ibm.hotel_management_system.dto;

import java.time.LocalDateTime;

import org.hibernate.annotations.CreationTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class HotelBooking {

	@Id
	@Column(name = "bookingid")
	private int bookingId;
	
	@Column(name = "bookingdatetime")
	@CreationTimestamp
	private LocalDateTime bookingDateTime;
	
	@OneToOne
	private User user;
	
	@OneToOne
	@JoinColumn(name = "hotelid")
	private Hotel hotel;
}
