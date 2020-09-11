package com.kh.kass.review.model.vo;

import java.sql.Date;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Review {
   private int reNo; // 리뷰번호
   private String reSort; // 영화, VOD 구분 - M,V [ M : (MOVIE) , V : (VOD) ]
   private String reScore; // 평점 - G,B [ G : (GOOD) , B : (BAD) ]
   private String reContent; // 내용
   private Date reEnrollDate; // 등록일
   private Date reModifyDate; // 수정일
   private int userNo; // 회원번호
   private int movieNo; // 영화 번호
   private String reWriter; // 글쓴이 JOIN ?
   private String filePath; // 파일 경로 JOIN
   private String originFileName; // 원래 파일이름 JOIN
   private String renameFileName; // 바뀐 파일이름 네 JOIN
   
}
