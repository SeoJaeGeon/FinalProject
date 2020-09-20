package com.kh.kass.goods.controller;

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
import com.kh.kass.goods.model.exception.GoodsException;
import com.kh.kass.goods.model.service.GoodsService;
import com.kh.kass.goods.model.vo.Goods;
import com.kh.kass.snack.model.exception.SnackException;
import com.kh.kass.snack.model.vo.Snack;

@Controller
public class GoodsController {
	@Autowired
	private GoodsService gService;

	// 굿즈 목록 출력
	@RequestMapping("productGoodsList.do")
	public ModelAndView GoodsList(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {
		int currentPage = page != null ? page : 1;

		int listCount = gService.selectListCount();
		PageInfo pi = PaginationS.getPageInfo(currentPage, listCount);

		System.out.println(listCount);

		ArrayList<Goods> list = gService.selectList(pi);

		if (list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.setViewName("product/productGoodsList");
			System.out.println(list);

		} else {
			throw new GoodsException("상품 목록 조회에 실패하였습니다.");
		}
		return mv;
	}
	
	// 관리자페이지 list
	@RequestMapping("ManagerGoodsList.do")
	public ModelAndView ManagerSnackList(ModelAndView mv,
			@RequestParam(value = "page", required = false) Integer page) {
		int currentPage = page != null ? page : 1;

		int listCount = gService.selectListCount();
		PageInfo pi = PaginationS.getPageInfo(currentPage, listCount);

		System.out.println(listCount);

		ArrayList<Goods> list = gService.selectList(pi);

		if (list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.setViewName("product/ManagerProductGoodstList");
			System.out.println(list);

		} else {
			throw new SnackException("상품 목록 조회에 실패하였습니다.");
		}
		return mv;
	}

	// 굿즈 등록 화면으로 이동
	@RequestMapping("gInsertGoods.do")
	public String sInsertView() {
		return "goods/insertGoods";
	}

	// 굿즈 등록하기
	@RequestMapping("ginsert.do")
	public String snackInsert(Goods g, HttpServletRequest request, RedirectAttributes rd, Model model,
			@RequestParam(name = "uploadFile", required = false) MultipartFile file,
			@RequestParam(name = "uploadFile2", required = false) MultipartFile file2 ) {

		String root = request.getSession().getServletContext().getRealPath("resources");
		System.out.println(root);
		String savePath = root + "\\images\\guploadFiles";
		String savePath2 = "\\resources\\images\\guploadFiles";
		
		System.out.println(savePath);

		File folder = new File(savePath); // savaPath 폴더 불러오기
		Attachment att = new Attachment();
		Attachment att2 = new Attachment();
		System.out.println("g : " + g);
		int result3 = gService.insertGoods(g);
		System.out.println(result3);

		if (!file.getOriginalFilename().equals("")/* && !file2.getOriginalFilename().equals("")*/) {
			String renameFileName = saveFile(file, request);
			String renamePath = folder + "//" + renameFileName;
			
			String renameFileName2 = saveFile(file2, request);
			String renamePath2 = folder + "//" + renameFileName2;

			if (renameFileName != null) {
				att.setOriginFileName(file.getOriginalFilename());
				att.setRenameFileName(renameFileName);
				att.setFilePath(savePath2);
				int result1 = gService.insertGoodsImg(att);
				System.out.println(result1);
				
				att2.setOriginFileName(file2.getOriginalFilename());
				att2.setRenameFileName(renameFileName2);
				att2.setFilePath(savePath2);
				int result2 = gService.insertGoodsImg2(att2);
				System.out.println(result2);
			}
		}
		if (result3 > 0) {
			rd.addFlashAttribute("msg", "굿즈 상품이 등록되었습니다.");
			return "redirect:ManagerGoodsList.do";
		} else {
			throw new SnackException("스낵 등록에 실패하였습니다.");
		}
	}

	// 파일 저장을 위한 별도의 메소드
	private String saveFile(MultipartFile file, HttpServletRequest request) {
		System.out.println("시작 들어옴");
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\images\\guploadFiles";

		File folder = new File(savePath); // savaPath 폴더 불러오기
		// 해당 폴더 경로 존재 확인
		if (!folder.exists()) { // 존재하지 않을 시
			folder.mkdirs(); // 해당 경로를 먼저 생성
		}

		SimpleDateFormat sdf = new SimpleDateFormat("yyyMMddHHmmss");
		String originFileName = file.getOriginalFilename();
		System.out.println(originFileName);

		String renameFileName = sdf.format(new Date()) + originFileName.lastIndexOf(".");

		// String renameFileName = sdf.format(new Date()) +
		// originFileName.substring(originFileName.lastIndexOf("."));

		String renamePath = folder + "\\" + renameFileName;
		System.out.println(renameFileName);

		try {
			file.transferTo(new File(renamePath));
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}

		return renameFileName;
	}

	// 굿즈 상세 페이지로 이동
	@RequestMapping("gdetail.do")
	public String goodsDetail(int goodsNo, Goods g, Model model) {
		g = gService.selectGoods(goodsNo);

		if (g != null) {
			model.addAttribute("Goods", g);
			System.out.println(goodsNo);
			return "goods/detailGoods";
		} else {
			model.addAttribute("msg", "굿즈 상세조회에 실패하였습니다.");
			return "common/errorPage";
		}
	}

	// 굿즈 수정 페이지로 이동
	@RequestMapping("gupdateGoods.do")
	public ModelAndView goodsUpdateView(ModelAndView mv, int goodsNo) {
		System.out.println("굿즈 수정 페이지 컨틀롤러 들어옴");
		Goods goods = gService.selectGoods(goodsNo);
		System.out.println(goods);
		mv.addObject("Goods", goods).setViewName("goods/updateGoods");
		return mv;
	}

	// 스낵 수정(파일 수정 있다면 서버에서 삭제, 새롭게 저장)
	@RequestMapping("gupdate.do")
	public String snackUpdateView(ModelAndView mv, Goods g, HttpServletRequest request, RedirectAttributes rd,
			@RequestParam(value = "uploadFile", required = false) MultipartFile reloadFile) {
		System.out.println("스낵 수정 들어옴");
		Attachment att = gService.selectAtt(g.getGoodsNo());

		// att가 있고 재업로드한 파일이 있을 때
		int result1 = 0;
		int result2 = 0;

		if (reloadFile.getOriginalFilename() != "") {
			deleteFile(att.getRenameFileName(), request);
			System.out.println("reloadFile : " + reloadFile.getOriginalFilename());
			String renameFileName = saveFile(reloadFile, request);

			// 새로 등록하려는 파일 저장
			String renamePath = "\\resources\\images\\guploadFiles";

			att.setFilePath(renamePath);
			att.setOriginFileName(reloadFile.getOriginalFilename());
			att.setRenameFileName(renameFileName);

			result1 = gService.updateImg(att);
		}
		if (g != null) {
			result2 = gService.updateGoods(g);
		}
		if (result1 > 0 || result2 > 0) {
			rd.addFlashAttribute("msg", "굿즈 상품이 수정되었습니다.");
			return "redirect:ManagerGoodsList.do";

		} else {
			throw new GoodsException("굿즈 상품 수정 실패");
		}

	}

	// 파일 삭제용 메소드
	private void deleteFile(String fileName, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\images\\guploadFiles";

		File deleteFile = new File(savePath + "\\" + fileName);

		if (deleteFile.exists()) {
			deleteFile.delete();
		}
	}

}
