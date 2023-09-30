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
	public void add(FileVO fileVO) {
		sql.insert("file.add", fileVO);
	}

	@Override
	public FileVO detail(Long fileNo) {
		return sql.selectOne("file.detail", fileNo);
	}

	@Override
	public void addList(List<FileVO> fileVOList) {
		sql.insert("file.addList", fileVOList);
	}

}
