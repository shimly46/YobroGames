package com.chen.MyUtils;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

@Component
@Data
@AllArgsConstructor
@NoArgsConstructor
public class TimeUtil {

    /** Gets the current system time*/
    private long startTime;

    /** Get the current system time.Subtract the initial time and divide by 1000
     * to get the number of milliseconds the program has been running*/
    private long endTime;

    public void start(){
        setStartTime(System.currentTimeMillis());
    }

    public void end(){
        setEndTime(System.currentTimeMillis());
    }

    public long getCodeTime() {
        return (System.currentTimeMillis()-startTime)/1000;
    }

    public long setTime(){
        return System.currentTimeMillis();
    }

    public long getTime(long time){
        return (System.currentTimeMillis()-time)/1000;
    }
}
