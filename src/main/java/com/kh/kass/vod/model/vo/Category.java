package com.kh.kass.vod.model.vo;



import java.sql.Date;
import java.util.ArrayList;

import com.kh.kass.common.Attachment;

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
public class Category {
   private int  genre; // 장르
   private String  listlist; // 순서
   
}