package com.kh.kass.snack.model.vo;

import lombok.Data;

@Data
public class Snack {
	private int sCateNo; // ���� ī�װ�
	private String sCateName; // ���� ī�װ� ��
	private int snackNo; // ���� ��ȣ
	private String snackName; // ���� ��ǰ��
	private String snackMemo; // ���� ��ǰ ����
	private int snackPrice; // ���� ����
	private String snackStatus; // ���� ���� ����
}
