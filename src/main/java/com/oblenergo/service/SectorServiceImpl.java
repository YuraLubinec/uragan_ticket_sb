package com.oblenergo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.oblenergo.DAO.SectorDAO;
import com.oblenergo.DTO.SectorDTO;
import com.oblenergo.model.Sector;

@Service
public class SectorServiceImpl implements SectorService {

  @Autowired
  SectorDAO dao;

  @Transactional
  @Override
  public List<Sector> findAllSector() {
    return dao.findAllSector();
  }

  @Transactional
  @Override
  public void save(Sector sector) {
    dao.save(sector);
  }

  @Transactional
  @Override
  public Sector findById(int id) {
    return dao.findById(id);
  }

  @Transactional
  @Override
  public void updateSectorPrice(SectorDTO sectorDTO) {

    try {
      Sector sector = dao.findById(sectorDTO.getId());
      sector.setPrice(sectorDTO.getPrice());
    } catch (DataAccessException e) {
      e.printStackTrace();
      throw e;
    }

  }

}
