package com.kh.kass.reservation.model.vo;

import java.sql.Date;

import com.kh.kass.movie.model.vo.Movie;

import lombok.Data;

@Data
public class Reservation {
	// 영화 정보
	private Movie movie;
	
	// 상영관 정보
	private int moc_No; // 지역 번호
	private String moc_Name; // 지역명
	
	private int ma_No; // 지점 번호
	private String ma_Name; // 지점명
	
	private int room_No; // 상영관 번호
	private String room_chair; // 상영관 자리 초기값 (0,0,1,2,3,....)
	/*	0 : 빈자리
	 * 	1 : 예약된 자리
	 * 	2 : 통로
	 * 	3 : 다음 칸으로 넘어가기 <br>
	 */
	
	// 상영 정보
	private int res_No; // 영화 상영 번호
	private Date res_Date; // 영화 상영 날짜
	private String res_Info; // 영화관 좌석 현황
	private String start_Time; // 상영 시작 시간
	private String end_Time; // 상영 종료 시간
	
	// 사용자 영화 예매
	private int ur_No; // 영화 예매 번호
	private Date ur_Date; // 예매날짜
	private String ur_address; // 자리 주소값 ex)13,14
	private String ur_Res; // 자리 예매번호(ex= J1,J2)
	private int ur_People1; // 일반인 몇명
	private int ur_People2; // 청소년 몇명
	private int ur_Price; // 결제 금액
	
}
