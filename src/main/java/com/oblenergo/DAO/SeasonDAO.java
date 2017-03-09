package com.oblenergo.DAO;

import java.util.List;

import com.oblenergo.model.Season;

public interface SeasonDAO {
  Season findById(int id);

  List<Season> findAllSeason();

  void save(Season season);

  void delete(int id);

}
