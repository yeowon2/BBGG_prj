package kr.ac.kopo.file;

import java.util.List;

public interface FileDao {

	void add(FileVO fileVO);

	FileVO detail(Long fileNo);

	 void addList(List<FileVO> fileVOList);
}
