package com.kh.kass.goods.model.vo;

import lombok.Data;

@Data
public class Goods {
   private int gCateNo; // 굿즈 카테고리
   private String gCateName; // 굿즈 카테고리 명
   private int goodsNo; // 굿즈 번호
   private String goodsName; // 굿즈 상품명
   private int goodsPrice; // 굿즈 가격
   private int goodsStock; // 굿즈 재고
   private String goodsMemo; // 굿즈 상품 설명
   private String goodsStatus; // 굿즈 존재 여부
}