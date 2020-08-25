package com.kh.kass.reservation.model.vo;

import java.sql.Date;

import com.kh.kass.movie.model.vo.Movie;

import lombok.Data;

@Data
public class Reservation {
	// ��ȭ ����
	private Movie movie;
	
	// �󿵰� ����
	private int moc_No; // ���� ��ȣ
	private String moc_Name; // ������
	
	private int ma_No; // ���� ��ȣ
	private String ma_Name; // ������
	
	private int room_No; // �󿵰� ��ȣ
	private String room_chair; // �󿵰� �ڸ� �ʱⰪ (0,0,1,2,3,....)
	/*	0 : ���ڸ�
	 * 	1 : ����� �ڸ�
	 * 	2 : ���
	 * 	3 : ���� ĭ���� �Ѿ�� <br>
	 */
	
	// �� ����
	private int res_No; // ��ȭ �� ��ȣ
	private Date res_Date; // ��ȭ �� ��¥
	private String res_Info; // ��ȭ�� �¼� ��Ȳ
	private String start_Time; // �� ���� �ð�
	private String end_Time; // �� ���� �ð�
	
	// ����� ��ȭ ����
	private int ur_No; // ��ȭ ���� ��ȣ
	private Date ur_Date; // ���ų�¥
	private String ur_address; // �ڸ� �ּҰ� ex)13,14
	private String ur_Res; // �ڸ� ���Ź�ȣ(ex= J1,J2)
	private int ur_People1; // �Ϲ��� ���
	private int ur_People2; // û�ҳ� ���
	private int ur_Price; // ���� �ݾ�
	
}
