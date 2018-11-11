package com.lsm.web.common;

import java.util.Date;

public class TimeMaximum {
	
    public static final int SEC = 60;
    public static final int MIN = 60;
    public static final int HOUR = 24;
    public static final int DAY = 30;
    public static final int MONTH = 12;

    public String calculateTime(Date date) {

        long curTime = System.currentTimeMillis();
        long regTime = date.getTime();
        long diffTime = (curTime - regTime) / 1000;

        String msg = null;

        if (diffTime < TimeMaximum.SEC)
        {
            // sec
            msg = "방금 전";
        }
        else if ((diffTime /= TimeMaximum.SEC) < TimeMaximum.MIN)
        {
            // min
            System.out.println(diffTime);
            
            msg = diffTime + "분 전";
        }
        else if ((diffTime /= TimeMaximum.MIN) < TimeMaximum.HOUR)
        {
            // hour
            msg = (diffTime ) + "시간 전";
        }
        else if ((diffTime /= TimeMaximum.HOUR) < TimeMaximum.DAY)
        {
            // day
            msg = (diffTime ) + "일 전";
        }
        
        
        return msg;
    }
}
