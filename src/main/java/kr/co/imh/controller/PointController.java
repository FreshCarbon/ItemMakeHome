package kr.co.imh.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import kr.co.imh.domain.PointDTO;
import kr.co.imh.service.PointService;
import kr.co.imh.utils.Criteria;
import kr.co.imh.utils.PageMaker;

@Controller
@RequestMapping(value = "/point/")
public class PointController {
	private static final Logger logger = LoggerFactory.getLogger(PointController.class);

	@Inject
	private PointService pointService;

	// 페이징처리 게시판
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public ModelAndView list(Criteria cri) throws Exception {
		logger.info(cri.toString());
		ModelAndView mav = new ModelAndView();
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(pointService.listCountCriteria(cri));

		mav.addObject("list", pointService.listCriteria(cri));
		mav.addObject("pageMaker", pageMaker);
		mav.setViewName("point/list");
		return mav;
	}

	// 포인트 상세조회
	@RequestMapping(value = "detail", method = RequestMethod.GET)
	public ModelAndView detail(PointDTO dto, int ptCode) {
		ModelAndView mav = new ModelAndView();
		dto = pointService.detail(ptCode);

		mav.addObject("point", dto); 
		mav.setViewName("/point/detail");
		return mav;
	}

	// 포인트 수동입력 폼
	@RequestMapping(value = "regist", method = RequestMethod.GET)
	public ModelAndView regist() {
		logger.info("포인트 입력폼");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/point/regist");
		return mav;
	}

	// 포인트 입력
	@RequestMapping(value = "regist", method = RequestMethod.POST)
	public ModelAndView regist(PointDTO dto, RedirectAttributes rttr, HttpServletResponse response) throws Exception {
		response.setHeader("Content-Type", "text/html;charset=utf-8");
		logger.info("포인트 입력");
		pointService.regist(dto);
		rttr.addFlashAttribute("msg", "regist");

		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:list");
		return mav;
	}

	//포인트 수정폼
	@RequestMapping(value = "update", method = RequestMethod.GET)
	public ModelAndView update(PointDTO dto, int ptCode) {
		ModelAndView mav = new ModelAndView();
		dto = pointService.detail(ptCode);
		mav.addObject("point", dto);
		mav.setViewName("/point/update");
		return mav;
	}

	//포인트 수정
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public ModelAndView update(PointDTO dto, RedirectAttributes rttr) throws Exception {
		ModelAndView mav = new ModelAndView();
		pointService.update(dto);
		mav.setViewName("redirect:list");
		rttr.addFlashAttribute("msg", "update");
		return mav;
	}

	//포인트 삭제
	@RequestMapping(value = "delete", method = RequestMethod.POST)
	public ModelAndView delete(int ptCode, RedirectAttributes rttr) {

		ModelAndView mav = new ModelAndView();
		pointService.delete(ptCode);
		mav.setViewName("redirect:list");
		rttr.addFlashAttribute("msg", "delete");
		return mav;
	}
	
	//포인트 적립설정 조회 페이지
	@RequestMapping(value = "list2", method = RequestMethod.GET)
	public ModelAndView list2() {
		List<PointDTO> list = new ArrayList<PointDTO>();
		ModelAndView mav = new ModelAndView();
		list = pointService.ptList();
//		
		mav.addObject("list", list);
		mav.setViewName("point/list2");
		return mav;
	}
	
	//포인트 적립설정 수정
	@RequestMapping(value = "list2", method = RequestMethod.POST)
	public ModelAndView update2(PointDTO dto, RedirectAttributes rttr) {
		ModelAndView mav = new ModelAndView();
		pointService.ptUpdate(dto);
		rttr.addFlashAttribute("msg", "update");
		mav.setViewName("redirect:list2");
		return mav;
	}


}
