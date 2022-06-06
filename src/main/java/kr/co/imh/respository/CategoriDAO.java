package kr.co.imh.respository;

import java.util.List;

import kr.co.imh.domain.CategoriDTO;

public interface CategoriDAO {
	
	public List<CategoriDTO> list();
	public int regist(CategoriDTO dto);
	public int update(CategoriDTO dto);
	public int delete(String grade);

}
