package com.kh.kass.vod.model.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class VodOrder {
   private int orderNo; // 주문이력번호
   private int orderNum; // 주문번호
   private Date orderDate; // 주문날짜
   private Date expDate; // 유효기한
   private int userNo; // 회원번호
   private String vodPoster; // 영화 포스터
   private String vodName; // 영화이름 
   private String vodStatus; // vod구분
   private String rStatus; // 리뷰존재여부
}