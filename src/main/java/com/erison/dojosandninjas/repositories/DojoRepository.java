package com.erison.dojosandninjas.repositories;

import com.erison.dojosandninjas.models.Dojo;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DojoRepository extends CrudRepository<Dojo,Long> {
    List<Dojo> findAll();
}
