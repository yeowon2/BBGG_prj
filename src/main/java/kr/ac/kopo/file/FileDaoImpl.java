package kr.ac.kopo.file;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FileDaoImpl implements FileDao {

	private static final Logger logger = LoggerFactory.getLogger(FileDaoImpl.class);

	@Autowired
	SqlSession sql;

	@Override
	public List<FileVO> selectFileList() {
		return sql.selectList("file.selectFileList");

	}

	@Override
	public void insertFile(FileVO fileVO) {
		sql.insert("file.insertFile", fileVO);
	}

	@Override
	public void insertPartnerFile(FileVO fileVO) {
		sql.insert("file.insertPartnerFile", fileVO);
		
	}

	@Override
	public void updatePartnerFile(FileVO fileVO) {
		sql.update("file.updatePartnerFile", fileVO);
	}

	@Override
	public FileVO selectItemFile(Long itemNo) {
		return sql.selectOne("file.selectItemFile", itemNo);
	}

	@Override
	public FileVO selectPartnerFile(Long partnerNo) {
		return sql.selectOne("file.selectPartnerFile", partnerNo);
	}


}
