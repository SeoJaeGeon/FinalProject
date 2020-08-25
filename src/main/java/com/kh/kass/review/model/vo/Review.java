package com.kh.kass.review.model.vo;

import lombok.Data;

@Data
public class Review {
   private int rNo; // 리뷰번호
   private int userNo; // 회원번호
   private String movieName; // 영화이름
   private String moviePoster; // 영화 포스터
   private String rSort; // 영화, VOD 구분
   private String rWriter; // 글쓴이
   private String rScore; // 평점
   private String rContent; // 내용
   private String rEnrollDate; // 등록일
   private String rModifyDate; // 수정일
   private String rStatus; // 리뷰상태
}