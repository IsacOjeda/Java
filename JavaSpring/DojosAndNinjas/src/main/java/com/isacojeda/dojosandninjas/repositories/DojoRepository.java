package com.isacojeda.dojosandninjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.isacojeda.dojosandninjas.models.Dojo;

@Repository
public interface DojoRepository extends CrudRepository<Dojo,Long>{
	List<Dojo> findAll();

}
