package com.kh.kass.movie.model.vo;

import java.sql.Date;
import lombok.Data;

@Data
public class Movie_Res {
	private int res_No; // ��ȭ�󿵹�ȣ
	private int movie_No; // ��ȭ��ȣ
	private Date res_Date; // �󿵳�¥
	private int room_No; // �󿵰���ȣ
	private String res_Info; // �¼���Ȳ
	private String start_Time; // �󿵽��� �ð�
	private String end_Time; // ������ �ð�
}
