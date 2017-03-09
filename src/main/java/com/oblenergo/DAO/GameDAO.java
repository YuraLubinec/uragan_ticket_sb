package com.oblenergo.DAO;

import java.util.List;

import com.oblenergo.model.Game;

public interface GameDAO {

  List<Game> findAllGames();

  Game findById(int id);

  List<Game> findGamesBySeasonId(int seasonId);

  void save(Game game);

  void delete(int id);

  Game getLastGame();
}
