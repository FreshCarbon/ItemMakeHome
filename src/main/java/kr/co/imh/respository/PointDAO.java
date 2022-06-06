package kr.co.imh.respository;

import java.util.List;

import kr.co.imh.domain.PointDTO;
import kr.co.imh.utils.Criteria;

public interface PointDAO {
	
	public List<PointDTO> listCriteria(Criteria cri) throws Exception;
	public int countPaging (Criteria cri) throws Exception;
	public PointDTO detail(int ptCode); //포인트 단일조회
	public int regist(PointDTO dto); //포인트 입력
	public int update(PointDTO dto); //발급된 포인트 수정
	public int delete(int ptCode); //발급된 포인트 삭제

	public List<PointDTO> ptList(); //포인트 적립 설정 조회
	public int ptUpdate(PointDTO dto); //포인트 적립 설정 수정


	
	
}
