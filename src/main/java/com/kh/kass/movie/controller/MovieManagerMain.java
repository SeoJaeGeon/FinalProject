package com.kh.kass.movie.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.kh.kass.common.Attachment;
import com.kh.kass.movie.model.service.MovieManagerService;
import com.kh.kass.movie.model.vo.Movie;
import com.kh.kass.movie.model.vo.MovieResListAjax;
import com.kh.kass.movie.model.vo.Movie_Area;
import com.kh.kass.movie.model.vo.Movie_Res;
import com.kh.kass.reservation.model.exception.ResException;

@Controller
public class MovieManagerMain {
	
	
	@Autowired
	private MovieManagerService movService;
	
	// 매출 페이지 이동
	@RequestMapping("MovieManagerSalesPage.do")
	public ModelAndView MovieManagerSalesPage(ModelAndView mv) {
		
		
		mv.setViewName("MovieManager/MovieManagerSales");
		return mv;
	}
	
	// 영화 정보 등록 이동
	@RequestMapping("MovieManagerInsertPage.do")
	public ModelAndView MovieManagerInsertPage(ModelAndView mv) {
		
		// list select 하는 방법
		ArrayList<Movie> movieList = movService.movList();
		
		//System.out.println(movieList.get(0).toString());
		if (movieList != null) {
			mv.addObject("movieList", movieList);
			mv.setViewName("MovieManager/MovieManagerInsert");
		} else {
			throw new ResException("movie DB 불러오기 실패.");
		}
		
		return mv;
	}
	
	// 영화 정보 수정 이동
	@RequestMapping("MovieManagerUpdatePage.do")
	public ModelAndView MovieManagerUpdatePage(ModelAndView mv) {
		ArrayList<Movie> movieList1 = movService.movList1(); // 1번을 가져옴
		ArrayList<Movie> movieList = movService.movList();   // 전체를 가져옴
		int movieNo = movieList1.get(0).getMovieNo();
		
		ArrayList<Attachment> movieAttachment1 = movService.movAttachmentList1(movieNo); // 포스터
		ArrayList<Attachment> movieAttachment2 = movService.movAttachmentList2(movieNo); // 스틸컷
		ArrayList<Attachment> movieAttachment3 = movService.movAttachmentList3(movieNo); // vod

		
		System.out.println("movieList1 : " + movieList1);
		//System.out.println(movieList.get(0).toString());
		if (movieList != null) {
			mv.addObject("movieAttachment1",movieAttachment1);
			mv.addObject("movieAttachment2",movieAttachment2); // 파일들 ArrayList로 가져옴 스틸컷
			mv.addObject("movieAttachment3",movieAttachment3); // 파일들 ArrayList로 가져옴 vod
			mv.addObject("movieList", movieList);
			mv.addObject("movieList1", movieList1);
			mv.setViewName("MovieManager/MovieManagerUpdate");
		} else {
			throw new ResException("movie DB 불러오기 실패.");
		}
		return mv;
	}
	
	// 영화 정보 수정 이름 클릭 했을때 해당 이름의 정보를 DB에서 조회해서 select 시킴
	@RequestMapping("MovieManagerUpdatePageName.do")
		public ModelAndView MovieManagerUpdatePageName(ModelAndView mv, String MovieName) {
			System.out.println("MovieName : " + MovieName);
			ArrayList<Movie> movieListName = movService.movListName(MovieName);
			ArrayList<Movie> movieList = movService.movList(); // 1번을 가져옴
			
			System.out.println("movieNo 찾기전");
			int movieNo = movieListName.get(0).getMovieNo(); // 선택된 movieNo를 변수로 저장
			System.out.println("movieNo : " + movieNo);
			System.out.println("movieAttachment 찾으려고 하는중");
			
			ArrayList<Attachment> movieAttachment1 = movService.movAttachmentList1(movieNo); // 포스터
			ArrayList<Attachment> movieAttachment2 = movService.movAttachmentList2(movieNo); // 스틸컷
			ArrayList<Attachment> movieAttachment3 = movService.movAttachmentList3(movieNo); // vod
			
			if(movieAttachment1 == null || movieAttachment2 == null || movieAttachment3 == null) {
				throw new ResException("movie Attachment 사진 동영상 불러오기 실패.");
			}
			System.out.println("Attachment1 : " + movieAttachment1.get(0));
			System.out.println("Attachment2 : " + movieAttachment2.get(0));
			System.out.println("Attachment2 : " + movieAttachment2.get(1));
			System.out.println("Attachment2 : " + movieAttachment2.get(2));
			System.out.println("Attachment3 : " + movieAttachment3.get(0));
			
			
			System.out.println("movieListName : " + movieListName.get(0));
			
			if(movieList == null) {
				MovieManagerUpdatePage(mv);
			}
			
			if (movieList != null) {
				mv.addObject("movieAttachment1",movieAttachment1); // 파일들 ArrayList로 가져옴 포스터
				mv.addObject("movieAttachment2",movieAttachment2); // 파일들 ArrayList로 가져옴 스틸컷
				mv.addObject("movieAttachment3",movieAttachment3); // 파일들 ArrayList로 가져옴 vod
				mv.addObject("movieList1", movieListName); // 클릭 이름 가져옴
				mv.addObject("movieList", movieList);      // 전체를 가져옴
				mv.setViewName("MovieManager/MovieManagerUpdate");
			} else {
				throw new ResException("movie DB 불러오기 실패.");
			}
		
			return mv;
		}
		
		
	
	
	
	
	
