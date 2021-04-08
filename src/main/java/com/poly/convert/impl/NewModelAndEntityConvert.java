package com.poly.convert.impl;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;

import com.poly.convert.ModelAndEntityConvert;
import com.poly.entity.NewEntity;
import com.poly.model.NewModel;

public class NewModelAndEntityConvert implements ModelAndEntityConvert<NewEntity, NewModel>{

private final ModelMapper modelMapper;
	
	@Autowired
	public NewModelAndEntityConvert() {
		this.modelMapper = new ModelMapper();
	}
	
	@Override
	public NewModel apply(NewEntity t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public NewModel convertToModel(NewEntity tObject) {
		NewModel newModel = modelMapper.map(tObject, NewModel.class);
		return newModel;
	}

	@Override
	public NewEntity convertToEntity(NewModel tObject) {
		NewEntity newEntity = modelMapper.map(tObject, NewEntity.class);
		return newEntity;
	}

}
