package com.poly.Service;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Paths;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.poly.utils.StrUtils;

@Service
public class UploadService {
	@Autowired
	ServletContext app;
	
	/**
	 * Lưu file vào thư mục website
	 * @param file file upload
	 * @param dir đường dẫn thư mục tính từ gốc website
	 * @return file sau khi lưu
	 */
	/*
	 * file: file upload lên
	 * dir: thư mục muốn chứa (đường dẫn)
	 * */
	public File save(MultipartFile file, String dir){
		try {
			if(!file.isEmpty()) {// kiểm tra thử có upload ko (file.isEmpty() có upload)
				File realDir = new File(app.getRealPath(dir));// tạo ra 1 file, 1file chưa đường dẫn dir
										//app: làm việc với đường dẫn của website
										//getRealPath(): đổi đường dẫn dir ảo sang đường dẫn thật(đg dẫn vật lý) app.getRealPath(dir) 
				if(!realDir.exists()) {
					realDir.mkdirs();
				}
				String filename = file.getOriginalFilename();
				filename = StrUtils.getId() + filename.substring(filename.lastIndexOf("."));
				File saveFile = new File(realDir, filename);
				file.transferTo(saveFile);
				return saveFile;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * Đọc file từ đường dẫn website
	 * @param path đường dẫn tính từ gốc website
	 * @return dữ liệu file
	 * @exception lỗi đọc file
	 */
	public byte[] read(String path) {
		try {
			return Files.readAllBytes(Paths.get(app.getRealPath(path)));
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
}