package com.kh.kass.reservation.model.vo;

import java.sql.Date;

import com.kh.kass.movie.model.vo.Movie;

import lombok.Data;

@Data
public class Reservation {
	// ��ȭ ����
	private Movie movie;
	
	// �󿵰� ����
	private int mocNo; // ���� ��ȣ
	private String mocName; // ������
	
	private int maNo; // ���� ��ȣ
	private String maName; // ������
	
	private int roomNo; // �󿵰� ��ȣ
	private String roomchair; // �󿵰� �ڸ� �ʱⰪ (0,0,1,2,3,....)
	/*	0 : ���ڸ�
	 * 	1 : ����� �ڸ�
	 * 	2 : ���
	 * 	3 : ���� ĭ���� �Ѿ�� <br>
	 */
	
	/*
	 * PULL �׽�Ʈ �غ��ڽ��ϴ� �̰� ��ٸ� �����Դϴ�.
	 * */
	
	// �� ����
	private int resNo; // ��ȭ �� ��ȣ
	private Date resDate; // ��ȭ �� ��¥
	private String resInfo; // ��ȭ�� �¼� ��Ȳ
	private String startTime; // �� ���� �ð�
	private String endTime; // �� ���� �ð�
	
	// ����� ��ȭ ����
	private int urNo; // ��ȭ ���� ��ȣ
	private Date urDate; // ���ų�¥
	private String uraddress; // �ڸ� �ּҰ� ex)13,14
	private String urRes; // �ڸ� ���Ź�ȣ(ex= J1,J2)
	private int urPeople1; // �Ϲ��� ���
	private int urPeople2; // û�ҳ� ���
	private int urPrice; // ���� �ݾ�
	
}
