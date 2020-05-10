package com.dailywork.flow.service;

import org.springframework.web.multipart.MultipartFile;

import com.dailywork.flow.model.DBFile;

public interface DBFileStorageService {

	public DBFile storeFile(DBFile string);
	
	DBFile getFile(String fileId);
}
