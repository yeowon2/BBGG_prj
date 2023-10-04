package kr.ac.kopo.file;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FileDaoImpl implements FileDao {

	@Autowired
	SqlSession sql;

	@Override
	public void insertFileList(List<FileVO> fileVOList) {
		FileVO fileVO = null;
		for (FileVO vo : fileVOList) {
			fileVO = vo;
		}
		
		sql.insert("file.insertFile", fileVO);
	}

	@Override
	public List<FileVO> selectFileList() {
		return sql.selectList("file.selectFileList");
	}
	
	

}
