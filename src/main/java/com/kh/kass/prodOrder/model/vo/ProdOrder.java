package com.kh.kass.prodOrder.model.vo;

import java.sql.Date;
import lombok.Data;

@Data
public class ProdOrder {
   private int userId; // 회원아이디
   private int orderNo; // 주문이력번호
   private int orderNum; // 주문번호 
   private int count; //수량
   private int dNo; // 배송정보 번호
   private String dName; // 수령인
   private String dPhone; // 전화번호
   private String dAddress; // 주소지
   private String dMemo; // 배송 메모
   private Date codeTerm; // 코드기간
   private String codeStatus; // 코드유효상태
}
