package com.kh.kass.movie.model.vo;

import java.sql.Date;
import lombok.Data;

@Data
public class Movie_Res {
	private int resNo; // ��ȭ�󿵹�ȣ
	private int movieNo; // ��ȭ��ȣ
	private Date resDate; // �󿵳�¥
	private int roomNo; // �󿵰���ȣ
	private String resInfo; // �¼���Ȳ
	private String startTime; // �󿵽��� �ð�
	private String endTime; // ������ �ð�
}
