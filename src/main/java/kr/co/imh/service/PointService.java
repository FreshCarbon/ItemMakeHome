package kr.co.imh.service;

import java.util.List;

import kr.co.imh.domain.PointDTO;
import kr.co.imh.utils.Criteria;


public interface PointService {
	
	public List<PointDTO> listCriteria(Criteria cri) throws Exception;
	public int listCountCriteria(Criteria cri) throws Exception;
	public PointDTO detail(int ptCode); //단일조회
	public int regist(PointDTO dto); //포인트 입력
	public int update(PointDTO dto); //포인트 수정
	public int delete(int ptCode); //포인트 삭제
	
	public List<PointDTO> ptList();
	public int ptUpdate(PointDTO dto);
}
