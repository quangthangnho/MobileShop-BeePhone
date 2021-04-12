package com.poly.Service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.poly.entity.NewEntity;
import com.poly.model.AccountModel;
import com.poly.model.NewModel;

public interface INewService {

	List<NewModel> findAll();
	
	Page<NewEntity> findAllNew(Pageable pageable);
	
	NewModel save(NewModel newModel);
	
	NewModel findById(Long id);
	
	void delete(NewModel newModel);
}
