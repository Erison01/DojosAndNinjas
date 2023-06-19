package com.erison.dojosandninjas.services;

import com.erison.dojosandninjas.models.Dojo;
import com.erison.dojosandninjas.repositories.DojoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DojoService {
    @Autowired
    private DojoRepository dojoRepository;

    public List<Dojo> getAll(){
        return dojoRepository.findAll();
    }

    public void createDojo(Dojo dojo){
        dojoRepository.save(dojo);
    }

    public Dojo details(Long id){
        return dojoRepository.findById(id).orElse(null);
    }
}
