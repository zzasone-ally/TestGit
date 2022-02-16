package net.shop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import net.shop.dao.VarietyDao;
import net.shop.service.VarietyService;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("varietyService")
public class VarietyServiceImpl implements VarietyService {
	
	@Autowired
	private VarietyDao varietyDao;
	@Override
	public boolean del(int id){
		return false;
	}

}
