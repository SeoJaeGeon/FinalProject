package com.kh.kass.movie.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MovieManagerMain {
	
	
	// 매출 페이지 이동
	@RequestMapping("MoviemainPage.do")
	public String mainPage() {
		return "/MovieManager/MovieManagerSales";
	}
	
	// 파일 업로드 부분
	@RequestMapping("upload.do")
    public ModelAndView upload(
            @RequestParam(value="file1", required = false) MultipartFile mf, 
            @RequestParam(value="file2", required = false) MultipartFile mf2,
            @RequestParam(value="file3", required = false) MultipartFile mf3,
            @RequestParam(value="file4", required = false) MultipartFile mf4, HttpServletRequest request) {
	
	// 경로를 설정함
	String root = request.getSession().getServletContext().getRealPath("resources");	
	String SAVE_PATH = root + "\\images\\movie_image\\";
	
	File folder = new File(SAVE_PATH);	// savePath 폴더를 불러와서
	// 해당 폴더 경로가 존재하는지 확인하고
	if(!folder.exists()) {	// 존재하지 않는다면
		folder.mkdirs();	// 해당 경로를 먼저 생성한다
	}
	
	
		
            ModelAndView mv = new ModelAndView("uploadView"); 
 
            System.out.println("경로 : " + SAVE_PATH);
            
            String originalFileName = mf.getOriginalFilename();
            
            System.out.println("파일이름 : " + originalFileName);
            
            long fileSize = mf.getSize();
            
            String safeFile = SAVE_PATH + "" + originalFileName;
            // System.currentTimeMillis();
            
            // 날짜 시간값으로 파일명 변경
            //SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
    		//String originFileName = mf.getOriginalFilename();
    		//String renameFileName = sdf.format(new Date())
    		//		+ originFileName.substring(originFileName.lastIndexOf("."));
    		
    		// String renamePath = folder + "\\" + renameFileName;
            
            try {
            	mf.transferTo(new File(safeFile));
               } catch (IllegalStateException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            
            return mv;
        }

}
