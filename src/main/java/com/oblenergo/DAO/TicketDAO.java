package com.oblenergo.DAO;

import java.util.List;

import com.oblenergo.model.Ticket;

public interface TicketDAO {

  List<Ticket> findAllTickets();

  Ticket findById(int id);

  void save(Ticket ticket);

  void delete(int id);

  List<Ticket> findTicketsByIdGame(int id);

}
