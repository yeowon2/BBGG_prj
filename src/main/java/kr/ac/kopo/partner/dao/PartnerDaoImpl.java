package kr.ac.kopo.partner.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.partner.web.PartnerVO;
import kr.ac.kopo.partner.web.RespVO;

@Repository
public class PartnerDaoImpl implements PartnerDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<PartnerVO> list(Pager pager) {
		
		return sql.selectList("partner.list", pager);
	}

	@Override
	public Long add(PartnerVO partnerVO) {
		sql.insert("partner.add", partnerVO);
		Long partnerNo = partnerVO.getPartnerNo();
		return partnerNo;
	}

	@Override
	public PartnerVO select(Long partnerNo) {
		return sql.selectOne("partner.select", partnerNo);
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

	@Override
	public List<RespVO> getRespWaitCount(Long partnerNo) {
		return sql.selectList("partner.respWaitCount", partnerNo);
	}

	@Override
	public List<RespVO> getRespCompCount(Long partnerNo) {
		return sql.selectList("partner.respCompCount", partnerNo);
	}

	@Override
	public int getItemWaitCount(Long partnerNo) {
		return sql.selectOne("partner.itemWaitCount", partnerNo);
	}

	@Override
	public int getItemCompCount(Long partnerNo) {
		return sql.selectOne("partner.itemCompCount", partnerNo);
	}
	
	
	
	

}
