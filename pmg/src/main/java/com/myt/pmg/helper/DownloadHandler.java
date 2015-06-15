package com.myt.pmg.helper;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Locale;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.support.ResourceBundleMessageSource;

public class DownloadHandler {
	private static final int BUFFER_SIZE = 4096;

	public void doDownload(HttpServletRequest request,
			HttpServletResponse response, String fileName) {
		ServletContext context = request.getSession().getServletContext();

		ResourceBundleMessageSource bean = new ResourceBundleMessageSource();
		bean.setBasename("paths");
		String fullPath = bean.getMessage("File.proof.savepath", null,
				Locale.getDefault())
				+ fileName;
		File downloadFile = new File(fullPath);
		System.out.println(fullPath);
		FileInputStream inputStream = null;
		try {
			inputStream = new FileInputStream(downloadFile);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}

		// get MIME type of the file
		// String mimeType = context.getMimeType(fullPath);
		String mimeType = null;
		if (mimeType == null) {
			// set to binary type if MIME mapping not found
			mimeType = "application/x-please-download-me";
		}
		System.out.println("MIME type: " + mimeType);

		// set content attributes for the response
		response.setContentType(mimeType);
		response.setContentLength((int) downloadFile.length());

		// set headers for the response
		String headerKey = "Content-Disposition";
		String headerValue = String.format("attachment; filename=\"%s\"",
				downloadFile.getName());
		response.setHeader(headerKey, headerValue);

		byte[] buffer = new byte[BUFFER_SIZE];
		int bytesRead = -1;
		// get output stream of the response
		OutputStream outStream;
		try {
			outStream = response.getOutputStream();
			// write bytes read from the input stream into the output stream
			while ((bytesRead = inputStream.read(buffer)) != -1) {
				outStream.write(buffer, 0, bytesRead);
			}

			inputStream.close();
			outStream.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
