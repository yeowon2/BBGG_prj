package kr.ac.kopo.file;

import org.springframework.web.multipart.MultipartFile;

public interface FileService {

	void add(FileVO fileVO, MultipartFile file);

	FileVO detail(Long fileNo);

}
