package com.oblenergo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.oblenergo.DAO.TicketDAO;
import com.oblenergo.model.Ticket;

@Service
public class TicketServiceImpl implements TicketService {

  @Autowired
  TicketDAO dao;

  @Transactional
  @Override
  public List<Ticket> findAllTicket() {

    return dao.findAllTickets();
  }

  @Transactional
  @Override
  public void save(Ticket ticket) {

    dao.save(ticket);
  }

  @Transactional
  @Override
  public Ticket findById(int id) {

    return dao.findById(id);
  }

  @Transactional
  @Override
  public void delete(int id) {

    dao.delete(id);
  }

  @Transactional
  @Override
  public List<Ticket> findTicketsByIdGame(int id) {
    return dao.findTicketsByIdGame(id);
  }
}
