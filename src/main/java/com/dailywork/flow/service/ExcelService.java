package com.dailywork.flow.service;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;



public interface ExcelService {

	
	public int doActionOnAction(MultipartFile file,HttpServletRequest req) throws IOException, ParseException;
}
