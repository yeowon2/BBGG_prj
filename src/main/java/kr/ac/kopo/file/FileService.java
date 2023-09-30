package kr.ac.kopo.file;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface FileService {

	FileVO detail(Long fileNo);


	void add(List<MultipartFile> imageFiles);

}
