package com.kh.kass.common;

import java.util.Random;

public class RandomNum {
	
    
    public String excuteGenerate() {
    	int certCharLength = 8;
    	final char[] characterTable = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 
    			'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 
    			'Y', 'Z', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0' };
    	
        Random random = new Random(System.currentTimeMillis());
        int tablelength = characterTable.length;
        StringBuffer buf = new StringBuffer();
        
        for(int i = 0; i < certCharLength; i++) {
            buf.append(characterTable[random.nextInt(tablelength)]);
        }
        return buf.toString();
    }

}
