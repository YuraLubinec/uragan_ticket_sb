package com.oblenergo.service;

import java.util.List;

import com.oblenergo.model.Subscription;

public interface SubscriptionService {

  List<Subscription> findAllSubscription();

  void save(Subscription subscription);

  void delete(int id);

  Subscription findById(int id);

  void update(Subscription subscription);

  List<Subscription> findAllBySeasonId(int id);

}
