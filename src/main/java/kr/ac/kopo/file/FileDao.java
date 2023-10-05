package kr.ac.kopo.file;

import java.util.List;

public interface FileDao {

	List<FileVO> selectFileList();

	void insertFile(FileVO fileVO);
}