	// 영화 정보 삭제 이동
	@RequestMapping("MovieManagerDeletePage.do")
	public ModelAndView MovieManagerDeletePage(ModelAndView mv) {
		
			ArrayList<Movie> movListFile = movService.movListON();
			
			System.out.println(movListFile.get(0).getAttachList().get(0).getRenameFileName());
			
			if (movListFile != null) {
				mv.addObject("movListFile", movListFile);
				mv.setViewName("MovieManager/MovieManagerDelete");
			} else {
				throw new ResException("영화 리스트 못불러옴.");
			}
			
			return mv;
	}
	
	// 영화 정보 모달창에서 삭제 눌렀을 때 이동하는 페이지
	@RequestMapping("MoviemanagerDeletePageFile.do")
	public ModelAndView MoviemanagerDeletePageFile(ModelAndView mv,
			HttpServletRequest request,
			int MovieNo) {
		
		
		
		
		// movieNo를 가지고 movie를 셀렉해옴
		ArrayList<Movie> resultMovie = movService.selectDeleteMovie(MovieNo);
		Movie movie1 =  resultMovie.get(0);
		// 어태치먼트에서 무비No를 가지고 파일들을 가져옴
		ArrayList<Attachment> movieAttachment1 = movService.movAttachmentList1(resultMovie.get(0).getMovieNo()); // 포스터
		ArrayList<Attachment> movieAttachment2 = movService.movAttachmentList2(resultMovie.get(0).getMovieNo()); // 스틸컷
		ArrayList<Attachment> movieAttachment3 = movService.movAttachmentList3(resultMovie.get(0).getMovieNo()); // vod

		System.out.println("resultMovie : " + resultMovie);
		System.out.println("movieAttachment1 : " + movieAttachment1);
		System.out.println("movieAttachment2 : " + movieAttachment2);
		System.out.println("movieAttachment3 : " + movieAttachment3);
		
		// 해당 무비들의 파일을 파일들을 삭제한다
		deleteFile1(movieAttachment1.get(0).getRenameFileName(), request);
		deleteFile1(movieAttachment2.get(0).getRenameFileName(), request);
		deleteFile1(movieAttachment2.get(1).getRenameFileName(), request);
		deleteFile1(movieAttachment2.get(2).getRenameFileName(), request);
		deleteFile2(movieAttachment3.get(0).getRenameFileName(), request);
		
		// 해당 movie의 어태치먼트 정보를 삭제시킴
		int resultdelete = movService.deleteMovieManager(movie1);
		int resultdeleteMovie = movService.deleteMovieInfoManager(movie1);
		
		// 다시 delete 페이지를 띄워줘야하니 전체를 가져옴
		ArrayList<Movie> movListFile = movService.movListON();
		
		mv.addObject("movListFile", movListFile);
		mv.setViewName("MovieManager/MovieManagerDelete");
		return mv;
	}
	
	// 영화 상영 등록 이동
	@RequestMapping("MovieManagerScreenInsert.do")
	public ModelAndView MovieManagerScreenInsert(ModelAndView mv) {
		
		
		ArrayList<Movie> movListFile = movService.movListON(); // movie전체와 전체 파일들을 가져옴
		ArrayList<Movie> movieListName = movService.movList1(); // 1번을 가져옴
		
		System.out.println("movListFile : " + movListFile.get(0).getAttachList().get(0).getRenameFileName());
		System.out.println("이게 보임");
		ArrayList<Attachment> movieAttachment1 = movService.movAttachmentList1(movieListName.get(0).getMovieNo()); // 포스터가 있는 어태치를 가져옴
		
		// 아래는 상영관 페이지 불러오기
		System.out.println("상영관 정보를 불러옴");
		ArrayList<Movie_Area> MOVIE_AREA = movService.movListAREA();
		
		// movie_Res 1번의 선택된 리스트를 불러옴
		ArrayList<Movie_Res>movie_ResList = movService.selectmovResList(movieListName.get(0).getMovieNo());
		System.out.println("처음 movie_ResList : " + movie_ResList);
		System.out.println("처음 movieListName : " + movieListName);
		
		
		
		mv.addObject("movieResList",movie_ResList);
		mv.addObject("movieArea",MOVIE_AREA);
		mv.addObject("movieAttachment1",movieAttachment1);
		mv.addObject("movieListName",movieListName);
		mv.addObject("movListFile", movListFile);
		mv.setViewName("MovieManager/MovieManagerScreenInsert");
		return mv;
	}
	
