package kr.co.imh.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.imh.domain.PointDTO;
import kr.co.imh.respository.PointDAO;
import kr.co.imh.utils.Criteria;

@Service
public class PointServiceImpl implements PointService {
	
	@Inject
	private PointDAO pointDAO;

	@Override
	public List<PointDTO> listCriteria(Criteria cri) throws Exception {
		return pointDAO.listCriteria(cri);
	}
	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		return pointDAO.countPaging(cri);
	}
	
	@Override
	public PointDTO detail(int ptCode) {
		return pointDAO.detail(ptCode);
	}
	@Override
	public int regist(PointDTO dto) {
		return pointDAO.regist(dto);
	}
	@Override
	public int update(PointDTO dto) {
		return pointDAO.update(dto);
	}
	@Override
	public int delete(int ptCode) {
		return pointDAO.delete(ptCode);
	}
	@Override
	public List<PointDTO> ptList() {
		return pointDAO.ptList();
	}
//	@Override
//	public int setRegist(PointDTO dto) {
//		return pointDAO.setRegist(dto);
//	}
	@Override
	public int ptUpdate(PointDTO dto) {
		return pointDAO.ptUpdate(dto);
	}
//	@Override
//	public int setDelete(String grade) {
//		return pointDAO.setDelete(grade);
//	}
	


	

}
