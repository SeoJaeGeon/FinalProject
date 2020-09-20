package com.kh.kass.snack.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.kass.common.Attachment;
import com.kh.kass.common.PageInfo;
import com.kh.kass.common.PaginationS;
import com.kh.kass.snack.model.exception.SnackException;
import com.kh.kass.snack.model.service.SnackService;
import com.kh.kass.snack.model.vo.Snack;

@Controller
public class SnackController {
	@Autowired
	private SnackService sService;

	// 스낵 목록 출력
	@RequestMapping("productList.do")
	public ModelAndView SnackList(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {
		int currentPage = page != null ? page : 1;

		int listCount = sService.selectListCount();
		PageInfo pi = PaginationS.getPageInfo(currentPage, listCount);

		System.out.println(listCount);

		ArrayList<Snack> list = sService.selectList(pi);

		if (list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.setViewName("product/productSnackList");
			System.out.println(list);

		} else {
			throw new SnackException("상품 목록 조회에 실패하였습니다.");
		}
		return mv;
	}

	// 관리자페이지 list
	@RequestMapping("ManagerSnackList.do")
	public ModelAndView ManagerSnackList(ModelAndView mv,
			@RequestParam(value = "page", required = false) Integer page) {
		int currentPage = page != null ? page : 1;

		int listCount = sService.selectListCount();
		PageInfo pi = PaginationS.getPageInfo(currentPage, listCount);

		System.out.println(listCount);

		ArrayList<Snack> list = sService.selectList(pi);

		if (list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.setViewName("product/ManagerProductSnacktList");
			System.out.println(list);

		} else {
			throw new SnackException("상품 목록 조회에 실패하였습니다.");
		}
		return mv;
	}
	
	// 관리자페이지 삭제상품 list
		@RequestMapping("ManagerdeleteSnackList.do")
		public ModelAndView ManagerdeleteSnackList(ModelAndView mv,
				@RequestParam(value = "page", required = false) Integer page) {
			int currentPage = page != null ? page : 1;

			int listCount = sService.selectListCount();
			PageInfo pi = PaginationS.getPageInfo(currentPage, listCount);

			System.out.println(listCount);

			ArrayList<Snack> list = sService.deleteList(pi);

			if (list != null) {
				mv.addObject("list", list);
				mv.addObject("pi", pi);
				mv.setViewName("product/ManagerdeleteSnackList");
				System.out.println(list);

			} else {
				throw new SnackException("상품 목록 조회에 실패하였습니다.");
			}
			return mv;
		}
		
	// 스낵 목록 출력
	@RequestMapping("productpList.do")
	public ModelAndView SnackPopList(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {
		int currentPage = page != null ? page : 1;

		int listCount = sService.selectListCount();
		PageInfo pi = PaginationS.getPageInfo(currentPage, listCount);

		System.out.println(listCount);

		ArrayList<Snack> list = sService.selectpList(pi);

		if (list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.setViewName("product/productPopSnackList");
			System.out.println(list);

		} else {
			throw new SnackException("상품 목록 조회에 실패하였습니다.");
		}
		return mv;
	}
	
	
	// 스낵 목록 출력
	@RequestMapping("productdList.do")
	public ModelAndView SnackDList(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {
		int currentPage = page != null ? page : 1;

		int listCount = sService.selectListCount();
		PageInfo pi = PaginationS.getPageInfo(currentPage, listCount);

		System.out.println(listCount);

		ArrayList<Snack> list = sService.selectdpList(pi);

		if (list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.setViewName("product/productDSnackList");
			System.out.println(list);

		} else {
			throw new SnackException("상품 목록 조회에 실패하였습니다.");
		}
		return mv;
	}
	
	
	// 스낵 목록 출력
	@RequestMapping("productcList.do")
	public ModelAndView SnackCList(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {
		int currentPage = page != null ? page : 1;

		int listCount = sService.selectListCount();
		PageInfo pi = PaginationS.getPageInfo(currentPage, listCount);

		System.out.println(listCount);

		ArrayList<Snack> list = sService.selectcpList(pi);

		if (list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.setViewName("product/productCSnackList");
			System.out.println(list);

		} else {
			throw new SnackException("상품 목록 조회에 실패하였습니다.");
		}
		return mv;
	}
	

	// 스낵 등록 화면으로 이동
	@RequestMapping("sInsertSnack.do")
	public String sInsertView() {
		return "snack/insertSnack";
	}

	// 스낵 등록하기
	@RequestMapping("sinsert.do")
	public String snackInsert(Snack s, HttpServletRequest request, RedirectAttributes rd, Model model,
			@RequestParam(name = "uploadFile", required = false) MultipartFile file) {

		String root = request.getSession().getServletContext().getRealPath("resources");
		System.out.println(root);
		String savePath = root + "\\images\\suploadFiles";
		String savePath2 = "\\resources\\images\\suploadFiles";

		File folder = new File(savePath); // savaPath 폴더 불러오기
		Attachment att = new Attachment();

		int result2 = sService.insertSnack(s);
		System.out.println(result2);

		if (!file.getOriginalFilename().equals("")) {
			String renameFileName = saveFile(file, request);
			String renamePath = folder + "//" + renameFileName;

			if (renameFileName != null) {
				att.setOriginFileName(file.getOriginalFilename());
				att.setRenameFileName(renameFileName);
				att.setFilePath(savePath2);
				int result1 = sService.insertSnackImg(att);
				System.out.println(result1);
			}
		}
		if (result2 > 0) {
			rd.addFlashAttribute("msg", "스낵 상품이 등록되었습니다.");
			return "redirect:ManagerSnackList.do";
		} else {
			throw new SnackException("스낵 등록에 실패하였습니다.");
		}
	}

	// 파일 저장을 위한 별도의 메소드
	private String saveFile(MultipartFile file, HttpServletRequest request) {
		System.out.println("시작 들어옴");
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\images\\suploadFiles";

		File folder = new File(savePath); // savaPath 폴더 불러오기
		// 해당 폴더 경로 존재 확인
		if (!folder.exists()) { // 존재하지 않을 시
			folder.mkdirs(); // 해당 경로를 먼저 생성
		}

		SimpleDateFormat sdf = new SimpleDateFormat("yyyMMddHHmmss");
		String originFileName = file.getOriginalFilename();
		System.out.println(originFileName);

		String renameFileName = sdf.format(new Date()) + originFileName.lastIndexOf(".");

		//String renameFileName = sdf.format(new Date()) +  originFileName.substring(originFileName.lastIndexOf("."));

		String renamePath = folder + "\\" + renameFileName;
		System.out.println(renameFileName);

		try {
			file.transferTo(new File(renamePath));
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}

		return renameFileName;
	}

	// 스낵 상세 페이지로 이동
	@RequestMapping("sdetail.do")
	public String snackDetail(int snackNo, Snack s, Model model) {
		s = sService.selectSnack(snackNo);

		if (s != null) {
			model.addAttribute("Snack", s);
			System.out.println(snackNo);
			return "snack/detailSnack";
		} else {
			model.addAttribute("msg", "스낵 상세조회에 실패하였습니다.");
			return "common/errorPage";
		}
	}

	// 스낵 수정 페이지로 이동
	@RequestMapping("supdateSnack.do")
	public ModelAndView snackUpdateView(ModelAndView mv, int snackNo) {
		System.out.println("스낵 수정 페이지 컨틀롤러 들어옴");
		Snack snack = sService.selectSnack(snackNo);
		System.out.println(snack);
		mv.addObject("Snack", snack).setViewName("snack/updateSnack");
		return mv;
	}

	// 스낵 수정(파일 수정 있다면 서버에서 삭제, 새롭게 저장)
	@RequestMapping("supdate.do")
	public String snackUpdateView(ModelAndView mv, Snack s, HttpServletRequest request, RedirectAttributes rd,
			@RequestParam(value = "uploadFile", required = false) MultipartFile reloadFile) {
		System.out.println("스낵 수정 들어옴");
		Attachment att = sService.selectAtt(s.getSnackNo());
		
		// att가 있고 재업로드한 파일이 있을 때
		int result1 = 0;
		int result2 = 0;

		if (reloadFile.getOriginalFilename() != "") {
			deleteFile(att.getRenameFileName(), request);
			System.out.println("reloadFile : " + reloadFile.getOriginalFilename());
			String renameFileName = saveFile(reloadFile, request);

			// 새로 등록하려는 파일 저장
			String renamePath = "\\resources\\images\\suploadFiles";

			att.setFilePath(renamePath);
			att.setOriginFileName(reloadFile.getOriginalFilename());
			att.setRenameFileName(renameFileName);

			result1 = sService.updateImg(att);
		}
		if (s != null) {
			result2 = sService.updateSnack(s);
		}
		if (result1 > 0 || result2 > 0) {
			rd.addFlashAttribute("msg", "스낵 상품이 수정되었습니다.");
			return "redirect:ManagerSnackList.do";

		} else {
			throw new SnackException("스낵 상품 수정 실패");
		}

	}

	// 파일 삭제용 메소드
	private void deleteFile(String fileName, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\images\\suploadFiles";

		File deleteFile = new File(savePath + "\\" + fileName);

		if (deleteFile.exists()) {
			deleteFile.delete();
		}
	}

	// 스낵 삭제
	@RequestMapping("sdelete.do")
	public String snackDelete(int snackNo, RedirectAttributes rd, HttpServletRequest request) {
		System.out.println("스낵번호 : " + snackNo);
		Attachment att = sService.selectAtt(snackNo);
		
		int result = sService.deleteSnack(snackNo);
		
		if (att.getOriginFileName() != null) {
			deleteFile(att.getRenameFileName(), request);
		}

		if (result > 0) {
			rd.addFlashAttribute("msg", "스낵 상품이 삭제되었습니다.");
			return "redirect:ManagerSnackList.do";
		} else {
			throw new SnackException("스낵 상품 삭제에 실패하였습니다.");
		}
	}

}
