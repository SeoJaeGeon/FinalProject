package com.kh.kass.review.model.vo;

import lombok.Data;

@Data
public class Review {
   private int rNo; // 리뷰번호
   private String rSort; // 영화, VOD 구분 - M,V [ M : (MOVIE) , V : (VOD) ]
   private String rScore; // 평점 - G,B [ G : (GOOD) , B : (BAD) ]
   private String rContent; // 내용
   private String rEnrollDate; // 등록일
   private String rModifyDate; // 수정일
   private String rStatus; // 리뷰상태
   private int userNo; // 회원번호
   private int movieNo; // 영화 번호

   private String rWriter; // 글쓴이
   private String movieName; // 영화이름
   private String moviePosterPath; // 영화 포스터   
   private String moviePoster; // 영화 포스터
}