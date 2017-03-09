package com.oblenergo.DAO;

import java.util.List;

import com.oblenergo.model.Subscription;

public interface SubscriptionDAO {

  Subscription findById(int id);

  List<Subscription> findAll();

  List<Subscription> findAllBySeasonId(int id);

  void save(Subscription subscription);

  void delete(int id);

}
