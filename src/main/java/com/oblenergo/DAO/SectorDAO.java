package com.oblenergo.DAO;

import java.util.List;

import com.oblenergo.model.Sector;

public interface SectorDAO {

  Sector findById(int id);

  List<Sector> findAllSector();

  void save(Sector sector);

}
