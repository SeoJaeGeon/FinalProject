package com.kh.kass.common;

import java.sql.Date;

import com.kh.kass.movie.model.vo.Movie;
import com.kh.kass.reservation.model.vo.Reservation;


public class PaginationS {
   public static PageInfo getPageInfo(int currentPage, int listCount) {
         PageInfo pi = null;   // 페이지 정보를 담아 줄 PageInfo 참조변수 선언
         
         int pageLimit = 5;   // 한 페이지에 보여질 페이징바의 갯수
         int boardLimit = 6;   // 한 페이지 보여질 게시글 개수
         
         int maxPage = (int)Math.ceil((double)listCount / boardLimit);
         int startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
         int endPage = startPage + pageLimit - 1;
         
         // 마지막 페이지가 총 페이지 수보다 클 경우
         if(maxPage < endPage) {
            endPage = maxPage;
         }
         
         pi = new PageInfo(currentPage, listCount, pageLimit, maxPage, startPage, endPage, boardLimit);

         return pi;
      }
}