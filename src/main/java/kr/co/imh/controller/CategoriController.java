package kr.co.imh.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.annotation.Resource;
import javax.inject.Inject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.co.imh.domain.CategoriDTO;
import kr.co.imh.service.CategoriService;

@Controller
@RequestMapping(value = "/cate/")
public class CategoriController {
	
	private static final Logger logger = LoggerFactory.getLogger(CategoriController.class);
	
	@Inject
	CategoriService categoriService;

	@Resource(name = "uploadPath")
	private String uploadPath;
	
	//카테고리 메인 페이지(섬네일 보이게)
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list(Model model){
		logger.info("카테고리 메인");
		List<CategoriDTO> list = new ArrayList<CategoriDTO>();
		list = categoriService.list();
		model.addAttribute("list", list);
		logger.info(list.toString());
		
		return "categori/list";
	}
	
	//카테고리 생성폼
	@RequestMapping(value = "regist", method = RequestMethod.GET)
	public String regist(){
		
		return "categori/regist";
	}

	//이미지 업로드
	@RequestMapping(value = "uploadForm", method = RequestMethod.POST)
	public String uploadForm(CategoriDTO dto ,MultipartFile file, Model model ) throws Exception {
		
		logger.info("originalName:" + file.getOriginalFilename());
		logger.info("size: "+ file.getSize());
		logger.info("contentType: "+file.getContentType());
		
		String savedName = uploadFile(file.getOriginalFilename(), file.getBytes());
		dto.setCateName(savedName);
		categoriService.regist(dto);
		
		return "/categori/list";
	}
	
	
	private String uploadFile(String originalName, byte[] fileData) throws Exception{
		
		UUID uid = UUID.randomUUID();
		String savedName = uid.toString() + "-" + originalName;
		File target = new File(uploadPath ,savedName);
		FileCopyUtils.copy(fileData, target); //file in , file out
		return savedName;
	}
	
	//화면에 이미지 표시
//	@ResponseBody
//	@RequestMapping(value = "displayFile")
//	public ResponseEntity<Byte[]> displayFile(String fileName) throws Exception{
//		 	
//		
//	}
	
	//카테고리 수정
	
	//카테고리 삭제
	
	

}
