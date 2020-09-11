package com.kh.kass.movie.model.vo;

import java.sql.Date;
import java.util.ArrayList;

import com.kh.kass.common.Attachment;
import com.kh.kass.review.model.vo.Review;

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
public class Movie {
   private int movieNo; // 영화번호
   private String movieName; // 영화이름
   private int movieAge; // 영화연령
   private int genreCode; // 장르코드
   private Date movieRdate; // 개봉날짜
   private String movieRstatus; // 개봉상태
   private int moviePrice; // 영화가격
   private String movieLink; // 예고편링크
   private String movieForeman; // 감독
   private String movieProducer; // 프로듀서
   private String movieActor; // 배우
   private String movieStime; // 상영시간
   private String movieCountry; // 국가
   private String movieContent; // 영화내용
   private String movieVodStatus; // vod 구분
   private String genreName; // 장르명
   private ArrayList<Attachment> attachList;
   
   public Movie(int movieNo) {
      super();
      this.movieNo = movieNo;
   }
   
   public Movie(int movieNo, String movieName, int movieAge, int genreCode, Date movieRdate, String movieRstatus,
            int moviePrice, String movieLink, String movieForeman, String movieProducer, String movieActor,
            String movieStime, String movieCountry, String movieContent, String movieVodStatus, String genreName) {
         super();
         this.movieNo = movieNo;
         this.movieName = movieName;
         this.movieAge = movieAge;
         this.genreCode = genreCode;
         this.movieRdate = movieRdate;
         this.movieRstatus = movieRstatus;
         this.moviePrice = moviePrice;
         this.movieLink = movieLink;
         this.movieForeman = movieForeman;
         this.movieProducer = movieProducer;
         this.movieActor = movieActor;
         this.movieStime = movieStime;
         this.movieCountry = movieCountry;
         this.movieContent = movieContent;
         this.movieVodStatus = movieVodStatus;
         this.genreName = genreName;
      }

}