package com.kh.kass.reservation.model.vo;

import java.sql.Date;

import com.kh.kass.movie.model.vo.Movie;

import lombok.Data;

@Data
public class Reservation {
	// 영화 정보
	private Movie movie;

	// 상영관 정보
	private int mocNo; // 지역 번호
	private String mocName; // 지역명

	private int maNo; // 지점 번호
	private String maName; // 지점명

	private int roomNo; // 상영관 번호
	private String roomchair; // 상영관 자리 초기값 (0,0,1,2,3,....)
	/*
	 * 0 : 빈자리 1 : 예약된 자리 2 : 통로 3 : 다음 칸으로 넘어가기 <br>
	 */

	/*
	 * PULL 테스트 해보겠습니다 이게 뜬다면 성공입니다.
	 */

	// 상영 정보
	private int resNo; // 영화 상영 번호
	private Date resDate; // 영화 상영 날짜
	private String resInfo; // 영화관 좌석 현황
	private String startTime; // 상영 시작 시간
	private String endTime; // 상영 종료 시간

	// 사용자 영화 예매
	private int urNo; // 영화 예매 번호
	private Date urDate; // 예매날짜
	private String uraddress; // 자리 주소값 ex)13,14
	private String urRes; // 자리 예매번호(ex= J1,J2)
	private int urPeople1; // 일반인 몇명
	private int urPeople2; // 청소년 몇명
	private int urPrice; // 결제 금액

}