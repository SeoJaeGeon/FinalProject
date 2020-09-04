package com.kh.kass.snack.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.kass.snack.model.exception.SnackException;
import com.kh.kass.snack.model.service.SnackService;
import com.kh.kass.snack.model.vo.Snack;

@Controller
public class SnackController {
	@Autowired
	private SnackService sService;
	
	// 스낵 목록 출력
	
	// 스낵 등록 화면으로 이동
	@RequestMapping("sInsertView.do")
	public String sInsertView() {
		return "snack/insertSnack";
	}
	
	// 스낵 등록하기
	@RequestMapping("sinsert.do")
	public String snackInsert(Snack s, HttpServletRequest request, 
			@RequestParam(name="uploadFile", required = false) MultipartFile file) {
		if(!file.getOriginalFilename().equals("")) {
			String savePath = saveFile(file, request);
			
			if(savePath != null) {
				s.setFilePath(file.getOriginalFilename());
			}
			
			int result = sService.insertSnack(s);
			
			if(result > 0) {
				return "redirect:slist.do";
			} else {
				throw new SnackException("스낵 등록에 실패하였습니다.");
			}
		}
		
		return null;
	}

	// 파일 저장을 위한 별도의 메소드
	private String saveFile(MultipartFile file, HttpServletRequest request) {
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String savePath = root + "/suploadFiles";
		
		File folder = new File(savePath);
		// 해당 폴더 경로가 있는지 확인
		if(!folder.exists()) { // 없다면
			folder.mkdirs();	// 해당 경로 먼저 생성
		} 
		
		String filePath = folder + "/" + file.getOriginalFilename();
		
		try {
			file.transferTo(new File(filePath));
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		} 
		
		return filePath;
	}
	
	// 스낵 상세 페이지로 이동
	@RequestMapping("sdetail.do")
	public String snackDetail(int snackNo, Snack s, Model model) {
		s = sService.selectOne(snackNo);
		
		if(s != null) {
			model.addAttribute("snack", s);
			return "snack.snackDetailView";
		} else {
			model.addAttribute("msg", "스낵 상세조회에 실패하였습니다.");
			return "common/errorPage";
		}
	}
	
	// 스낵 수정 페이지로 이동
	@RequestMapping("supView.do")
	public String snackUpdateView(int snackNo, Snack s, Model model) {
		s = sService.selectOne(snackNo);
		model.addAttribute("snack", s);
		return "snack/snackUpdateView";
	}
	
	// 스낵 수정(파일 수정 있다면 서버에서 삭제, 새롭게 저장)
	@RequestMapping("supView.do")
	public String snackUpdateView(Snack s, HttpServletRequest request, 
			@RequestParam(value = "reloadFile", required = false) MultipartFile reloadFile) {
		
		if (reloadFile != null && !reloadFile.isEmpty()) {
			// 기존의 파일이 존재하는 경우 기존 파일을 삭제해줘야 한다
			if (s.getFilePath() != null) {
				// 별도의 메소드를 통해 파일 삭제(공지사항 삭제 프로세스에서도 동일 메소드 사용)
				deleteFile(s.getFilePath(), request);
			}

			// 새로 업로드된 파일을 저장
			String savePath = saveFile(reloadFile, request);

			// 잘 저장됐다면 db의 저장된 파일명 변경
			if (savePath != null) {
				s.setFilePath(reloadFile.getOriginalFilename());
			}
		}
		
		int result = sService.updateNotice(s);

		if (result > 0) {
			return "redirect:slist.do";
		} else {
			throw new SnackException("스낵상품 수정에 실패하였습니다.");
		}
	}

	// 파일 삭제용 메소드
	private void deleteFile(String fileName, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "/suploadFiles";
		
		File deleteFile = new File(savePath + "/" + fileName);
		
		if(deleteFile.exists())
			deleteFile.delete();
	}
	
	// 스낵 삭제 
	@RequestMapping("sdelete.do")
	public String snackDelete(int snackNo, RedirectAttributes rd, HttpServletRequest request) {
		Snack s = sService.selectOne(snackNo);
		
		int result = sService.deleteSnack(snackNo);
		
		if(s.getFilePath() != null) {
			deleteFile(s.getFilePath(), request);
		}
		
		if(result > 0) {
			rd.addFlashAttribute("msg", "해당 스낵상품이 삭제되었습니다.");
			return "redirect:slist.do";
		} else {
			throw new SnackException("스낵 상품 삭제에 실패하였습니다.");
		}
	}
				

}
