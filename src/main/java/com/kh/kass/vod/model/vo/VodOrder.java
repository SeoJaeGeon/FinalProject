package com.kh.kass.vod.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class VodOrder {
   private int userNo; 
   private int movieNo; 
   private int payNo;

public VodOrder(int payNo) {
	super();
	this.payNo = payNo;
}
   
   
}