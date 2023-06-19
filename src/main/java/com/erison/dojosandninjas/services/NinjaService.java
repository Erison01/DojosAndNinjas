package com.erison.dojosandninjas.services;

import com.erison.dojosandninjas.models.Dojo;
import com.erison.dojosandninjas.models.Ninja;
import com.erison.dojosandninjas.repositories.NinjaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NinjaService {
    @Autowired
    private NinjaRepository ninjaRepository;

    public List<Ninja>getAll(){
        return ninjaRepository.findAll();
    }
    public void createNinja(Ninja ninja){
        ninjaRepository.save(ninja);
    }
}
