package kr.ac.kopo.file;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FileServiceImpl implements FileService {

	@Autowired
	FileDao dao;

	@Override
	public List<FileVO> selectFileList() {
		return dao.selectFileList();
	}

	@Override
	public void insertFile(List<FileVO> fileVOList) {
		for (FileVO fileVO : fileVOList) {
			dao.insertFile(fileVO);
		}
		
	}

}
