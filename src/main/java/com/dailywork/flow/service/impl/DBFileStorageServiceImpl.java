package com.dailywork.flow.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dailywork.flow.exception.MyFileNotFoundException;
import com.dailywork.flow.model.DBFile;
import com.dailywork.flow.repository.DBFileRepository;
import com.dailywork.flow.service.DBFileStorageService;

@Service
public class DBFileStorageServiceImpl implements DBFileStorageService{

	@Autowired
	private DBFileRepository dbFileRepository;

	public DBFile storeFile(DBFile file) {
		return dbFileRepository.save(file);
	}

	public DBFile getFile(String fileId) {
		return dbFileRepository.findById(fileId)
				.orElseThrow(() -> new MyFileNotFoundException("File not found with id " + fileId));
	}
}
