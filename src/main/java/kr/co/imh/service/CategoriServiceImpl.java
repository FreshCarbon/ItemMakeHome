package kr.co.imh.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.imh.domain.CategoriDTO;
import kr.co.imh.respository.CategoriDAO;

@Service
public class CategoriServiceImpl implements CategoriService{

	@Inject
	private CategoriDAO categoriDAO;
	
	@Override
	public List<CategoriDTO> list() {
		return categoriDAO.list();
	}

	@Override
	public int regist(CategoriDTO dto) {
		return categoriDAO.regist(dto);
	}

	@Override
	public int update(CategoriDTO dto) {
		return categoriDAO.update(dto);
	}

	@Override
	public int delete(String cateCode) {
		return categoriDAO.delete(cateCode);
	}

}
