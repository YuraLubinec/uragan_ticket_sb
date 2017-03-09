package com.oblenergo.service;

import java.util.List;

import com.oblenergo.model.Seat;
import com.oblenergo.model.Ticket;

public interface SeatService {

  Seat findById(int id);

  List<Seat> findAllSeats();

  List<Seat> findSeatsByTicketId(List<Ticket> listTickets);

  void save(Seat seat);

}
