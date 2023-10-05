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
	public Long insertFileList(List<FileVO> fileVOList) {
	    long fileNo = 0;
	    FileVO fileVO = null;
	    for (FileVO vo : fileVOList) {
	        fileVO = vo;
	       sql.insert("file.insertFile", fileVO);
	       fileNo = fileVO.getFileNo();
	       
	    }
	    return fileNo;
	}

	@Override
	public List<FileVO> selectFileList() {
		return sql.selectList("file.selectFileList");
		
	}
	
	

}
