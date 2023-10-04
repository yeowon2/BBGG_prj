package kr.ac.kopo.file;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FileServiceImpl implements FileService {

	@Autowired
	FileDao dao;

	@Override
	public void insertFileList(List<FileVO> fileVOList) {
		dao.insertFileList(fileVOList);
	}

	@Override
	public List<FileVO> selectFileList() {
		return dao.selectFileList();
	}

	



}
