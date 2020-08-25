package com.kh.kass.movie.model.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class Movie {
	private int movieNo; // ��ȭ��ȣ
	private String mobieName; // ��ȭ�̸�
	private int movieAge; // ��ȭ����
	private int genreCode; // �帣�ڵ�
	private Date Rdate; // ������¥
	private String Rstatus; // ��������
	private int moviePrice; // ��ȭ����
	private String movieLink; // ������ũ
	private String movieForeman; // ����
	private String movieProducer; // ���ε༭
	private String movieActor; // ���
	private String movieStime; // �󿵽ð�
	private String movieCountry; // ����
	private String movieContent; // ��ȭ����
	private String movieVodStatus; // vod ����
}
