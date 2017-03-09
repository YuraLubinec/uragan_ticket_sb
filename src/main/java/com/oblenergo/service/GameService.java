package com.oblenergo.service;

import java.util.List;

import com.oblenergo.model.Game;

public interface GameService {

  List<Game> findAllGames();

  void save(Game game);

  void delete(int id);

  Game findById(int id);

  void update(Game game);

  List<Game> findGamesBySeasonId(int idSeason);

  Game getLastGame();
}
