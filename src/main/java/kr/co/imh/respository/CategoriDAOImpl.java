package kr.co.imh.respository;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.imh.domain.CategoriDTO;

@Repository
public class CategoriDAOImpl implements CategoriDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String nameSpace = "kr.co.imh.categoriMapper";

	@Override
	public List<CategoriDTO> list() {
		return sqlSession.selectList(nameSpace+".list");
	}

	@Override
	public int regist(CategoriDTO dto) {
		return sqlSession.insert(nameSpace+".regist");
	}

	@Override
	public int update(CategoriDTO dto) {
		return sqlSession.update(nameSpace+".update");
	}

	@Override
	public int delete(String cateCode) {
		return sqlSession.delete(nameSpace+".delete");
	}

}