	// 영화 상영 이름 바꾸면 들어가는 페이지
	@RequestMapping("MovieManagerScreenInsertName.do")
	public ModelAndView MovieManagerScreenInsertName(ModelAndView mv, String MovieName) {
		
		// 아래는 전체를 가져옴
		ArrayList<Movie> movListFile = movService.movListON(); // movie전체와 전체 파일들을 가져옴
		ArrayList<Movie> movieList1 = movService.movList1(); // 1번을 가져옴
		
		System.out.println("movListFile : " + movListFile.get(0).getAttachList().get(0).getRenameFileName());
		System.out.println("이게 보임");
		
		// 아래부터는 선택된 값 1개를 가져옴
		ArrayList<Movie> movieListName = movService.movListName(MovieName);
		ArrayList<Movie> movieList = movService.movList(); // 1번을 가져옴
		
		System.out.println("movieNo 찾기전");
		int movieNo = movieListName.get(0).getMovieNo(); // 선택된 movieNo를 변수로 저장
		System.out.println("movieNo : " + movieNo);
		System.out.println("movieAttachment 찾으려고 하는중");
		
		// 아래는 상영관 페이지 불러오기
		System.out.println("상영관 정보를 불러옴");
		ArrayList<Movie_Area> MOVIE_AREA = movService.movListAREA();
		
		// movie_Res 선택된 리스트를 불러옴
		ArrayList<Movie_Res>movie_ResList = movService.selectmovResList(movieNo);
		System.out.println("선택 movie_ResList : " + movie_ResList);
		System.out.println();
				
				
				
		
		ArrayList<Attachment> movieAttachment1 = movService.movAttachmentList1(movieNo); // 포스터가 있는 어태치를 가져옴
		
		if(movieAttachment1 == null) { // 포스터가 없다면
			throw new ResException("movie Attachment 사진 동영상 불러오기 실패.");
		}
		System.out.println("Attachment1 : " + movieAttachment1.get(0));
		
		
		mv.addObject("movieResList", movie_ResList);// 선택된 resList 보내줌
		mv.addObject("movieArea",MOVIE_AREA); // 상영관 List 보내줌
		mv.addObject("movieAttachment1",movieAttachment1); // 파일들 ArrayList로 가져옴 포스터
		mv.addObject("movieListName", movieListName); // 클릭 이름 가져옴
		mv.addObject("movieList", movieList);      // 전체를 가져옴
		mv.addObject("movListFile", movListFile);
		mv.setViewName("MovieManager/MovieManagerScreenInsert");
		return mv;
	}
	
		// 영화 상영 지역 변경 버튼 누르면 들어가는 페이지
		@RequestMapping("MovieManagerScreenInsertbutton.do")
		public ModelAndView MovieManagerScreenInsertbutton(ModelAndView mv, String itemList) {
			
			// 지역명과 영화이름을 split으로 각각 변수에 담음
			String MovieAreaName = itemList.split("/")[0];
			String MovieName = itemList.split("/")[1];
			System.out.println("MovieAreaName : " + MovieAreaName);
			System.out.println("MovieName : " + MovieName);
			
			
			// 아래는 전체를 가져옴
			ArrayList<Movie> movListFile = movService.movListON(); // movie전체와 전체 파일들을 가져옴
			ArrayList<Movie> movieList1 = movService.movList1(); // 1번을 가져옴
			
			System.out.println("movListFile : " + movListFile.get(0).getAttachList().get(0).getRenameFileName());
			System.out.println("이게 보임");
			
			// 아래부터는 선택된 값 1개를 가져옴
			ArrayList<Movie> movieListName = movService.movListName(MovieName);
			ArrayList<Movie> movieList = movService.movList(); // 1번을 가져옴
			
			System.out.println("movieNo 찾기전");
			int movieNo = movieListName.get(0).getMovieNo(); // 선택된 movieNo를 변수로 저장
			System.out.println("movieNo : " + movieNo);
			System.out.println("movieAttachment 찾으려고 하는중");
			
			// 아래는 상영관 페이지 불러오기
			System.out.println("상영관 정보를 불러옴");
			ArrayList<Movie_Area> MOVIE_AREA = movService.movListAREA();
			
			// movie_Res 선택된 리스트를 불러옴
			ArrayList<Movie_Res>movie_ResList1 = movService.selectmovResList(movieNo);
			System.out.println("선택 movie_ResList : " + movie_ResList1);
			// 가져온 movie_Res를 영화관지역을 선택한 것으로 set하고 다시 select 해옴
			Movie_Res movie_ResList2;
			movie_ResList2 = movie_ResList1.get(0);
			movie_ResList2.setMaName(MovieAreaName);
			System.out.println("movie_ResList2 : " + movie_ResList2);
			
			ArrayList<Movie_Res>movie_ResList3 = movService.selectmovResList2(movie_ResList2);
			System.out.println("movie_ResList3 : " + movie_ResList3);
			
					
			
			ArrayList<Attachment> movieAttachment1 = movService.movAttachmentList1(movieNo); // 포스터가 있는 어태치를 가져옴
			
			if(movieAttachment1 == null) { // 포스터가 없다면
				throw new ResException("movie Attachment 사진 동영상 불러오기 실패.");
			}
			System.out.println("Attachment1 : " + movieAttachment1.get(0));
			
			mv.addObject("MovieAreaName",MovieAreaName); // 선택된 상영관 이름 보내줌
			mv.addObject("movieResList", movie_ResList3);// 선택된 resList 보내줌
			mv.addObject("movieArea",MOVIE_AREA); // 상영관 List 보내줌
			mv.addObject("movieAttachment1",movieAttachment1); // 파일들 ArrayList로 가져옴 포스터
			mv.addObject("movieListName", movieListName); // 클릭 이름 가져옴
			mv.addObject("movieList", movieList);      // 전체를 가져옴
			mv.addObject("movListFile", movListFile);
			mv.setViewName("MovieManager/MovieManagerScreenInsert");
			return mv;
		}
		
		
		
