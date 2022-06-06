package kr.co.imh.respository;

import java.util.List;


import kr.co.imh.domain.CouponDTO;
import kr.co.imh.domain.CouponReply;
import kr.co.imh.utils.Criteria;
import kr.co.imh.utils.SearchCriteria;

public interface CouponDAO {
	
	public List<CouponDTO> listCriteria(Criteria cri) throws Exception;
	public int countPaging (Criteria cri) throws Exception;
	
	//검색 페이징처리
	public List<CouponDTO> listSearch(SearchCriteria cri) throws Exception;
	public int countPaging (SearchCriteria cri) throws Exception;
	
	public CouponDTO detail(int cpCode); //단일조회
	public int regist(CouponDTO dto); //입력
	public int update(CouponDTO dto); //쿠폰 수정
	public int delete(int cpCode); //쿠폰 삭제

	
	public List<CouponDTO> listCriteria2(Criteria cri) throws Exception;
	public int countPaging2 (Criteria cri) throws Exception;
	public CouponDTO detail2(int cpUnique); //단일조회
	public int update2(CouponDTO dto); //지급쿠폰 수정
	public int delete2(int cpUnique); //지급쿠폰 삭제
	
	//댓글구현
	public List<CouponReply> replyList(int cpCode);
	public int replyRegist(CouponReply dto);
	public int replyUpdate(CouponReply dto);
	public int replyDelete(int reno);
	
	
	public int cpActive(CouponDTO dto);//쿠폰 다운로드
	public int cpOn(int cpState); //활성화
	public int cpOff(int cpState); //비활성화

	
}
