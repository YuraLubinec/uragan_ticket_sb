package com.oblenergo.service;

import java.util.List;

import com.oblenergo.DTO.SectorDTO;
import com.oblenergo.model.Sector;


public interface SectorService {

  List<Sector> findAllSector();

  void save(Sector sector);

  Sector findById(int id);

  void updateSectorPrice(SectorDTO sectorDTO);

}
