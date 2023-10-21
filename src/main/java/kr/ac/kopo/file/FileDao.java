package kr.ac.kopo.file;

import java.util.List;

public interface FileDao {

	List<FileVO> selectFileList();

	void insertFile(FileVO fileVO);

	void insertPartnerFile(FileVO fileVO);

	void updatePartnerFile(FileVO fileVO);
	
	FileVO selectItemFile(Long itemNo);
	
	FileVO selectPartnerFile(Long partnerNo);

	List<FileVO> selectFileList(Long itemNo);

}
