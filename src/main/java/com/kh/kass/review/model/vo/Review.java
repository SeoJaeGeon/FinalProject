package com.kh.kass.review.model.vo;

import lombok.Data;

@Data
public class Review {
	private int rNo; // �����ȣ
	private int userNo; // ȸ����ȣ
	private String movieName; // ��ȭ�̸�
	private String moviePoster; // ��ȭ ������
	private String rSort; // ��ȭ, VOD ����
	private String rWriter; // �۾���
	private String rScore; // ����
	private String rContent; // ����
	private String rEnrollDate; // �����
	private String rModifyDate; // ������
	private String rStatus; // �������
}
