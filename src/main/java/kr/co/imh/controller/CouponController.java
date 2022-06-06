package kr.co.imh.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import kr.co.imh.domain.CouponDTO;
import kr.co.imh.domain.CouponReply;
import kr.co.imh.service.CouponService;
import kr.co.imh.utils.Criteria;
import kr.co.imh.utils.PageMaker;
import kr.co.imh.utils.SearchCriteria;

@Controller
@RequestMapping(value = "/coupon/")
public class CouponController {
	private static final Logger logger = LoggerFactory.getLogger(CouponController.class);

	@Inject
	private CouponService couponService;

	

	// 게시판 목록 조회
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list(Model model, @ModelAttribute("cri") SearchCriteria cri) throws Exception{
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(couponService.listCount(cri));
		
		model.addAttribute("list", couponService.listSearch(cri));
		model.addAttribute("pageMaker", pageMaker);
		
		return "coupon/list";
		
	}

	// 쿠폰 상세조회
	@RequestMapping(value = "detail", method = RequestMethod.GET)
	public ModelAndView detail(int cpCode, CouponDTO couponDTO) {
		ModelAndView mav = new ModelAndView();
		couponDTO = couponService.detail(cpCode);

		mav.addObject("coupon", couponDTO); // view로 보낼 데이터 값 (변수명, 데이터)
		mav.setViewName("coupon/detail");
		return mav;
	}

	// 쿠폰규칙 작성폼
	@RequestMapping(value = "regist", method = RequestMethod.GET)
	public ModelAndView regist() {
		logger.info("쿠폰 생성폼");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/coupon/regist");
		return mav;
	}

	// 쿠폰규칙 작성
	@RequestMapping(value = "regist", method = RequestMethod.POST)
	public ModelAndView regist(CouponDTO dto, HttpServletResponse response, RedirectAttributes rttr) throws Exception {
		response.setHeader("Content-Type", "text/html;charset=utf-8");

		logger.info("쿠폰생성");
		couponService.regist(dto);
		rttr.addFlashAttribute("msg", "regist");

		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:list");
		return mav;
	}

	// 쿠폰규칙 수정폼
	@RequestMapping(value = "update", method = RequestMethod.GET)
	public ModelAndView update(int cpCode, CouponDTO dto) {
		ModelAndView mav = new ModelAndView();
		dto = couponService.detail(cpCode);
		mav.addObject("coupon", dto);
		mav.setViewName("/coupon/update");
		return mav;
	}

	// 쿠폰규칙 수정
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public ModelAndView update(CouponDTO dto, RedirectAttributes rttr) throws Exception {
		ModelAndView mav = new ModelAndView();
		couponService.update(dto);
		mav.setViewName("redirect:list");
		rttr.addFlashAttribute("msg", "update");
		return mav;
	}

	// 쿠폰규칙 삭제
	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public ModelAndView delete(int cpCode, RedirectAttributes rttr) {

		ModelAndView mav = new ModelAndView();
		couponService.delete(cpCode);
		mav.setViewName("redirect:list");
		rttr.addFlashAttribute("msg", "delete");
		return mav;
	}

	// 쿠폰 발급조회
	@RequestMapping(value = "list2", method = RequestMethod.GET)
	public ModelAndView list2(Criteria cri) throws Exception {
		logger.info(cri.toString());
		ModelAndView mav = new ModelAndView();
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(couponService.listCountCriteria2(cri));

		mav.addObject("list", couponService.listCriteria2(cri));
		mav.addObject("pageMaker", pageMaker);
		mav.setViewName("coupon/list2");
		return mav;
	}

	// 지급쿠폰 조회
	@RequestMapping(value = "detail2", method = RequestMethod.GET)
	public ModelAndView detail2(int cpUnique, CouponDTO couponDTO) {
		ModelAndView mav = new ModelAndView();
		couponDTO = couponService.detail2(cpUnique);
		
		mav.addObject("coupon", couponDTO); // view로 보낼 데이터 값 (변수명, 데이터)
		mav.setViewName("coupon/detail2");
		return mav;
	}
	
	// 쿠폰지급 취소
	@RequestMapping(value = "delete2", method = RequestMethod.GET)
	public ModelAndView delete2(int cpUnique, RedirectAttributes rttr) {

		ModelAndView mav = new ModelAndView();
		couponService.delete2(cpUnique);
		mav.setViewName("redirect:list2");
		rttr.addFlashAttribute("msg", "delete");
		return mav;
	}
	
	// 지급쿠폰 수정폼
	@RequestMapping(value = "update2", method = RequestMethod.GET)
	public ModelAndView update2(CouponDTO dto, int cpUnique) throws Exception {
		ModelAndView mav = new ModelAndView();
		dto = couponService.detail2(cpUnique);
		
		mav.addObject("coupon", dto);
		mav.setViewName("coupon/update2");
		return mav;
	}
	// 지급쿠폰 수정
	@RequestMapping(value = "update2", method = RequestMethod.POST)
	public ModelAndView update2(CouponDTO dto, RedirectAttributes rttr) throws Exception {
		ModelAndView mav = new ModelAndView();
		couponService.update2(dto);
		mav.setViewName("redirect:list");
		rttr.addFlashAttribute("msg", "update");
		return mav;
	}
	
	//버튼 클릭시 쿠폰 생성
	@ResponseBody
	@RequestMapping(value = "cpActive", method = RequestMethod.POST)
	public int active(CouponDTO dto, RedirectAttributes rttr) {
		
		return couponService.cpActive(dto);
	}
	
	
	//댓글구현
	
	//전체보기
	@ResponseBody
	@RequestMapping(value = "replyList", method = RequestMethod.POST)
	public List<CouponReply> replyList(@RequestParam("cpCode") int cpCode) {

		return couponService.replyList(cpCode);
	}

	//등록
	@ResponseBody
	@RequestMapping(value = "replyRegist", method = RequestMethod.POST)
	public int reply2(CouponReply dto) {

		return couponService.replyRegist(dto);
	}

	// ajax 수정 구현
	@ResponseBody
	@RequestMapping(value = "replyUpdate", method = RequestMethod.POST)
	public Map<String, Object> replyupdate(CouponReply dto) {
		Map<String, Object> result = new HashMap<String, Object>();
		try {
			couponService.replyUpdate(dto);
			result.put("status", "OK");
		} catch (Exception e) {
			e.printStackTrace();
			result.put("status", "Fail");
		}
		return result;
	}
	
	//ajax 삭제 구현\
	@ResponseBody
	@RequestMapping(value = "replyDelete", method = RequestMethod.POST)
	public Map<String, Object> replydelete(int reno){
		Map<String, Object> result = new HashMap<String, Object>();
		
		try {
			couponService.replyDelete(reno);
			result.put("status", "success");
			
		}catch (Exception e) {
			e.printStackTrace();
			result.put("status", "fail");
		}
		
		return result;
	}
	
	


}