	// 영화 상영지역 상영추가 누르면 insert 하기위해 오는 컨트롤러
	@ResponseBody	
	@RequestMapping("MovieManagerResinsert.do")
	public ModelAndView MovieManagerResinsert(ModelAndView mv,
			HttpServletRequest request,
			@RequestBody List<MovieResListAjax> table_Datas){
		// 아래 ajax 출력 부분
		for(MovieResListAjax s : table_Datas) {
			System.out.println(s.getMovieName());
			System.out.println(s.getMaName());
			System.out.println(s.getRoomNo());
			System.out.println(s.getStartTime());
			System.out.println(s.getEndTime());
			System.out.println(s.getResDate());
			System.out.println();
		}
		
		// for문으로 table_datas의 배열을 1개씩 넘겨서 차례대로 insert 시킴
		for(int i = 0; i < table_Datas.size(); i++) {
			
		int resResult = movService.insertMovieRes(table_Datas.get(i));
		}
		
		
		
		
		// 아래는 첫 insert로 가는 고정 코드
		ArrayList<Movie> movListFile = movService.movListON(); // movie전체와 전체 파일들을 가져옴
		ArrayList<Movie> movieListName = movService.movList1(); // 1번을 가져옴
		
		System.out.println("movListFile : " + movListFile.get(0).getAttachList().get(0).getRenameFileName());
		System.out.println("이게 보임");
		ArrayList<Attachment> movieAttachment1 = movService.movAttachmentList1(movieListName.get(0).getMovieNo()); // 포스터가 있는 어태치를 가져옴
		
		// 아래는 상영관 페이지 불러오기
		System.out.println("상영관 정보를 불러옴");
		ArrayList<Movie_Area> MOVIE_AREA = movService.movListAREA();
		
		// movie_Res 1번의 선택된 리스트를 불러옴
		ArrayList<Movie_Res>movie_ResList = movService.selectmovResList(movieListName.get(0).getMovieNo());
		System.out.println("처음 movie_ResList : " + movie_ResList);
		System.out.println("처음 movieListName : " + movieListName);
		
		
		mv.addObject("movieResList",movie_ResList);
		mv.addObject("movieArea",MOVIE_AREA);
		mv.addObject("movieAttachment1",movieAttachment1);
		mv.addObject("movieListName",movieListName);
		mv.addObject("movListFile", movListFile);
		mv.setViewName("MovieManager/MovieManagerScreenInsert");
		return mv;
	}
	
	
	
	
	
	
	
	// 영화 상영 취소 이동
	@RequestMapping("MovieManagerCancel.do")
	public String MovieManagerCancel() {
		return "/MovieManager/MovieManagerCancel";
	}
	
