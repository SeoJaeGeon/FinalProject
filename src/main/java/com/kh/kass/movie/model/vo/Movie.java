package com.kh.kass.movie.model.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class Movie {
	private int movie_No; // ��ȭ��ȣ
	private String mobie_Name; // ��ȭ�̸�
	private int movie_Age; // ��ȭ����
	private int genre_Code; // �帣�ڵ�
	private Date Rdate; // ������¥
	private String Rstatus; // ��������
	private int movie_Price; // ��ȭ����
	private String movie_Link; // ������ũ
	private String movie_Foreman; // ����
	private String movie_Producer; // ���ε༭
	private String movie_Actor; // ���
	private String movie_Stime; // �󿵽ð�
	private String movie_Country; // ����
	private String movie_Content; // ��ȭ����
	private String movie_Vod_Status; // vod ����
}
