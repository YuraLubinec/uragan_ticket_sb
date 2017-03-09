package com.oblenergo.DAO;

import java.util.List;

import com.oblenergo.model.Seat;

public interface SeatDAO {

  Seat findById(int id);

  List<Seat> findAllSeats();

  void save(Seat seat);

}
