package kr.ac.kopo.file;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FileServiceImpl implements FileService {

	@Autowired
	FileDao dao;
	
	@Override
	public void add(FileVO fileVO) {
		dao.add(fileVO);
	}

}
