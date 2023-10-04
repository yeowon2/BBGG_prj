package kr.ac.kopo.file;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FileServiceImpl implements FileService {

	@Autowired
	FileDao dao;

	@Override
	public long insertFileList(List<FileVO> fileVOList) {
		return dao.insertFileList(fileVOList);
	}

	@Override
	public List<FileVO> selectFileList() {
		return dao.selectFileList();
	}

	



}
