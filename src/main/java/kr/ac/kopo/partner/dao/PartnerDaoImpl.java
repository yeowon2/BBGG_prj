package kr.ac.kopo.partner.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.partner.web.PartnerVO;

@Repository
public class PartnerDaoImpl implements PartnerDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<PartnerVO> list(Pager pager) {
		
		return sql.selectList("partner.list", pager);
	}

	@Override
	public void add(PartnerVO partnerVO) {
		sql.insert("partner.add", partnerVO);
	}

	@Override
	public PartnerVO select(Long partnerVO) {
		return sql.selectOne("partner.select", partnerVO);
	}

	@Override
	public void update(PartnerVO partnerVO) {
		sql.update("partner.update", partnerVO);
	}

	@Override
	public void delete(Long partnerNo) {
		sql.update("partner.delete", partnerNo);
	}

	@Override
	public int total(Pager pager) {
		return sql.selectOne("partner.total", pager);
	}

	@Override
	public PartnerVO detail(Long partnerNo) {
		return sql.selectOne("partner.detail", partnerNo);
	}

}
