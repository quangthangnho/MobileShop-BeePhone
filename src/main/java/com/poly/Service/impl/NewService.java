package com.poly.Service.impl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.poly.Service.INewService;
import com.poly.convert.impl.NewModelAndEntityConvert;
import com.poly.dao.NewDAO;
import com.poly.entity.NewEntity;
import com.poly.model.NewModel;

@Service
public class NewService implements INewService{
	
	private final NewDAO newDAO;
	public NewService(NewDAO newDAO) {
		this.newDAO = newDAO;
	}

	@Override
	public List<NewModel> findAll() {
		// TODO Auto-generated method stub
		List<NewEntity> newEntity = newDAO.findAll();
		if(newEntity != null) {
			return newEntity.stream().map(element -> new NewModelAndEntityConvert().convertToModel(element)).collect(Collectors.toList());
		}
		return null;
	}

	@Override
	public Page<NewEntity> findAllNew(Pageable pageable) {
		// TODO Auto-generated method stub
		Page<NewEntity> list = newDAO.findAll(pageable);
		if(list != null) {
			return list;
		}
		return null;
	}

}
