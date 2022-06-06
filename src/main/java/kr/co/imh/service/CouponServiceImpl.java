package kr.co.imh.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.imh.domain.CouponDTO;
import kr.co.imh.domain.CouponReply;
import kr.co.imh.respository.CouponDAO;
import kr.co.imh.utils.Criteria;
import kr.co.imh.utils.SearchCriteria;

@Service
public class CouponServiceImpl implements CouponService {
	
	@Inject
	private CouponDAO couponDAO;
	
	@Override
	public CouponDTO detail(int cpCode) {
		return couponDAO.detail(cpCode);
	}
	@Override
	public int regist(CouponDTO dto) {
		return couponDAO.regist(dto);
	}
	@Override
	public int update(CouponDTO dto) {
		return couponDAO.update(dto);
	}
	@Override
	public int delete(int cpCode) {
		return couponDAO.delete(cpCode);
	}
	
	//페이징 처리
	@Override
	public List<CouponDTO> listCriteria(Criteria cri) throws Exception {
		return couponDAO.listCriteria(cri);
	}
	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		return couponDAO.countPaging(cri);
	}
	
	
	//페이징처리2
	@Override
	public List<CouponDTO> listCriteria2(Criteria cri) throws Exception {
		return couponDAO.listCriteria2(cri);
	}
	@Override
	public int listCountCriteria2(Criteria cri) throws Exception {
		return couponDAO.countPaging2(cri);
	}
	@Override
	public int delete2(int cpUnique) {
		return couponDAO.delete2(cpUnique);
	}
	
	@Override
	public CouponDTO detail2(int cpUnique) {
		return couponDAO.detail2(cpUnique);
	}
	@Override
	public int update2(CouponDTO dto) {
		return couponDAO.update2(dto);
	}
	
	
	//검색 페이징처리
	@Override
	public List<CouponDTO> listSearch(SearchCriteria cri) throws Exception {
		return couponDAO.listSearch(cri);
	}
	@Override
	public int listCount(SearchCriteria cri) throws Exception {
		return couponDAO.countPaging(cri);
	}
	
	
	//댓글처리
	@Override
	public List<CouponReply> replyList(int cpCode) {
		return couponDAO.replyList(cpCode);
	}
	@Override
	public int replyRegist(CouponReply dto) {
		return couponDAO.replyRegist(dto);
	}
	@Override
	public int replyUpdate(CouponReply dto) {
		return couponDAO.replyUpdate(dto);
	}
	@Override
	public int replyDelete(int reno) {
		return couponDAO.replyDelete(reno);
	}
	
	
	@Override
	public int cpActive(CouponDTO dto) {
		return couponDAO.cpActive(dto);
	}
	

	

}
