package com.dailywork.flow.service.impl;

import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.poi.hssf.usermodel.HSSFDataFormat;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.dailywork.flow.service.DBFileStorageService;
import com.dailywork.flow.service.ExcelService;

/**
 * @author Ankur Tiwari
 * 
 *         Excel Interface implementation
 * 
 * 
 *
 */
@Service
public class ExcelServiceimpl implements ExcelService {

	
	@Override
	public int doActionOnAction(MultipartFile file, HttpServletRequest req) throws IOException, ParseException {

		int x = 0;
		XSSFWorkbook workbook = new XSSFWorkbook(file.getInputStream());

		XSSFSheet phase10 = workbook.getSheetAt(1);
		int rownum10 = phase10.getLastRowNum();

		for (int i = 0; i < rownum10; i++) {
			Row currentRow = phase10.getRow(i);
			currentRow.getCell(6).setCellValue("");
			currentRow.getCell(7).setCellValue("");
			currentRow.getCell(8).setCellValue("");
			currentRow.getCell(9).setCellValue("");
			currentRow.getCell(10).setCellValue("");
			currentRow.getCell(11).setCellValue("");
			currentRow.getCell(12).setCellValue("");
			currentRow.getCell(13).setCellValue("");
			currentRow.getCell(14).setCellValue("");
			currentRow.getCell(15).setCellValue("");
			currentRow.getCell(16).setCellValue("");

		}

		/* Phase 1.1 */

		XSSFSheet phase11 = workbook.getSheetAt(2);

		int rownum11 = phase11.getLastRowNum();

		for (int i = 0; i < rownum11; i++) {
			Row currentRow = phase11.getRow(i);
			/* apply formula for replace decimal */

			if (i >= 2) {

				/* formula for decimal separated */

				currentRow.getCell(5).setCellValue(
						String.valueOf(currentRow.getCell(5).getNumericCellValue()).split("\\.", 2)[0].trim());
				currentRow.getCell(4).setCellValue(
						String.valueOf(currentRow.getCell(4).getNumericCellValue()).split("\\.", 2)[0].trim());

				/* changing a style of cell for thousand Separator value */
				CellStyle cellStyle = workbook.createCellStyle();
				cellStyle.setDataFormat(HSSFDataFormat.getBuiltinFormat("#,##0"));
				currentRow.getCell(4).setCellStyle(cellStyle);
				currentRow.getCell(5).setCellStyle(cellStyle);

				/* after chaning a style of cell set the value and created a border */

				currentRow.getCell(4).setCellValue(Double.parseDouble(currentRow.getCell(4).toString()));
				currentRow.getCell(5).setCellValue(Double.parseDouble(currentRow.getCell(5).toString()));

				cellStyle.setBorderLeft(BorderStyle.THIN);
				cellStyle.setBorderBottom(BorderStyle.THIN);

				/* Changing a date formate */

				CellStyle cellDateStyle = workbook.createCellStyle();

				SimpleDateFormat format1 = new SimpleDateFormat("dd-MMM-yyyy");
				SimpleDateFormat format2 = new SimpleDateFormat("dd/MM/yyyy");
				try {

					Date date = format1.parse(currentRow.getCell(0).getStringCellValue());

					currentRow.getCell(0).setCellStyle(cellDateStyle);
					currentRow.getCell(0).setCellValue(format2.format(date));

					cellDateStyle.setBorderLeft(BorderStyle.THIN);
					cellDateStyle.setBorderBottom(BorderStyle.THIN);
				} catch (Exception e) {

				}

			}

		}

		FileOutputStream out = new FileOutputStream(req.getServletContext().getRealPath("/resources/excelfile/" + file.getOriginalFilename()));
		workbook.write(out);

		x = 1;
		return x;

	}

}
