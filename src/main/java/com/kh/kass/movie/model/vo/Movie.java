package com.kh.kass.movie.model.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class Movie {
   private int movieNo; // 영화번호
   private String mobieName; // 영화이름
   private int movieAge; // 영화연령
   private int genreCode; // 장르코드
   private Date Rdate; // 개봉날짜
   private String Rstatus; // 개봉상태
   private int moviePrice; // 영화가격
   private String movieLink; // 예고편링크
   private String movieForeman; // 감독
   private String movieProducer; // 프로듀서
   private String movieActor; // 배우
   private String movieStime; // 상영시간
   private String movieCountry; // 국가
   private String movieContent; // 영화내용
   private String movieVodStatus; // vod 구분
   
   /*   
    * 수정사항입니다 확인해보세요 이게 보이면 됩니다.
    * */
   
   /*   
    * 수정사항입니다 확인해보세요 이게 보이면 됩니다. 22222222222
    * */
}