	// 파일 업로드 부분
	@RequestMapping("upload.do")
    public ModelAndView upload(Movie m,
            @RequestParam(value="file1", required = false) MultipartFile mf, 
            @RequestParam(value="file2", required = false) MultipartFile mf2,
            @RequestParam(value="file3", required = false) MultipartFile mf3,
            @RequestParam(value="file4", required = false) MultipartFile mf4,
            @RequestParam(value="file5", required = false) MultipartFile mf5,
            HttpServletRequest request) {
	
	System.out.println("m의 정보 : " + m);
	
		
	
	
	// 경로를 설정함
	String root = request.getSession().getServletContext().getRealPath("resources");	
	
	String SAVE_PATH = root + "\\images\\movie_image\\";
	String SAVE_PATH2 = root + "\\images\\movie_vod\\";
	
	String DB_SAVE_PATH = "\\resources\\images\\movie_image\\";
	String DB_SAVE_PATH2 = "\\resources\\images\\movie_vod\\";
	
	File folder = new File(SAVE_PATH);
	File folder2 = new File(SAVE_PATH2);	// savePath 폴더를 불러와서
	// 해당 폴더 경로가 존재하는지 확인하고
	if(!folder.exists()) {	// 존재하지 않는다면
		folder.mkdirs();	// 해당 경로를 먼저 생성한다
	}
	if(!folder2.exists()) {	// 존재하지 않는다면
		folder2.mkdirs();	// 해당 경로를 먼저 생성한다
	}
	
	
		
	ModelAndView mv = new ModelAndView("MovieManager/MovieManagerInsert");
 
            System.out.println("경로 : " + SAVE_PATH);
            System.out.println("경로 : " + SAVE_PATH2);
            System.out.println("DB경로 : " + DB_SAVE_PATH);
            System.out.println("DB경로 : " + DB_SAVE_PATH2);
            
            String originalFileName1 = mf.getOriginalFilename();
            String originalFileName2 = mf2.getOriginalFilename();
            String originalFileName3 = mf3.getOriginalFilename();
            String originalFileName4 = mf4.getOriginalFilename();
            String originalFileName5 = mf5.getOriginalFilename();
            
            System.out.println("파일이름 : " + originalFileName1);
            System.out.println("파일이름 : " + originalFileName2);
            System.out.println("파일이름 : " + originalFileName3);
            System.out.println("파일이름 : " + originalFileName4);
            System.out.println("파일이름 : " + originalFileName5);
            
            long fileSize1 = mf.getSize();
            long fileSize2 = mf2.getSize();
            long fileSize3 = mf3.getSize();
            long fileSize4 = mf4.getSize();
            long fileSize5 = mf5.getSize();
            
            
            
            
            // System.currentTimeMillis();
            
            //날짜 시간값으로 파일명 변경
            SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
            
    		String originFileName1 = mf.getOriginalFilename();
    		String originFileName2 = mf2.getOriginalFilename();
    		String originFileName3 = mf3.getOriginalFilename();
    		String originFileName4 = mf4.getOriginalFilename();
    		String originFileName5 = mf5.getOriginalFilename();
    		
    		String renameFileName1 = sdf.format(new Date())
    				+ "1" + originFileName1.substring(originFileName1.lastIndexOf("."));
    		
    		 String renamePath1 = renameFileName1;
    		 
    		 String renameFileName2 = sdf.format(new Date())
     				+ "2" + originFileName2.substring(originFileName2.lastIndexOf("."));
     		
     		 String renamePath2 = renameFileName2;
     		 
     		String renameFileName3 = sdf.format(new Date())
    				+ "3" + originFileName3.substring(originFileName3.lastIndexOf("."));
    		
    		 String renamePath3 = renameFileName3;
    		 
    		 String renameFileName4 = sdf.format(new Date())
     				+ "4" + originFileName4.substring(originFileName4.lastIndexOf("."));
     		
     		 String renamePath4 = renameFileName4;
     		 
     		String renameFileName5 = sdf.format(new Date())
    				+ "5" + originFileName5.substring(originFileName5.lastIndexOf("."));
    		
    		 String renamePath5 = renameFileName5;
    		 
    		 System.out.println("변경 시간 이름 : " + renamePath1);
    		 System.out.println("변경 시간 이름 : " + renamePath2);
    		 System.out.println("변경 시간 이름 : " + renamePath3);
    		 System.out.println("변경 시간 이름 : " + renamePath4);
    		 System.out.println("변경 시간 이름 : " + renamePath5);
    		 
    		 String safeFile1 = SAVE_PATH + "" + renamePath1;
             String safeFile2 = SAVE_PATH + "" + renamePath2;
             String safeFile3 = SAVE_PATH + "" + renamePath3;
             String safeFile4 = SAVE_PATH + "" + renamePath4;
             String safeFile5 = SAVE_PATH2 + "" + renamePath5;
    		 
    		 
    		 // 실험상의 object File
    		 Object[] fullFileNameObject = {m,SAVE_PATH,originalFileName1,renamePath1};
    		 
    		 for(int i = 0; i < fullFileNameObject.length; i++) {
    		 System.out.println("fullFileNameObject : " + fullFileNameObject[i]);
    		 }
    		 
    		 // 여기까지
    		
            int result = movService.insertMovieManager(m);
            // movie의 No를 알아옴
        	ArrayList<Movie> resultMovieNo = movService.selectMovieNo(m.getMovieName());
        	int movieNo = resultMovieNo.get(0).getMovieNo();
        	
        	System.out.println("영화 번호 알아오기 : " + movieNo);
        	
        	
	   		 // 해쉬맵으로 저장하기
	   		 HashMap<Object, Object> fullFileName1 = new HashMap<>();
	   		 fullFileName1.put("name1", 20);
	   		 fullFileName1.put("name2", DB_SAVE_PATH);
	   		 fullFileName1.put("name3", originalFileName1);
	   		 fullFileName1.put("name4", renamePath1);
	   		 fullFileName1.put("name5", movieNo);
	   		 
	   		 
	   		 HashMap<Object, Object> fullFileName2 = new HashMap<>();
	   		 fullFileName2.put("name1", 30);
	   		 fullFileName2.put("name2", DB_SAVE_PATH);
	   		 fullFileName2.put("name3", originalFileName2);
	   		 fullFileName2.put("name4", renamePath2);
	   		 fullFileName2.put("name5", movieNo);
	   		 
	   		 HashMap<Object, Object> fullFileName3 = new HashMap<>();
	   		 fullFileName3.put("name1", 30);
	   		 fullFileName3.put("name2", DB_SAVE_PATH);
	   		 fullFileName3.put("name3", originalFileName3);
	   		 fullFileName3.put("name4", renamePath3);
	   		 fullFileName3.put("name5", movieNo);
	   		 
	   		 HashMap<Object, Object> fullFileName4 = new HashMap<>();
	   		 fullFileName4.put("name1", 30);
	   		 fullFileName4.put("name2", DB_SAVE_PATH);
	   		 fullFileName4.put("name3", originalFileName4);
	   		 fullFileName4.put("name4", renamePath4);
	   		 fullFileName4.put("name5", movieNo);
	   		 
	   		 HashMap<Object, Object> fullFileName5 = new HashMap<>();
	   		 fullFileName5.put("name1", 40);
	   		 fullFileName5.put("name2", DB_SAVE_PATH2);
	   		 fullFileName5.put("name3", originalFileName5);
	   		 fullFileName5.put("name4", renamePath5);
	   		 fullFileName5.put("name5", movieNo);
        	
        	
        	
        	
	   		int result2 =  movService.insertFileMovieManager(fullFileName1);
	   		result2 =  movService.insertFileMovieManager(fullFileName2);
	   		result2 =  movService.insertFileMovieManager(fullFileName3);
	   		result2 =  movService.insertFileMovieManager(fullFileName4);
	   		result2 =  movService.insertFileMovieManager(fullFileName5);
	   		
            
            try {
            	mf.transferTo(new File(safeFile1));
            	mf2.transferTo(new File(safeFile2));
            	mf3.transferTo(new File(safeFile3));
            	mf4.transferTo(new File(safeFile4));
            	mf5.transferTo(new File(safeFile5));
               } catch (IllegalStateException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            
            return mv;
        }
	
	
	
	
	
	// 무비 업데이트 이클립스 파일 삭제 생성과 DB 수정
	@RequestMapping("update.do")
    public ModelAndView update(Movie m,
            @RequestParam(value="file1", required = false) MultipartFile mf, 
            @RequestParam(value="file2", required = false) MultipartFile mf2,
            @RequestParam(value="file3", required = false) MultipartFile mf3,
            @RequestParam(value="file4", required = false) MultipartFile mf4,
            @RequestParam(value="file5", required = false) MultipartFile mf5,
            HttpServletRequest request) {
		
		System.out.println("m의 정보 : " + m);
		
		// 일단 이클립스에 있는 파일을 삭제하고 DB에 있는것들을 update해야함
		
		
		// 경로를 설정함
		String root = request.getSession().getServletContext().getRealPath("resources");	
		
		String SAVE_PATH = root + "\\images\\movie_image\\";
		String SAVE_PATH2 = root + "\\images\\movie_vod\\";
		
		String DB_SAVE_PATH = "\\resources\\images\\movie_image\\";
		String DB_SAVE_PATH2 = "\\resources\\images\\movie_vod\\";
		
		File folder = new File(SAVE_PATH);
		File folder2 = new File(SAVE_PATH2);	// savePath 폴더를 불러와서
		// 해당 폴더 경로가 존재하는지 확인하고
		if(!folder.exists()) {	// 존재하지 않는다면
			folder.mkdirs();	// 해당 경로를 먼저 생성한다
		}
		if(!folder2.exists()) {	// 존재하지 않는다면
			folder2.mkdirs();	// 해당 경로를 먼저 생성한다
		}
		
		
			
	            ModelAndView mv = new ModelAndView("MovieManager/MovieManagerInsert");
	 
	            System.out.println("경로 : " + SAVE_PATH);
	            System.out.println("경로 : " + SAVE_PATH2);
	            System.out.println("DB경로 : " + DB_SAVE_PATH);
	            System.out.println("DB경로 : " + DB_SAVE_PATH2);
	            
	            String originalFileName1 = mf.getOriginalFilename();
	            String originalFileName2 = mf2.getOriginalFilename();
	            String originalFileName3 = mf3.getOriginalFilename();
	            String originalFileName4 = mf4.getOriginalFilename();
	            String originalFileName5 = mf5.getOriginalFilename();
	            
	            System.out.println("파일이름 : " + originalFileName1);
	            System.out.println("파일이름 : " + originalFileName2);
	            System.out.println("파일이름 : " + originalFileName3);
	            System.out.println("파일이름 : " + originalFileName4);
	            System.out.println("파일이름 : " + originalFileName5);
	            
	            long fileSize1 = mf.getSize();
	            long fileSize2 = mf2.getSize();
	            long fileSize3 = mf3.getSize();
	            long fileSize4 = mf4.getSize();
	            long fileSize5 = mf5.getSize();
	            
	            
	            
	            
	            // System.currentTimeMillis();
	            
	            //날짜 시간값으로 파일명 변경
	            SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
	            
	    		String originFileName1 = mf.getOriginalFilename();
	    		String originFileName2 = mf2.getOriginalFilename();
	    		String originFileName3 = mf3.getOriginalFilename();
	    		String originFileName4 = mf4.getOriginalFilename();
	    		String originFileName5 = mf5.getOriginalFilename();
	    		
	    		String renameFileName1 = sdf.format(new Date())
	    				+ "1" + originFileName1.substring(originFileName1.lastIndexOf("."));
	    		
	    		 String renamePath1 = renameFileName1;
	    		 
	    		 String renameFileName2 = sdf.format(new Date())
	     				+ "2" + originFileName2.substring(originFileName2.lastIndexOf("."));
	     		
	     		 String renamePath2 = renameFileName2;
	     		 
	     		String renameFileName3 = sdf.format(new Date())
	    				+ "3" + originFileName3.substring(originFileName3.lastIndexOf("."));
	    		
	    		 String renamePath3 = renameFileName3;
	    		 
	    		 String renameFileName4 = sdf.format(new Date())
	     				+ "4" + originFileName4.substring(originFileName4.lastIndexOf("."));
	     		
	     		 String renamePath4 = renameFileName4;
	     		 
	     		String renameFileName5 = sdf.format(new Date())
	    				+ "5" + originFileName5.substring(originFileName5.lastIndexOf("."));
	    		
	    		 String renamePath5 = renameFileName5;
	    		 
	    		 System.out.println("변경 시간 이름 : " + renamePath1);
	    		 System.out.println("변경 시간 이름 : " + renamePath2);
	    		 System.out.println("변경 시간 이름 : " + renamePath3);
	    		 System.out.println("변경 시간 이름 : " + renamePath4);
	    		 System.out.println("변경 시간 이름 : " + renamePath5);
	    		 
	    		 String safeFile1 = SAVE_PATH + "" + renamePath1;
	             String safeFile2 = SAVE_PATH + "" + renamePath2;
	             String safeFile3 = SAVE_PATH + "" + renamePath3;
	             String safeFile4 = SAVE_PATH + "" + renamePath4;
	             String safeFile5 = SAVE_PATH2 + "" + renamePath5;
	    		 
	    		 
	    		 // 실험상의 object File
	    		 Object[] fullFileNameObject = {m,SAVE_PATH,originalFileName1,renamePath1};
	    		 
	    		 for(int i = 0; i < fullFileNameObject.length; i++) {
	    		 System.out.println("fullFileNameObject : " + fullFileNameObject[i]);
	    		 }
	    		 
	    		 // 여기까지
	    		
	            // int result = movService.insertMovieManager(m); // insert 하는 구문
	    		
	    		 
	    		 
	            
	            // movie의 No를 알아옴
	    		System.out.println("이름찾기 직전");
	        	ArrayList<Movie> resultMovieNo = movService.selectMovieNo(m.getMovieName());
	        	Movie movie1 = m;
	        	movie1.setMovieNo(resultMovieNo.get(0).getMovieNo());
	        	System.out.println("movie1 : " + movie1);
	        	int movieNo = resultMovieNo.get(0).getMovieNo();
	        	int result = movService.updateMovieManager(movie1); // Movie update 하는 구문
	        	System.out.println("update 끝나고 밖으로 나옴");
	        	
	        	
	        	
	        	// 무비 No를 통해 어태치먼트에 현재 DB에 저장되어있는 것을 가져온다.
	    		ArrayList<Attachment> movieAttachment1 = movService.movAttachmentList1(movie1.getMovieNo()); // 포스터
	    		ArrayList<Attachment> movieAttachment2 = movService.movAttachmentList2(movie1.getMovieNo()); // 스틸컷
	    		ArrayList<Attachment> movieAttachment3 = movService.movAttachmentList3(movie1.getMovieNo()); // vod
	    		
	    		
	    		// 파일들을 삭제한다
	    		deleteFile1(movieAttachment1.get(0).getRenameFileName(), request);
	    		deleteFile1(movieAttachment2.get(0).getRenameFileName(), request);
	    		deleteFile1(movieAttachment2.get(1).getRenameFileName(), request);
	    		deleteFile1(movieAttachment2.get(2).getRenameFileName(), request);
	    		deleteFile2(movieAttachment3.get(0).getRenameFileName(), request);
	        	
	        	
		   		 // 해쉬맵으로 저장하기
		   		 HashMap<Object, Object> fullFileName1 = new HashMap<>();
		   		 fullFileName1.put("name1", 20);
		   		 fullFileName1.put("name2", DB_SAVE_PATH);
		   		 fullFileName1.put("name3", originalFileName1);
		   		 fullFileName1.put("name4", renamePath1);
		   		 fullFileName1.put("name5", movieNo);
		   		 
		   		 
		   		 HashMap<Object, Object> fullFileName2 = new HashMap<>();
		   		 fullFileName2.put("name1", 30);
		   		 fullFileName2.put("name2", DB_SAVE_PATH);
		   		 fullFileName2.put("name3", originalFileName2);
		   		 fullFileName2.put("name4", renamePath2);
		   		 fullFileName2.put("name5", movieNo);
		   		 
		   		 HashMap<Object, Object> fullFileName3 = new HashMap<>();
		   		 fullFileName3.put("name1", 30);
		   		 fullFileName3.put("name2", DB_SAVE_PATH);
		   		 fullFileName3.put("name3", originalFileName3);
		   		 fullFileName3.put("name4", renamePath3);
		   		 fullFileName3.put("name5", movieNo);
		   		 
		   		 HashMap<Object, Object> fullFileName4 = new HashMap<>();
		   		 fullFileName4.put("name1", 30);
		   		 fullFileName4.put("name2", DB_SAVE_PATH);
		   		 fullFileName4.put("name3", originalFileName4);
		   		 fullFileName4.put("name4", renamePath4);
		   		 fullFileName4.put("name5", movieNo);
		   		 
		   		 HashMap<Object, Object> fullFileName5 = new HashMap<>();
		   		 fullFileName5.put("name1", 40);
		   		 fullFileName5.put("name2", DB_SAVE_PATH2);
		   		 fullFileName5.put("name3", originalFileName5);
		   		 fullFileName5.put("name4", renamePath5);
		   		 fullFileName5.put("name5", movieNo);
	        	
	        	
		   		 // DB에 있는 것을 싹다 삭제하고 새로 추가함
		   		System.out.println(movie1);
		   		int resultdelete = movService.deleteMovieManager(movie1);
		   		
		   		
		   		 
		   		int result2 =  movService.insertFileMovieManager(fullFileName1);
		   		result2 =  movService.insertFileMovieManager(fullFileName2);
		   		result2 =  movService.insertFileMovieManager(fullFileName3);
		   		result2 =  movService.insertFileMovieManager(fullFileName4);
		   		result2 =  movService.insertFileMovieManager(fullFileName5);
	        	
	            
	            try {
	            	mf.transferTo(new File(safeFile1));
	            	mf2.transferTo(new File(safeFile2));
	            	mf3.transferTo(new File(safeFile3));
	            	mf4.transferTo(new File(safeFile4));
	            	mf5.transferTo(new File(safeFile5));
	               } catch (IllegalStateException e) {
	                    // TODO Auto-generated catch block
	                    e.printStackTrace();
	                } catch (IOException e) {
	                    // TODO Auto-generated catch block
	                    e.printStackTrace();
	                }
	            
		return mv;
	}
	
	// 이미지 파일을 삭제하는 메소드
	private void deleteFile1(String fileName, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\images\\movie_image"; 
		
		File f = new File(savePath + "\\" + fileName);
		
		if(f.exists()) 
			f.delete();
	}
	
	// 비디오 파일을 삭제하는 메소드
		private void deleteFile2(String fileName, HttpServletRequest request) {
			String root = request.getSession().getServletContext().getRealPath("resources");
			String savePath = root + "\\images\\movie_vod"; 
			
			File f = new File(savePath + "\\" + fileName);
			
			if(f.exists()) 
				f.delete();
		}
		
	
		

}
