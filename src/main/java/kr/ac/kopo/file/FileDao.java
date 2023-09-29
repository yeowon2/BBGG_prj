package kr.ac.kopo.file;

public interface FileDao {

	void add(FileVO fileVO);

	FileVO detail(Long fileNo);
}
