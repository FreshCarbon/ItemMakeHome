package kr.co.imh.respository;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.imh.domain.PointDTO;
import kr.co.imh.utils.Criteria;

@Repository
public class PointDAOImpl implements PointDAO{
	@Inject
	private SqlSession sqlSession;
	
	private static final String nameSpace = "kr.co.imh.pointMapper";
	
	//전체 포인트 내역보기
	@Override
	public List<PointDTO> listCriteria(Criteria cri) throws Exception {
		return sqlSession.selectList(nameSpace+".listCriteria", cri);
	}
	@Override
	public int countPaging(Criteria cri) throws Exception {
		return sqlSession.selectOne(nameSpace+".countPaging", cri);
	}

	@Override
	public PointDTO detail(int ptCode) {
		return sqlSession.selectOne(nameSpace+".detail", ptCode);
	}
	@Override
	public int regist(PointDTO dto) {
		return sqlSession.insert(nameSpace+".regist", dto);
	}
	@Override
	public int update(PointDTO dto) {
		return sqlSession.update(nameSpace+".update", dto);
	}
	@Override
	public int delete(int ptCode) {
		return sqlSession.delete(nameSpace+".delete", ptCode);
	}

	@Override
	public List<PointDTO> ptList() {
		return sqlSession.selectList(nameSpace+".ptList");
	}

	@Override
	public int ptUpdate(PointDTO dto) {
		return sqlSession.update(nameSpace+".ptUpdate", dto);
	}
	
	

	

}
