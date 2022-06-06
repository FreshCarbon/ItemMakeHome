package kr.co.imh.service;

import java.util.List;

import kr.co.imh.domain.CategoriDTO;

public interface CategoriService {
	
	public List<CategoriDTO> list();
	public int regist(CategoriDTO dto);
	public int update(CategoriDTO dto);
	public int delete(String cateCode);


}
