package com.chen.MyUtils;

import org.springframework.util.StringUtils;

public class MyStringUtil {

    /**
     * check str whether null or not
     *
     * @param str string combination
     * @return returns true if all strings are nonnull, false otherwise
     */
    public static Boolean notEmpty(String... str) {
        for (String strIndex : str) {
            if (StringUtils.isEmpty(strIndex)) {
                return false;
            }
        }
        return true;
    }


    public static Boolean isEmpty(String... str) {
        return !notEmpty(str);
    }

}
