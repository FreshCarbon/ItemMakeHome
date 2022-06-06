package kr.co.imh.respository;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.imh.domain.CouponDTO;
import kr.co.imh.domain.CouponReply;
import kr.co.imh.utils.Criteria;
import kr.co.imh.utils.SearchCriteria;

@Repository
public class CouponDAOImpl implements CouponDAO{
	@Inject
	private SqlSession sqlSession;
	
	private static final String nameSpace = "kr.co.imh.couponMapper";

	@Override
	public CouponDTO detail(int cpCode) {
		return sqlSession.selectOne(nameSpace+".detail", cpCode);
	}
	@Override
	public int regist(CouponDTO dto) {
		return sqlSession.insert(nameSpace+".regist", dto);
	}
	@Override
	public int update(CouponDTO dto) {
		return sqlSession.update(nameSpace+".update", dto);
	}
	@Override
	public int delete(int cpCode) {
		return sqlSession.delete(nameSpace+".delete", cpCode);
	}
	@Override
	public CouponDTO detail2(int cpUnique) {
		return sqlSession.selectOne(nameSpace+".detail2", cpUnique);
	}

	@Override
	public int update2(CouponDTO dto) {
		return sqlSession.update(nameSpace+".update2", dto);
	}
	@Override
	public int delete2(int cpUnique) {
		return sqlSession.delete(nameSpace+".delete2", cpUnique);
	}
	
	//페이징 
	@Override
	public List<CouponDTO> listCriteria(Criteria cri) throws Exception {
		return sqlSession.selectList(nameSpace+".listCriteria", cri);
	}
	@Override
	public int countPaging(Criteria cri) throws Exception {
		return sqlSession.selectOne(nameSpace+".countPaging", cri);
	}
	
	//페이징2 
	@Override
	public List<CouponDTO> listCriteria2(Criteria cri) throws Exception {
		return sqlSession.selectList(nameSpace+".listCriteria2", cri);
	}
	@Override
	public int countPaging2(Criteria cri) throws Exception {
		return sqlSession.selectOne(nameSpace+".countPaging2", cri);
	}
	
	
	//검색처리 페이징 처리
	@Override
	public List<CouponDTO> listSearch(SearchCriteria cri) throws Exception {
		return sqlSession.selectList(nameSpace+".listSearch", cri);
	}
	@Override
	public int countPaging(SearchCriteria cri) throws Exception {
		return sqlSession.selectOne(nameSpace+".countPaging", cri);
	}
	
	
	//댓글기능
	@Override
	public List<CouponReply> replyList(int cpCode) {
		return sqlSession.selectList(nameSpace+".replyList", cpCode);
	}
	@Override
	public int replyRegist(CouponReply dto) {
		return sqlSession.insert(nameSpace+".replyRegist", dto);
	}
	@Override
	public int replyUpdate(CouponReply dto) {
		return sqlSession.update(nameSpace+".replyUpdate", dto);
	}
	@Override
	public int replyDelete(int reno) {
		return sqlSession.delete(nameSpace+".replyDelete", reno);
	}
	@Override
	public int cpActive(CouponDTO dto) {
		return sqlSession.insert(nameSpace+".cpActive", dto);
	}
	@Override
	public int cpOn(int cpState) {
		return sqlSession.update(nameSpace+".cpOn", cpState);
	}
	@Override
	public int cpOff(int cpState) {
		return sqlSession.update(nameSpace+".cpOff", cpState);
	}
	


	

}
