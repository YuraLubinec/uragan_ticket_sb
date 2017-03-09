package com.oblenergo.service;

import java.util.List;

import com.oblenergo.model.Season;


public interface SeasonService {

  List<Season> findAllSeason();

  void save(Season season);

  void delete(int id);

  Season findById(int id);

}
